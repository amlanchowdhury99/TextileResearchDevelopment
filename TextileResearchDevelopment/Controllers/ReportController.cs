using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.BLL;
using TextileResearchDevelopment.Models;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using TextileResearchDevelopment.DataAccessLayer;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace TextileResearchDevelopment.Controllers
{
    public class ReportController : Controller
    {

        private ReportDocument objReportDocument = new ReportDocument();
        private ExportFormatType objExportFormatType = ExportFormatType.NoFormat;


        // GET: Report
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GetSearchResult(TestReport searchObj)
        {
            List<TestReport> data = new List<TestReport>();
            try
            {
                data = ReportBLL.Search(searchObj);
            }
            catch (Exception ex)
            {
                data = new List<TestReport>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult BarCodeAuthorization(int BarCode)
        {
            Boolean Result = false;
            try
            {
                if (BarCode > 0)
                {
                    Result = ReportBLL.BarCodeAuthorization(BarCode);
                }
                if (BarCode == 0)
                {
                    Result = true;
                }

                if (Result)
                {
                    return Json("true", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }

            return Json("false", JsonRequestBehavior.AllowGet);
        }

        public FileStreamResult ShowReport (string pFileDownloadName)
        {

            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Clear();
            Response.Buffer = true;

            objExportFormatType = ExportFormatType.PortableDocFormat;
            Stream oStream = objReportDocument.ExportToStream(objExportFormatType);
            byte[] byteArray = new byte[oStream.Length];
            oStream.Read(byteArray, 0, Convert.ToInt32(oStream.Length - 1));
            Response.ContentType = "application/pdf";
            pFileDownloadName += ".pdf";
            Response.BinaryWrite(byteArray);
            Response.Flush();
            Response.Close();
            objReportDocument.Close();
            objReportDocument.Dispose();

            return File(oStream, Response.ContentType, pFileDownloadName);

        }

        public ActionResult ExportReport(Report report)
        {
            string connectionStr = DBGateway.connectionString;
            string strPath = Path.Combine(Server.MapPath("~/MasterReport.rpt"));
            objReportDocument.Load(strPath);

            string query = "SELECT * FROM Remarksview ";
            SqlDataReader reader = DBGateway.GetFromDB(query);
            DBGateway.connection.Close();
            DataTable dt = new DataTable();
            dt.Load(reader);
            

            DataSet objDataSet = null;
            objReportDocument.SetDataSource(dt);

            objReportDocument.SetDatabaseLogon("sa", "123");

            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Stream stream = objReportDocument.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            stream.Seek(0, SeekOrigin.Begin);

            return File(stream, "application/pdf", "FabricProcessingSheet.pdf");

        }

    }
}

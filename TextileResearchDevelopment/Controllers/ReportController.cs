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
using TextileResearchDevelopment.ReportDataset;
using TextileResearchDevelopment.Reporting;

namespace TextileResearchDevelopment.Controllers
{
    public class ReportController : Controller
    {
        static string connectionStr = DBGateway.connectionString;
        private ReportDocument objReportDocument = new ReportDocument();
        private ExportFormatType objExportFormatType = ExportFormatType.NoFormat;
        Remarks remark = new Remarks();

        //TextileResearchDevelopmentEntities db = new TextileResearchDevelopmentEntities();


        // GET: Report

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GetSearchResult(Report searchObj)
        {
            List<Report> data = new List<Report>();
            try
            {
                //data = ReportBLL.Search(searchObj);
            }
            catch (Exception ex)
            {
                data = new List<Report>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        //[HttpPost]
        //public ActionResult BarCodeAuthorization(int BarCode)
        //{
        //    Boolean Result = false;
        //    try
        //    {
        //        if (BarCode > 0)
        //        {
        //            //Result = ReportBLL.BarCodeAuthorization(BarCode);
        //        }
        //        if (BarCode == 0)
        //        {
        //            Result = true;
        //        }

        //        if (Result)
        //        {
        //            return Json("true", JsonRequestBehavior.AllowGet);
        //        }
        //    }
        //    catch
        //    {
        //        return Json(null, JsonRequestBehavior.AllowGet);
        //    }

        //    return Json("false", JsonRequestBehavior.AllowGet);
        //}

        //public FileStreamResult ShowReport(string pFileDownloadName)
        //{

        //    Response.Buffer = false;
        //    Response.ClearContent();
        //    Response.ClearHeaders();
        //    Response.Clear();
        //    Response.Buffer = true;

        //    objExportFormatType = ExportFormatType.PortableDocFormat;
        //    Stream oStream = objReportDocument.ExportToStream(objExportFormatType);
        //    byte[] byteArray = new byte[oStream.Length];
        //    oStream.Read(byteArray, 0, Convert.ToInt32(oStream.Length - 1));
        //    Response.ContentType = "application/pdf";
        //    pFileDownloadName += ".pdf";
        //    Response.BinaryWrite(byteArray);
        //    Response.Flush();
        //    Response.Close();
        //    objReportDocument.Close();
        //    objReportDocument.Dispose();

        //    return File(oStream, Response.ContentType, pFileDownloadName);

        //}

        //public ActionResult ExportReport(int Id)
        //{
        //    GeneralReport ds = new GeneralReport();
        //    ReportDocument rd = new ReportDocument();
        //    rd.Load(Path.Combine(Server.MapPath("~/Reporting"), "MasterReport.rpt"));

        //    //var c = db.RemarksViews.Where(a => a.Id == Id).ToList();

        //    //foreach (var item in c)
        //    //{
        //    //    ds.GeneralRpt.AddGeneralRptRow(
        //    //    item.BuyerName,
        //    //    item.FabricName,
        //    //    item.OrderNo,
        //    //    item.Color,
        //    //    item.Note,
        //    //    item.RequiredWidth,
        //    //    item.RequiredGSM.ToString(),
        //    //    item.LabdipStatus,
        //    //    item.ChallanNo,
        //    //    item.DeliveryQty.ToString(),
        //    //    item.DeliveryDate.ToString(),
        //    //    item.McDiaGauge,
        //    //    item.YarnCount,
        //    //    item.YarnBrand,
        //    //    item.YarnLot,
        //    //    item.StitchLength.ToString(),
        //    //    item.KnitUnit,
        //    //    item.MCNO.ToString(),
        //    //    item.MCRPM.ToString(),
        //    //    item.GreyWidth.ToString(),
        //    //    item.GreyGSM.ToString(),
        //    //    item.TumbleWidthKnit.ToString(),
        //    //    item.TumbleGSM.ToString(),
        //    //    item.McBrand);
        //    //};

        //    rd.SetDataSource(ds);

        //    rd.SetDatabaseLogon("sa", "123");
        //    Response.Buffer = false;
        //    Response.ClearContent();
        //    Response.ClearHeaders();
        //    Stream stream = rd.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
        //    stream.Seek(0, SeekOrigin.Begin);

        //    return File(stream, "application/pdf", "FabricProcessingSheet.pdf");

        //}

        [HttpPost]
        public ActionResult ShowReport(Fabric fabric)
        {
            try
            {
                SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); cm.Connection = cn; cn.Open();
                string query = " SELECT * FROM FabricView WHERE BarCode = '" + fabric.BarCode + "'";
                SqlDataAdapter ADAP = new SqlDataAdapter(query, cn);
                DataSet DS = new DataSet();
                ADAP.Fill(DS, "MasterReport");
                MasterReport rpt = new MasterReport();
                rpt.SetDatabaseLogon("sa", "x123@slts", "192.168.31.251", "TextileResearchDevelopment");
                rpt.PrintOptions.PaperOrientation = CrystalDecisions.Shared.PaperOrientation.Landscape;
                rpt.PrintOptions.PaperSize = CrystalDecisions.Shared.PaperSize.PaperA4;
                rpt.SetDataSource(DS);
                Response.Buffer = false;
                Response.ClearContent();
                Response.ClearHeaders();
                Stream stream = rpt.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
                stream.Seek(0, SeekOrigin.Begin);
                cn.Close();

                ReportDocument cryRpt = new ReportDocument();
                rpt.Load(PUT CRYSTAL REPORT PATH HERE\\CrystalReport1.rpt");
    
                crystalReportViewer1.ReportSource = cryRpt;
                crystalReportViewer1.Refresh();

                return File(stream, "application/pdf", "FabricProcessingSheet.pdf");
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json("", JsonRequestBehavior.AllowGet);

        }

    }
}
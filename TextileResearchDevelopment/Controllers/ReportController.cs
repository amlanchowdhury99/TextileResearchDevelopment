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
using System.Web.Configuration;
using TextileResearchDevelopment.ReportDataset;

namespace TextileResearchDevelopment.Controllers
{
    public class ReportController : Controller
    {
        static string connectionStr = DBGateway.connectionString;
        private ReportDocument objReportDocument = new ReportDocument();
        private ExportFormatType objExportFormatType = ExportFormatType.NoFormat;

        TextileResearchDevelopmentEntities db = new TextileResearchDevelopmentEntities();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShowReport(int FabricID)
        {
            try
            {
                GeneralReport ds = new GeneralReport();
                ReportDocument rd = new ReportDocument();
                rd.Load(Path.Combine(Server.MapPath("~/Reporting"), "MasterReport.rpt"));
                int report = 0;
                SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
                cm.CommandText = "SELECT * FROM UserInfo WHERE UserName = '" + System.Web.HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        report = Convert.ToInt32(reader["Report"]);
                    }
                }
                cn.Close();

                var masterReport = new List<MasterReportView>(); var YD = new List<YDView>(); var YDR = new List<YarnDyedRepeat>();

                if (report == 1)
                {
                    int KnitID = 0;
                    string BarCodeQuery = "SELECT Id FROM Knitting WHERE FabricID = " + FabricID + " AND ApprovedStatus = 1";
                    cm.CommandText = BarCodeQuery;
                    cn.Open();
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            KnitID = Convert.ToInt32(reader["Id"]);
                        }
                    }
                    cn.Close();
                    masterReport = db.MasterReportViews.Where(a => a.Id == FabricID).ToList();
                    if(KnitID != 0)
                    {
                        YD = db.YDViews.Where(a => a.KnitID == KnitID).ToList();
                        YDR = db.YarnDyedRepeats.Where(a => a.KnitID == KnitID).ToList();
                    }

                    if (masterReport[0].CProductionTypeID == null)
                    {
                        masterReport[0].CProductionTypeID = 0;
                    }
                    else
                    {
                        if (masterReport[0].CProductionTypeID == 6)
                        {
                            masterReport[0].CProduction = "A. Brush(" + masterReport[0].CompactingMcNo + ")";
                        }
                        if (masterReport[0].CProductionTypeID == 7)
                        {
                            masterReport[0].CProduction = "A.Peach Finish(" + masterReport[0].CompactingMcNo + ")";
                        }
                        if (masterReport[0].CProductionTypeID == 8)
                        {
                            masterReport[0].CProduction = "A AOP(" + masterReport[0].CompactingMcNo + ")";
                        }
                        if (masterReport[0].CProductionTypeID == 9)
                        {
                            masterReport[0].CProduction = "SP. Chemical Finish(" + masterReport[0].CompactingMcNo + ")";
                        }
                    }
                    if (masterReport[0].STProductionTypeID == null)
                    {
                        masterReport[0].STProductionTypeID = 0;
                    }
                    else
                    {
                        if (masterReport[0].STProductionTypeID == 1)
                        {
                            masterReport[0].SProduction = "A. Brush(" + masterReport[0].StenterMcNo + ")";
                        }
                        if (masterReport[0].STProductionTypeID == 2)
                        {
                            masterReport[0].SProduction = "A.Peach Finish(" + masterReport[0].StenterMcNo + ")";
                        }
                        if (masterReport[0].STProductionTypeID == 3)
                        {
                            masterReport[0].SProduction = "A AOP(" + masterReport[0].StenterMcNo + ")";
                        }
                        if (masterReport[0].STProductionTypeID == 4)
                        {
                            masterReport[0].SProduction = "SP. Chemical Finish(" + masterReport[0].StenterMcNo + ")";
                        }

                    }
                }

                foreach (var item in YD)
                {
                    YD[0].YarnCount = "";
                }

                string FabricBarCodeQuery = "SELECT BarCode FROM Fabric WHERE Id = " + FabricID;
                var columnsName = "";
                string query = " SELECT * FROM FabricProcess WHERE BarCode = (" + FabricBarCodeQuery + ")";
                cm.CommandText = query;
                cn.Open();
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            if (reader.GetValue(i).ToString() == "1")
                            {
                                columnsName = columnsName == "" ? reader.GetName(i).ToString() : columnsName + " -> " + reader.GetName(i).ToString();
                            }
                        }
                    }
                }
                cn.Close();

                ds.FabricProcess.AddFabricProcessRow(columnsName);

                foreach (var item in masterReport)
                {
                    ds.MasterReportView.AddMasterReportViewRow(
                    item.Id.ToString(),
                    item.OrderNo,
                    item.Color,
                    item.BarCode,
                    item.BuyerName,
                    item.FabricTypeID.ToString(),
                    item.BuyerID.ToString(),
                    item.BatchNo,
                    item.RefNo,
                    item.Season,
                    NullHelpers.DateToString(item.CreateTime),
                    item.CompositionTypeID.ToString(),
                    item.CreateByName,
                    item.Composition,
                    item.UpdateByName,
                    item.FabricTypeName,
                    item.Version,
                    item.GreyGSM,
                    item.YarnTension,
                    item.LycraTension,
                    item.GreyDia,
                    item.ReqDia,
                    item.ReqGSM,
                    item.SL,
                    item.McSpeed,
                    item.ErpNo,
                    item.McDia.ToString(),
                    item.McGauge.ToString(),
                    item.McBrand,
                    item.McNo.ToString(),
                    item.CWMcNo,
                    item.CWSEWidth,
                    item.CWWashDia,
                    item.CWWELength,
                    item.CWSpeed,
                    item.CWChemical,
                    item.CWTemp,
                    item.HPTemp,
                    item.HPSpeed,
                    item.HPTime,
                    item.HPFeed,
                    item.HPStrech,
                    item.HPChemical,
                    item.HPDia,
                    item.HPGSM,
                    item.HPShrinkage,
                    item.HSPMcNo,
                    item.SFHBurner1,
                    item.SFHBurner2,
                    item.SFWBurner1,
                    item.SFWBurner2,
                    item.SSpeed,
                    item.SBurner,
                    item.SFlamePosition,
                    item.DyeingMcNo,
                    item.DSpeed,
                    item.DEnzy,
                    item.Recipe,
                    item.RecipeNo,
                    item.DyeingTime,
                    item.Dyebath,
                    item.Whiteness,
                    item.RFT,
                    NullHelpers.DateToString(item.DyeingDate),
                    item.History,
                    item.STTemp,
                    item.STFeed,
                    item.STSpeed,
                    item.STStreching,
                    item.STChemical,
                    item.STDia,
                    item.STGSM,
                    item.STShrinkage,
                    item.STRemarks,
                    item.StenterMcNo,
                    item.SProduction,
                    item.DRTemp,
                    item.DRFeed,
                    item.DRSpeed,
                    item.DRStreching,
                    item.DRChemical,
                    item.DRDia,
                    item.DRGSM,
                    item.DRShrinkage,
                    item.Remarks,
                    item.DryerMcNo,
                    item.CTemp,
                    item.CFeed,
                    item.CSpeed,
                    item.CSteam,
                    item.CDia,
                    item.CGSM,
                    item.CRemarks,
                    item.CCompaction,
                    item.CProduction,
                    item.CompactingMcNo,
                    item.PTaker,
                    item.PPlaiter,
                    item.PReturn,
                    item.PTension,
                    item.PRPM,
                    item.PBrush,
                    item.PSpeed,
                    item.PDia,
                    item.PGSM,
                    item.PRemarks,
                    item.BUpperPile,
                    item.BUpperCounterPile,
                    item.BUpperDrumTension,
                    item.BUpperDrumRPM,
                    item.BLowerPile,
                    item.BLowerCounterPile,
                    item.BLowerDrumTension,
                    item.BLowerDrumRPM,
                    item.BRemarks,
                    item.STProductionTypeID.ToString(),
                    item.CProductionTypeID.ToString(),
                    item.PrintCoverage,
                    item.OtherInfo,
                    item.PrintMcNo,
                    item.PrintFactory,
                    item.PrintName,
                    item.QDia,
                    item.QGSM,
                    item.QShrinkage,
                    item.QWash,
                    item.QWater,
                    item.QAcid,
                    item.QAlkhali,
                    item.QBursting,
                    item.QPilling,
                    item.QStrech,
                    item.QRecovery,
                    item.BSpeed,
                    item.KnitID.ToString(),
                    NullHelpers.DateToString(item.UpdateTime),
                    item.FinalApprovalStatus.ToString(),
                    item.BRRevise.ToString(),
                    NullHelpers.DateToString(item.BRCreateTime),
                    item.CompactRevise.ToString(),
                    NullHelpers.DateToString(item.CompactCreateTime),
                    item.PeachRevise.ToString(),
                    NullHelpers.DateToString(item.PeachCreateTime),
                    item.PRRevise.ToString(),
                    NullHelpers.DateToString(item.PRCreateTime),
                    NullHelpers.DateToString(item.QCCreateTime),
                    item.QCRevise.ToString(),
                    NullHelpers.DateToString(item.KnitCreateTime),
                    item.KnitRevise.ToString(),
                    NullHelpers.DateToString(item.CWCreateTime),
                    item.CWRevise.ToString(),
                    NullHelpers.DateToString(item.HSPCreateTime),
                    item.HSPRevise.ToString(),
                    NullHelpers.DateToString(item.SGCreateTime),
                    item.SGRevise.ToString(),
                    NullHelpers.DateToString(item.DyeingCreateTime),
                    item.DyeingRevise.ToString(),
                    NullHelpers.DateToString(item.DRCreateTime),
                    item.DRRevise.ToString(),
                    NullHelpers.DateToString(item.STCreateTime),
                    item.STRevise.ToString());
                };

                foreach (var item in YD)
                {
                    ds.YDView.AddYDViewRow(
                    item.Lot.ToString(),
                    item.TPI.ToString(),
                    item.YarnCount,
                    item.YarnComposition,
                    item.YarnName,
                    item.YarnSupplier,
                    item.YarnColor);
                };

                foreach (var item in YDR)
                {
                    ds.YarnDyedRepeat.AddYarnDyedRepeatRow(
                    item.YDRRepeat,
                    item.YDRColor,
                    item.YDRFeederNo,
                    item.YDRMeasurement,
                    item.YDRUOM,
                    item.YDRBatchNo,
                    item.YDRCK);
                };

                rd.SetDataSource(ds);
                rd.SetDatabaseLogon("sa", "x123@slts");

                Stream stream = rd.ExportToStream(ExportFormatType.PortableDocFormat);
                MemoryStream ms = new MemoryStream();
                stream.CopyTo(ms);
                Byte[] fileBuffer = ms.ToArray();

                Response.Buffer = false;
                Response.ClearContent();
                Response.ClearHeaders();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", fileBuffer.Length.ToString());
                Response.BinaryWrite(fileBuffer);
                return null;
            }
            catch(Exception ex)
            {
                return null;
            }

        }

    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.DataAccessLayer;
using TextileResearchDevelopment.Models;

namespace TextileResearchDevelopment.BLL
{
    public class ReportBLL
    {
        static string connectionStr = DBGateway.connectionString;
        public static List<TestReport> reports = new List<TestReport>();
        public static Remarks data = new Remarks();

        internal static List<TestReport> Search(TestReport searchObj)
        {
            reports = new List<TestReport>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                reports = new List<TestReport>();
                string query = "";
                query = GetReportSearchQuery(searchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            TestReport report = new TestReport();

                            report.Id = Convert.ToInt32(reader["Id"]);
                            report.BuyerName = reader["BuyerName"].ToString();
                            report.FabricName = reader["FabricName"].ToString();
                            report.OrderNo = reader["OrderNo"].ToString();
                            report.Color = reader["Color"].ToString();
                            report.ChallanNo = reader["ChallanNo"].ToString();
                            report.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            report.FabricID = Convert.ToInt32(reader["FabricID"]);
                            report.BarCode = reader["BarCode"].ToString();
                            report.McDiaGauge = reader["McDiaGauge"].ToString();
                            report.YarnCount = reader["YarnCount"].ToString();
                            report.YarnBrand = reader["YarnBrand"].ToString();
                            report.YarnLot = reader["YarnLot"].ToString();
                            report.KnitUnit = reader["KnitUnit"].ToString();
                            report.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            report.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            report.McBrand = reader["McBrand"].ToString();

                            report.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            report.DyeingUnit = reader["DyeingUnitName"].ToString();
                            report.BatchNo = reader["BatchNo"].ToString();
                            report.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            report.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            report.SoftenerName = reader["SoftenerName"].ToString();
                            report.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);

                            report.PrintID = Convert.ToInt32(reader["PrintType"]);
                            report.PrintName = reader["PrintName"].ToString();
                            report.MachineID = Convert.ToInt32(reader["MachineType"]);
                            report.MachineName = reader["MachineName"].ToString();

                            report.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            report.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            report.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            report.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            report.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            report.Remarks = reader["Remarks"].ToString();

                            report.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            report.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            reports.Add(report);
                        }
                    }
                }
                else
                {
                    throw new Exception();
                }
            }
            catch (Exception ex)
            {
                reports = new List<TestReport>();
            }
            finally
            {
                cn.Close();
            }

            return reports;
        }

        internal static bool BarCodeAuthorization(int BarCode)
        {
            try
            {
                string query = "SELECT * FROM Remarks WHERE BarCode = " + BarCode;
                if (!DBGateway.recordExist(query))
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return false;
        }

        private static string GetReportSearchQuery(TestReport searchObj)
        {
            try
            {
                string query = "SELECT * FROM RemarksView ";
                if (searchObj.BarCode != "" && searchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(searchObj.BarCode);
                }

                if (searchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + searchObj.BuyerID;
                }

                if (searchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + searchObj.FabricTypeID;
                }

                if (searchObj.DiaGaugeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DiaGaugeID = " + searchObj.DiaGaugeID;
                }

                if (searchObj.YarnCountID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnCountID = " + searchObj.YarnCountID;
                }

                if (searchObj.KnitUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " KnitUnitID = " + searchObj.KnitUnitID;
                }

                if (searchObj.McBrandID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrandID = " + searchObj.McBrandID;
                }

                if (searchObj.OrderNo != "" && searchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + searchObj.OrderNo + "'";
                }

                if (searchObj.Color != "" && searchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + searchObj.Color + "'";
                }

                if (searchObj.ChallanNo != "" && searchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + searchObj.ChallanNo + "'";
                }

                if (searchObj.DeliveryDateStart != DateTime.MaxValue && searchObj.DeliveryDateEnd != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate BETWEEN '" + searchObj.DeliveryDateStart + "' AND '" + searchObj.DeliveryDateEnd + "'";
                }

                if (searchObj.YarnBrand != "" && searchObj.YarnBrand != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnBrand = '" + searchObj.YarnBrand + "'";
                }

                if (searchObj.YarnLot != "" && searchObj.YarnLot != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnLot = '" + searchObj.YarnLot + "'";
                }

                if (searchObj.GreyWidth != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyWidth = " + searchObj.GreyWidth;
                }

                if (searchObj.GreyGSM != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyGSM = " + searchObj.GreyGSM;
                }

                if (searchObj.DyeingUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DyeingUnitID = " + searchObj.DyeingUnitID;
                }

                if (searchObj.BatchNo != "" && searchObj.BatchNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BatchNo = '" + searchObj.BatchNo + "'";
                }

                if (searchObj.SoftenerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " SoftenerID = " + searchObj.SoftenerID;
                }

                if (searchObj.SoftenerGL != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " SoftenerGL = " + searchObj.SoftenerGL;
                }

                if (searchObj.Blower != (decimal)0.00)
                {
                    query = query.Contains("Blower") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Blower = " + searchObj.Blower;
                }

                if (searchObj.PrintID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " PrintType = " + searchObj.PrintID;
                }

                if (searchObj.MachineID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " MachineType = " + searchObj.MachineID;
                }

                if (searchObj.FinalWidth != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FinalWidth = " + searchObj.FinalWidth;
                }

                if (searchObj.FinalGSM != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FinalGSM = " + searchObj.FinalGSM;
                }

                if (searchObj.TSP != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " TSP = " + searchObj.TSP;
                }

                query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                query = query + " ApprovedStatus > 0";

                return query;
            }
            catch (Exception ex)
            {
                return "";
            }
        }


        internal static Remarks GetData()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cm.CommandText = "SELECT * FROM RemarksView";
                reader = cm.ExecuteReader();
                data = new Remarks();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        data.Id = Convert.ToInt32(reader["Id"]);
                        data.BuyerName = reader["BuyerName"].ToString();
                        data.FabricName = reader["FabricName"].ToString();
                        data.OrderNo = reader["OrderNo"].ToString();
                        data.Color = reader["Color"].ToString();
                        //data.Note = reader["Note"].ToString();

                        data.BarCode = reader["BarCode"].ToString();

                        //data.RequiredWidth = reader["RequiredWidth"].ToString();
                        //data.RequiredGSM = reader["RequiredGSM"].ToString();

                        //data.ChallanNo = reader["ChallanNo"].ToString();
                        //data.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        //data.BarCode = reader["BarCode"].ToString();
                        //data.McDiaGauge = reader["McDiaGauge"].ToString();
                        //data.YarnCount = reader["YarnCount"].ToString();
                        //data.YarnBrand = reader["YarnBrand"].ToString();
                        //data.YarnLot = reader["YarnLot"].ToString();
                        //data.KnitUnit = reader["KnitUnit"].ToString();
                        //data.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        //data.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        //data.McBrand = reader["McBrand"].ToString();

                        //data.DyeingUnit = reader["DyeingUnitName"].ToString();
                        //data.BatchNo = reader["BatchNo"].ToString();
                        //data.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                        //data.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        //data.SoftenerName = reader["SoftenerName"].ToString();
                        //data.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);

                        //data.PrintName = reader["PrintName"].ToString();
                        //data.MachineID = Convert.ToInt32(reader["MachineType"]);

                        //data.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                        //data.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                        //data.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                        //data.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                        //data.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                        //data.Remarks = reader["Remarks"].ToString();
                    }
                }

            }
            catch (Exception ex)
            {
                reports = new List<TestReport>();
            }
            finally
            {
                cn.Close();
            }

            return data;
        }

    }
}
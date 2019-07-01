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
    public class RemarksBLL
    {
        static string connectionStr = DBGateway.connectionString;
        public static List<TestReport> tests = new List<TestReport>();
        public static List<Remarks> remarks = new List<Remarks>();

        internal static List<TestReport> Search(TestReport searchObj)
        {
            tests = new List<TestReport>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                tests = new List<TestReport>();
                string query = "";
                query = GetTestReportSearchQuery(searchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            TestReport remark = new TestReport();

                            remark.Id = Convert.ToInt32(reader["Id"]);
                            remark.BuyerName = reader["BuyerName"].ToString();
                            remark.FabricName = reader["FabricName"].ToString();
                            remark.OrderNo = reader["OrderNo"].ToString();
                            remark.Color = reader["Color"].ToString();
                            remark.ChallanNo = reader["ChallanNo"].ToString();
                            remark.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            remark.FabricID = Convert.ToInt32(reader["FabricID"]);
                            remark.BarCode = reader["BarCode"].ToString();
                            remark.McDiaGauge = reader["McDiaGauge"].ToString();
                            remark.YarnCount = reader["YarnCount"].ToString();
                            remark.YarnBrand = reader["YarnBrand"].ToString();
                            remark.YarnLot = reader["YarnLot"].ToString();
                            remark.KnitUnit = reader["KnitUnit"].ToString();
                            remark.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            remark.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            remark.McBrand = reader["McBrand"].ToString();

                            remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            remark.DyeingUnit = reader["DyeingUnitName"].ToString();
                            remark.BatchNo = reader["BatchNo"].ToString();
                            remark.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            remark.SoftenerName = reader["SoftenerName"].ToString();
                            remark.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);
                            remark.Temp = Convert.ToDecimal(reader["Temp"]);
                            remark.Speed = Convert.ToDecimal(reader["Speed"]);
                            remark.Peder = reader["Peder"].ToString();
                            remark.Blower = Convert.ToDecimal(reader["Blower"]);

                            remark.PrintID = Convert.ToInt32(reader["PrintType"]);
                            remark.PrintName = reader["PrintName"].ToString();
                            remark.MachineID = Convert.ToInt32(reader["MachineType"]);
                            remark.MachineName = reader["MachineName"].ToString();

                            remark.FinalWidth =  Convert.ToDecimal(reader["FinalWidth"]);
                            remark.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            remark.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            remark.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            remark.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            //remark.UserRemarks = reader["Remarks"].ToString();

                            remark.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            remark.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            remark.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            remark.CreateByName = reader["CreateByName"].ToString();
                            remark.UpdateByName = reader["UpdateByName"].ToString();
                            remark.ApprovedByName = reader["ApprovedByName"].ToString();
                            remark.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            remark.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            tests.Add(remark);
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
                tests = new List<TestReport>();
            }
            finally
            {
                cn.Close();
            }

            return tests;
        }

        private static string GetTestReportSearchQuery(TestReport searchObj)
        {
            try
            {
                string query = "SELECT * FROM TestView ";
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
                    query = query + " DeliveryDate BETWEEN '" + searchObj.DeliveryDateStart.ToString("yyyy/MM/dd HH:mm") + "' AND " + searchObj.DeliveryDateEnd.ToString("yyyy/MM/dd HH:mm") + "'";
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

                query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                query = query + " ApprovedStatus > 0";

                return query;
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        internal static int UnapproveRemarks(Remarks remark)
        {
            int Id = -1;
            try
            {
                string query = " UPDATE Remarks SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + remark.Id + " AND ApprovedStatus = 1 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM RemarksView WHERE Id = " + remark.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            remark.Id = Convert.ToInt32(reader["Id"]);
                            Id = remark.Id;
                            remark.TestReportID = Convert.ToInt32(reader["TestReportID"]);
                            remark.BuyerName = reader["BuyerName"].ToString();
                            remark.FabricName = reader["FabricName"].ToString();
                            remark.OrderNo = reader["OrderNo"].ToString();
                            remark.Color = reader["Color"].ToString();
                            remark.ChallanNo = reader["ChallanNo"].ToString();
                            remark.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            remark.FabricID = Convert.ToInt32(reader["FabricID"]);
                            remark.BarCode = reader["BarCode"].ToString();
                            remark.McDiaGauge = reader["McDiaGauge"].ToString();
                            remark.YarnCount = reader["YarnCount"].ToString();
                            remark.YarnBrand = reader["YarnBrand"].ToString();
                            remark.YarnLot = reader["YarnLot"].ToString();
                            remark.KnitUnit = reader["KnitUnit"].ToString();
                            remark.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            remark.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            remark.McBrand = reader["McBrand"].ToString();

                            remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            remark.DyeingUnit = reader["DyeingUnitName"].ToString();
                            remark.BatchNo = reader["BatchNo"].ToString();
                            remark.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            remark.SoftenerName = reader["SoftenerName"].ToString();

                            remark.PrintID = Convert.ToInt32(reader["PrintType"]);
                            remark.PrintName = reader["PrintName"].ToString();
                            remark.MachineID = Convert.ToInt32(reader["MachineType"]);
                            remark.MachineName = reader["MachineName"].ToString();

                            remark.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            remark.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            remark.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            remark.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            remark.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            remark.UserRemarks = reader["Remarks"].ToString();

                            remark.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            remark.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            remark.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            remark.CreateByName = reader["CreateByName"].ToString();
                            remark.UpdateByName = reader["UpdateByName"].ToString();
                            remark.ApprovedByName = reader["ApprovedByName"].ToString();

                            remark.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            remark.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
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

        internal static List<Remarks> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                remarks = new List<Remarks>();
                string query = "SELECT * FROM RemarksView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Remarks remark = new Remarks();
                        remark.Id = Convert.ToInt32(reader["Id"]);
                        remark.TestReportID = Convert.ToInt32(reader["TestReportID"]);
                        remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        remark.BuyerName = reader["BuyerName"].ToString();
                        remark.FabricName = reader["FabricName"].ToString();
                        remark.OrderNo = reader["OrderNo"].ToString();
                        remark.Color = reader["Color"].ToString();
                        remark.ChallanNo = reader["ChallanNo"].ToString();
                        remark.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        remark.FabricID = Convert.ToInt32(reader["FabricID"]);
                        remark.BarCode = reader["BarCode"].ToString();
                        remark.McDiaGauge = reader["McDiaGauge"].ToString();
                        remark.YarnCount = reader["YarnCount"].ToString();
                        remark.YarnBrand = reader["YarnBrand"].ToString();
                        remark.YarnLot = reader["YarnLot"].ToString();
                        remark.KnitUnit = reader["KnitUnit"].ToString();
                        remark.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        remark.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        remark.McBrand = reader["McBrand"].ToString();

                        remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        remark.DyeingUnit = reader["DyeingUnitName"].ToString();
                        remark.BatchNo = reader["BatchNo"].ToString();
                        remark.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        remark.SoftenerName = reader["SoftenerName"].ToString();

                        remark.PrintID = Convert.ToInt32(reader["PrintType"]);
                        remark.PrintName = reader["PrintName"].ToString();
                        remark.MachineID = Convert.ToInt32(reader["MachineType"]);
                        remark.MachineName = reader["MachineName"].ToString();

                        remark.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                        remark.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                        remark.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                        remark.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                        remark.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                        remark.UserRemarks = reader["Remarks"].ToString();

                        remark.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                        remark.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                        remark.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                        remark.CreateByName = reader["CreateByName"].ToString();
                        remark.UpdateByName = reader["UpdateByName"].ToString();
                        remark.ApprovedByName = reader["ApprovedByName"].ToString();

                        remark.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        remark.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                        remarks.Add(remark);
                    }
                }
            }
            catch (Exception ex)
            {
                remarks = new List<Remarks>();
            }
            finally
            {
                cn.Close();
            }

            return remarks;
        }

        internal static int AddRemarks(Remarks remark)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Remarks (TestReportID, BarCode, Remarks, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + remark.TestReportID + "," + remark.BarCode + ",'" + remark.UserRemarks + "'," + remark.ReviseStatus + ",'" + remark.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM RemarksView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            remark.Id = Convert.ToInt32(reader["Id"]);
                            Id = remark.Id;
                            remark.TestReportID = Convert.ToInt32(reader["TestReportID"]);
                            remark.BuyerName = reader["BuyerName"].ToString();
                            remark.FabricName = reader["FabricName"].ToString();
                            remark.OrderNo = reader["OrderNo"].ToString();
                            remark.Color = reader["Color"].ToString();
                            remark.ChallanNo = reader["ChallanNo"].ToString();
                            remark.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            remark.FabricID = Convert.ToInt32(reader["FabricID"]);
                            remark.BarCode = reader["BarCode"].ToString();
                            remark.McDiaGauge = reader["McDiaGauge"].ToString();
                            remark.YarnCount = reader["YarnCount"].ToString();
                            remark.YarnBrand = reader["YarnBrand"].ToString();
                            remark.YarnLot = reader["YarnLot"].ToString();
                            remark.KnitUnit = reader["KnitUnit"].ToString();
                            remark.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            remark.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            remark.McBrand = reader["McBrand"].ToString();

                            remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            remark.DyeingUnit = reader["DyeingUnitName"].ToString();
                            remark.BatchNo = reader["BatchNo"].ToString();
                            remark.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            remark.SoftenerName = reader["SoftenerName"].ToString();

                            remark.PrintID = Convert.ToInt32(reader["PrintType"]);
                            remark.PrintName = reader["PrintName"].ToString();
                            remark.MachineID = Convert.ToInt32(reader["MachineType"]);
                            remark.MachineName = reader["MachineName"].ToString();

                            remark.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            remark.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            remark.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            remark.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            remark.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            remark.UserRemarks = reader["Remarks"].ToString();

                            remark.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            remark.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            remark.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            remark.CreateByName = reader["CreateByName"].ToString();
                            remark.UpdateByName = reader["UpdateByName"].ToString();
                            remark.ApprovedByName = reader["ApprovedByName"].ToString();

                            remark.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            remark.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
        }

        internal static int EditRemarks(Remarks remark)
        {
            int Id = -1;
            try
            {
                string GetUpdateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";

                string query = " UPDATE Remarks SET Remarks = " + remark.UserRemarks + ", UpdateBy = (" + GetUpdateByQuery + "), UpdateTime = '" + remark.UpdateTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + remark.Id + " AND ApprovedStatus = 0";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM RemarksView WHERE Id = " + remark.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            remark.Id = Convert.ToInt32(reader["Id"]);
                            Id = remark.Id;
                            remark.TestReportID = Convert.ToInt32(reader["TestReportID"]);
                            remark.BuyerName = reader["BuyerName"].ToString();
                            remark.FabricName = reader["FabricName"].ToString();
                            remark.OrderNo = reader["OrderNo"].ToString();
                            remark.Color = reader["Color"].ToString();
                            remark.ChallanNo = reader["ChallanNo"].ToString();
                            remark.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            remark.FabricID = Convert.ToInt32(reader["FabricID"]);
                            remark.BarCode = reader["BarCode"].ToString();
                            remark.McDiaGauge = reader["McDiaGauge"].ToString();
                            remark.YarnCount = reader["YarnCount"].ToString();
                            remark.YarnBrand = reader["YarnBrand"].ToString();
                            remark.YarnLot = reader["YarnLot"].ToString();
                            remark.KnitUnit = reader["KnitUnit"].ToString();
                            remark.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            remark.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            remark.McBrand = reader["McBrand"].ToString();

                            remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            remark.DyeingUnit = reader["DyeingUnitName"].ToString();
                            remark.BatchNo = reader["BatchNo"].ToString();
                            remark.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            remark.SoftenerName = reader["SoftenerName"].ToString();

                            remark.PrintID = Convert.ToInt32(reader["PrintType"]);
                            remark.PrintName = reader["PrintName"].ToString();
                            remark.MachineID = Convert.ToInt32(reader["MachineType"]);
                            remark.MachineName = reader["MachineName"].ToString();

                            remark.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            remark.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            remark.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            remark.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            remark.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            remark.UserRemarks = reader["Remarks"].ToString();

                            remark.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            remark.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            remark.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            remark.CreateByName = reader["CreateByName"].ToString();
                            remark.UpdateByName = reader["UpdateByName"].ToString();
                            remark.ApprovedByName = reader["ApprovedByName"].ToString();

                            remark.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            remark.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
        }

        internal static int ApproveRemarks(Remarks remark)
        {
            int Id = -1;
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Remarks SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + remark.ApprovedTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + remark.Id + " AND ApprovedStatus = 0 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM RemarksView WHERE Id = " + remark.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            remark.Id = Convert.ToInt32(reader["Id"]);
                            Id = remark.Id;
                            remark.TestReportID = Convert.ToInt32(reader["TestReportID"]);
                            remark.BuyerName = reader["BuyerName"].ToString();
                            remark.FabricName = reader["FabricName"].ToString();
                            remark.OrderNo = reader["OrderNo"].ToString();
                            remark.Color = reader["Color"].ToString();
                            remark.ChallanNo = reader["ChallanNo"].ToString();
                            remark.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            remark.FabricID = Convert.ToInt32(reader["FabricID"]);
                            remark.BarCode = reader["BarCode"].ToString();
                            remark.McDiaGauge = reader["McDiaGauge"].ToString();
                            remark.YarnCount = reader["YarnCount"].ToString();
                            remark.YarnBrand = reader["YarnBrand"].ToString();
                            remark.YarnLot = reader["YarnLot"].ToString();
                            remark.KnitUnit = reader["KnitUnit"].ToString();
                            remark.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            remark.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            remark.McBrand = reader["McBrand"].ToString();

                            remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            remark.DyeingUnit = reader["DyeingUnitName"].ToString();
                            remark.BatchNo = reader["BatchNo"].ToString();
                            remark.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            remark.SoftenerName = reader["SoftenerName"].ToString();

                            remark.PrintID = Convert.ToInt32(reader["PrintType"]);
                            remark.PrintName = reader["PrintName"].ToString();
                            remark.MachineID = Convert.ToInt32(reader["MachineType"]);
                            remark.MachineName = reader["MachineName"].ToString();

                            remark.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            remark.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            remark.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            remark.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            remark.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            remark.UserRemarks = reader["Remarks"].ToString();

                            remark.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            remark.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            remark.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            remark.CreateByName = reader["CreateByName"].ToString();
                            remark.UpdateByName = reader["UpdateByName"].ToString();
                            remark.ApprovedByName = reader["ApprovedByName"].ToString();

                            remark.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            remark.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
        }

        internal static int ReviseRemarks(Remarks remark)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM Remarks WHERE BarCode = '" + remark.BarCode + "'";

                string query = " INSERT INTO Remarks (TestReportID, BarCode, Remarks, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + remark.TestReportID + "," + remark.BarCode + ",'" + remark.UserRemarks + "', ((" + GetReviseQuery + ") +1),'" + remark.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM RemarksView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            remark.Id = Convert.ToInt32(reader["Id"]);
                            Id = remark.Id;
                            remark.TestReportID = Convert.ToInt32(reader["TestReportID"]);
                            remark.BuyerName = reader["BuyerName"].ToString();
                            remark.FabricName = reader["FabricName"].ToString();
                            remark.OrderNo = reader["OrderNo"].ToString();
                            remark.Color = reader["Color"].ToString();
                            remark.ChallanNo = reader["ChallanNo"].ToString();
                            remark.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            remark.FabricID = Convert.ToInt32(reader["FabricID"]);
                            remark.BarCode = reader["BarCode"].ToString();
                            remark.McDiaGauge = reader["McDiaGauge"].ToString();
                            remark.YarnCount = reader["YarnCount"].ToString();
                            remark.YarnBrand = reader["YarnBrand"].ToString();
                            remark.YarnLot = reader["YarnLot"].ToString();
                            remark.KnitUnit = reader["KnitUnit"].ToString();
                            remark.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            remark.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            remark.McBrand = reader["McBrand"].ToString();

                            remark.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            remark.DyeingUnit = reader["DyeingUnitName"].ToString();
                            remark.BatchNo = reader["BatchNo"].ToString();
                            remark.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            remark.SoftenerName = reader["SoftenerName"].ToString();

                            remark.PrintID = Convert.ToInt32(reader["PrintType"]);
                            remark.PrintName = reader["PrintName"].ToString();
                            remark.MachineID = Convert.ToInt32(reader["MachineType"]);
                            remark.MachineName = reader["MachineName"].ToString();

                            remark.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            remark.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            remark.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            remark.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            remark.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            remark.UserRemarks = reader["Remarks"].ToString();

                            remark.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            remark.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            remark.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            remark.CreateByName = reader["CreateByName"].ToString();
                            remark.UpdateByName = reader["UpdateByName"].ToString();
                            remark.ApprovedByName = reader["ApprovedByName"].ToString();

                            remark.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            remark.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
        }

        internal static bool DeleteRemarks(int Id)
        {
            try
            {
                string query = "DELETE FROM Remarks WHERE Id = " + Id + " AND ApprovedStatus = 0";
                if (DBGateway.ExecutionToDB(query, 1))
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

    }
}
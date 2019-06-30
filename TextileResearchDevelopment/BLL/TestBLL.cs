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
    public class TestBLL
    {
        public static List<TestReport> tests = new List<TestReport>();
        public static List<Aop> aops = new List<Aop>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();
        public static List<SoftenerType> SoftenerTypes = new List<SoftenerType>();
        public static List<PrintType> PrintTypes = new List<PrintType>();
        public static List<MachineType> MachineTypes = new List<MachineType>();

        static string connectionStr = DBGateway.connectionString;

        internal static List<TestReport> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                tests = new List<TestReport>();
                string query = "SELECT * FROM TestView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TestReport test = new TestReport();
                        test.Id = Convert.ToInt32(reader["Id"]);
                        test.AopID = Convert.ToInt32(reader["AOPID"]);
                        test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        test.BuyerName = reader["BuyerName"].ToString();
                        test.FabricName = reader["FabricName"].ToString();
                        test.OrderNo = reader["OrderNo"].ToString();
                        test.Color = reader["Color"].ToString();
                        test.ChallanNo = reader["ChallanNo"].ToString();
                        test.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        test.FabricID = Convert.ToInt32(reader["FabricID"]);
                        test.BarCode = reader["BarCode"].ToString();
                        test.McDiaGauge = reader["McDiaGauge"].ToString();
                        test.YarnCount = reader["YarnCount"].ToString();
                        test.YarnBrand = reader["YarnBrand"].ToString();
                        test.YarnLot = reader["YarnLot"].ToString();
                        test.KnitUnit = reader["KnitUnit"].ToString();
                        test.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        test.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        test.McBrand = reader["McBrand"].ToString();

                        test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        test.DyeingUnit = reader["DyeingUnitName"].ToString();
                        test.BatchNo = reader["BatchNo"].ToString();
                        test.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                        test.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        test.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                        test.SoftenerName = reader["SoftenerName"].ToString();

                        test.PrintID = Convert.ToInt32(reader["PrintID"]);
                        test.PrintName = reader["PrintName"].ToString();
                        test.MachineID = Convert.ToInt32(reader["MachineID"]);
                        test.MachineName = reader["MachineName"].ToString();

                        test.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                        test.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                        test.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                        test.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                        test.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                        test.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                        test.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                        test.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                        test.CreateByName = reader["CreateByName"].ToString();
                        test.UpdateByName = reader["UpdateByName"].ToString();
                        test.ApprovedByName = reader["ApprovedByName"].ToString();

                        test.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        test.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                        tests.Add(test);
                    }
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

        internal static int AddTest(TestReport test)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Aop (AOPID, BarCode, FinalWidth, FinalGSM, TumbleLength, TumbleWidth, TumbleSP, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + test.AopID + "," + test.BarCode + "," + test.FinalWidth + "," + test.FinalGSM + "," + test.TLength + "," + test.TWidth + "," + test.TSP + "," + test.ReviseStatus + ",'" + test.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM TestView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            test.Id = Convert.ToInt32(reader["Id"]);
                            test.AopID = Convert.ToInt32(reader["AOPID"]);
                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.BuyerName = reader["BuyerName"].ToString();
                            test.FabricName = reader["FabricName"].ToString();
                            test.OrderNo = reader["OrderNo"].ToString();
                            test.Color = reader["Color"].ToString();
                            test.ChallanNo = reader["ChallanNo"].ToString();
                            test.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            test.FabricID = Convert.ToInt32(reader["FabricID"]);
                            test.BarCode = reader["BarCode"].ToString();
                            test.McDiaGauge = reader["McDiaGauge"].ToString();
                            test.YarnCount = reader["YarnCount"].ToString();
                            test.YarnBrand = reader["YarnBrand"].ToString();
                            test.YarnLot = reader["YarnLot"].ToString();
                            test.KnitUnit = reader["KnitUnit"].ToString();
                            test.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            test.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            test.McBrand = reader["McBrand"].ToString();

                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.DyeingUnit = reader["DyeingUnitName"].ToString();
                            test.BatchNo = reader["BatchNo"].ToString();
                            test.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            test.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            test.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            test.SoftenerName = reader["SoftenerName"].ToString();

                            test.PrintID = Convert.ToInt32(reader["PrintID"]);
                            test.PrintName = reader["PrintName"].ToString();
                            test.MachineID = Convert.ToInt32(reader["MachineID"]);
                            test.MachineName = reader["MachineName"].ToString();

                            test.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            test.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            test.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            test.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            test.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            test.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            test.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            test.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            test.CreateByName = reader["CreateByName"].ToString();
                            test.UpdateByName = reader["UpdateByName"].ToString();
                            test.ApprovedByName = reader["ApprovedByName"].ToString();

                            test.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            test.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
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

        internal static int UnapproveTest(TestReport test)
        {
            int Id = -1;
            try
            {
                string query = " UPDATE Test SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + test.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM TestView WHERE Id = " + test.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            test.Id = Convert.ToInt32(reader["Id"]);
                            test.AopID = Convert.ToInt32(reader["AOPID"]);
                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.BuyerName = reader["BuyerName"].ToString();
                            test.FabricName = reader["FabricName"].ToString();
                            test.OrderNo = reader["OrderNo"].ToString();
                            test.Color = reader["Color"].ToString();
                            test.ChallanNo = reader["ChallanNo"].ToString();
                            test.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            test.FabricID = Convert.ToInt32(reader["FabricID"]);
                            test.BarCode = reader["BarCode"].ToString();
                            test.McDiaGauge = reader["McDiaGauge"].ToString();
                            test.YarnCount = reader["YarnCount"].ToString();
                            test.YarnBrand = reader["YarnBrand"].ToString();
                            test.YarnLot = reader["YarnLot"].ToString();
                            test.KnitUnit = reader["KnitUnit"].ToString();
                            test.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            test.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            test.McBrand = reader["McBrand"].ToString();

                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.DyeingUnit = reader["DyeingUnitName"].ToString();
                            test.BatchNo = reader["BatchNo"].ToString();
                            test.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            test.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            test.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            test.SoftenerName = reader["SoftenerName"].ToString();

                            test.PrintID = Convert.ToInt32(reader["PrintID"]);
                            test.PrintName = reader["PrintName"].ToString();
                            test.MachineID = Convert.ToInt32(reader["MachineID"]);
                            test.MachineName = reader["MachineName"].ToString();

                            test.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            test.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            test.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            test.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            test.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            test.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            test.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            test.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            test.CreateByName = reader["CreateByName"].ToString();
                            test.UpdateByName = reader["UpdateByName"].ToString();
                            test.ApprovedByName = reader["ApprovedByName"].ToString();

                            test.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            test.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
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

        internal static int EditTest(TestReport test)
        {
            int Id = -1;
            try
            {
                string GetUpdateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";

                string query = " UPDATE Test SET FinalWidth = " + test.FinalWidth + ", FinalGSM = '" + test.FinalGSM + "', TumbleLength = " + test.TLength + ", TumbleWidth = '" + test.TWidth + "',TumbleSP = '" + test.TSP + "', UpdateBy = (" + GetUpdateByQuery + "), UpdateTime = '" + test.UpdateTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + test.Id + " AND ApprovedStatus = 0";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM TestView WHERE Id = " + test.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            test.Id = Convert.ToInt32(reader["Id"]);
                            test.AopID = Convert.ToInt32(reader["AOPID"]);
                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.BuyerName = reader["BuyerName"].ToString();
                            test.FabricName = reader["FabricName"].ToString();
                            test.OrderNo = reader["OrderNo"].ToString();
                            test.Color = reader["Color"].ToString();
                            test.ChallanNo = reader["ChallanNo"].ToString();
                            test.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            test.FabricID = Convert.ToInt32(reader["FabricID"]);
                            test.BarCode = reader["BarCode"].ToString();
                            test.McDiaGauge = reader["McDiaGauge"].ToString();
                            test.YarnCount = reader["YarnCount"].ToString();
                            test.YarnBrand = reader["YarnBrand"].ToString();
                            test.YarnLot = reader["YarnLot"].ToString();
                            test.KnitUnit = reader["KnitUnit"].ToString();
                            test.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            test.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            test.McBrand = reader["McBrand"].ToString();

                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.DyeingUnit = reader["DyeingUnitName"].ToString();
                            test.BatchNo = reader["BatchNo"].ToString();
                            test.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            test.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            test.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            test.SoftenerName = reader["SoftenerName"].ToString();

                            test.PrintID = Convert.ToInt32(reader["PrintID"]);
                            test.PrintName = reader["PrintName"].ToString();
                            test.MachineID = Convert.ToInt32(reader["MachineID"]);
                            test.MachineName = reader["MachineName"].ToString();

                            test.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            test.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            test.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            test.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            test.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            test.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            test.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            test.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            test.CreateByName = reader["CreateByName"].ToString();
                            test.UpdateByName = reader["UpdateByName"].ToString();
                            test.ApprovedByName = reader["ApprovedByName"].ToString();

                            test.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            test.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
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

        internal static int ApproveTest(TestReport test)
        {
            int Id = -1;
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Test SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + test.ApprovedTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + test.Id + " AND ApprovedBy = 0 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM TestView WHERE Id = " + test.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            test.Id = Convert.ToInt32(reader["Id"]);
                            test.AopID = Convert.ToInt32(reader["AOPID"]);
                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.BuyerName = reader["BuyerName"].ToString();
                            test.FabricName = reader["FabricName"].ToString();
                            test.OrderNo = reader["OrderNo"].ToString();
                            test.Color = reader["Color"].ToString();
                            test.ChallanNo = reader["ChallanNo"].ToString();
                            test.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            test.FabricID = Convert.ToInt32(reader["FabricID"]);
                            test.BarCode = reader["BarCode"].ToString();
                            test.McDiaGauge = reader["McDiaGauge"].ToString();
                            test.YarnCount = reader["YarnCount"].ToString();
                            test.YarnBrand = reader["YarnBrand"].ToString();
                            test.YarnLot = reader["YarnLot"].ToString();
                            test.KnitUnit = reader["KnitUnit"].ToString();
                            test.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            test.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            test.McBrand = reader["McBrand"].ToString();

                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.DyeingUnit = reader["DyeingUnitName"].ToString();
                            test.BatchNo = reader["BatchNo"].ToString();
                            test.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            test.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            test.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            test.SoftenerName = reader["SoftenerName"].ToString();

                            test.PrintID = Convert.ToInt32(reader["PrintID"]);
                            test.PrintName = reader["PrintName"].ToString();
                            test.MachineID = Convert.ToInt32(reader["MachineID"]);
                            test.MachineName = reader["MachineName"].ToString();

                            test.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            test.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            test.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            test.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            test.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            test.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            test.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            test.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            test.CreateByName = reader["CreateByName"].ToString();
                            test.UpdateByName = reader["UpdateByName"].ToString();
                            test.ApprovedByName = reader["ApprovedByName"].ToString();

                            test.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            test.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
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

        internal static int ReviseTest(TestReport test)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT ReviseStatus FROM Test WHERE Id = " + test.Id;

                string query = " INSERT INTO Aop (AOPID, BarCode, FinalWidth, FinalGSM, TumbleLength, TumbleWidth, TumbleSP, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + test.AopID + "," + test.BarCode + "," + test.FinalWidth + "," + test.FinalGSM + "," + test.TLength + "," + test.TWidth + "," + test.TSP + ", ((" + GetReviseQuery + ") +1),'" + test.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM TestView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            test.Id = Convert.ToInt32(reader["Id"]);
                            test.AopID = Convert.ToInt32(reader["AOPID"]);
                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.BuyerName = reader["BuyerName"].ToString();
                            test.FabricName = reader["FabricName"].ToString();
                            test.OrderNo = reader["OrderNo"].ToString();
                            test.Color = reader["Color"].ToString();
                            test.ChallanNo = reader["ChallanNo"].ToString();
                            test.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            test.FabricID = Convert.ToInt32(reader["FabricID"]);
                            test.BarCode = reader["BarCode"].ToString();
                            test.McDiaGauge = reader["McDiaGauge"].ToString();
                            test.YarnCount = reader["YarnCount"].ToString();
                            test.YarnBrand = reader["YarnBrand"].ToString();
                            test.YarnLot = reader["YarnLot"].ToString();
                            test.KnitUnit = reader["KnitUnit"].ToString();
                            test.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            test.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            test.McBrand = reader["McBrand"].ToString();

                            test.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            test.DyeingUnit = reader["DyeingUnitName"].ToString();
                            test.BatchNo = reader["BatchNo"].ToString();
                            test.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            test.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            test.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            test.SoftenerName = reader["SoftenerName"].ToString();

                            test.PrintID = Convert.ToInt32(reader["PrintID"]);
                            test.PrintName = reader["PrintName"].ToString();
                            test.MachineID = Convert.ToInt32(reader["MachineID"]);
                            test.MachineName = reader["MachineName"].ToString();

                            test.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            test.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            test.TLength = Convert.ToDecimal(reader["TumbleLength"]);
                            test.TWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            test.TSP = Convert.ToDecimal(reader["TumbleSP"]);

                            test.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            test.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            test.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            test.CreateByName = reader["CreateByName"].ToString();
                            test.UpdateByName = reader["UpdateByName"].ToString();
                            test.ApprovedByName = reader["ApprovedByName"].ToString();

                            test.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            test.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
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

        internal static bool DeleteTest(int Id)
        {
            try
            {
                string query = "DELETE FROM Test WHERE Id = " + Id + " AND ApprovedBy = 0";
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

        internal static List<Aop> AopSearch(Aop aopSearchObj)
        {
            aops = new List<Aop>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                aops = new List<Aop>();
                string query = "";
                query = GetTestSearchQuery(aopSearchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Aop aop = new Aop();

                            aop.Id = Convert.ToInt32(reader["Id"]);
                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.BuyerName = reader["BuyerName"].ToString();
                            aop.FabricName = reader["FabricName"].ToString();
                            aop.OrderNo = reader["OrderNo"].ToString();
                            aop.Color = reader["Color"].ToString();
                            aop.ChallanNo = reader["ChallanNo"].ToString();
                            aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            aop.FabricID = Convert.ToInt32(reader["FabricID"]);
                            aop.BarCode = reader["BarCode"].ToString();
                            aop.McDiaGauge = reader["McDiaGauge"].ToString();
                            aop.YarnCount = reader["YarnCount"].ToString();
                            aop.YarnBrand = reader["YarnBrand"].ToString();
                            aop.YarnLot = reader["YarnLot"].ToString();
                            aop.KnitUnit = reader["KnitUnit"].ToString();
                            aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            aop.McBrand = reader["McBrand"].ToString();

                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                            aop.BatchNo = reader["BatchNo"].ToString();
                            aop.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            aop.SoftenerName = reader["SoftenerName"].ToString();

                            aop.PrintID = Convert.ToInt32(reader["PrintID"]);
                            aop.PrintName = reader["PrintName"].ToString();
                            aop.MachineID = Convert.ToInt32(reader["MachineID"]);
                            aop.MachineName = reader["MachineName"].ToString();

                            aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            aop.CreateByName = reader["CreateByName"].ToString();
                            aop.UpdateByName = reader["UpdateByName"].ToString();
                            aop.ApprovedByName = reader["ApprovedByName"].ToString();

                            aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            aops.Add(aop);
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
                aops = new List<Aop>();
            }
            finally
            {
                cn.Close();
            }

            return aops;
        }

        internal static bool BarCodeAuthorization(int BarCode)
        {
            try
            {
                string query = "SELECT * FROM Test WHERE BarCode = " + BarCode;
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

        public static string GetTestSearchQuery(Aop aopSearchObj)
        {
            try
            {
                string query = "SELECT * FROM TestView ";
                if (aopSearchObj.BarCode != "" && aopSearchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(aopSearchObj.BarCode);
                }

                if (aopSearchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + aopSearchObj.BuyerID;
                }

                if (aopSearchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + aopSearchObj.FabricTypeID;
                }

                if (aopSearchObj.DiaGaugeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DiaGaugeID = " + aopSearchObj.DiaGaugeID;
                }

                if (aopSearchObj.YarnCountID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnCountID = " + aopSearchObj.YarnCountID;
                }

                if (aopSearchObj.KnitUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " KnitUnitID = " + aopSearchObj.KnitUnitID;
                }

                if (aopSearchObj.McBrandID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrandID = " + aopSearchObj.McBrandID;
                }

                if (aopSearchObj.OrderNo != "" && aopSearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + aopSearchObj.OrderNo + "'";
                }

                if (aopSearchObj.Color != "" && aopSearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + aopSearchObj.Color + "'";
                }

                if (aopSearchObj.ChallanNo != "" && aopSearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + aopSearchObj.ChallanNo + "'";
                }

                if (aopSearchObj.DeliveryDateStart != DateTime.MaxValue && aopSearchObj.DeliveryDateEnd != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate BETWEEN '" + aopSearchObj.DeliveryDateStart.ToString("yyyy/MM/dd HH:mm") + "' AND '" + aopSearchObj.DeliveryDateEnd.ToString("yyyy/MM/dd HH:mm") + "'";
                }

                if (aopSearchObj.YarnBrand != "" && aopSearchObj.YarnBrand != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnBrand = '" + aopSearchObj.YarnBrand + "'";
                }

                if (aopSearchObj.YarnLot != "" && aopSearchObj.YarnLot != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnLot = '" + aopSearchObj.YarnLot + "'";
                }

                if (aopSearchObj.GreyWidth != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyWidth = " + aopSearchObj.GreyWidth;
                }

                if (aopSearchObj.GreyGSM != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyGSM = " + aopSearchObj.GreyGSM;
                }

                if (aopSearchObj.DyeingUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DyeingUnitID = " + aopSearchObj.DyeingUnitID;
                }

                if (aopSearchObj.BatchNo != "" && aopSearchObj.BatchNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BatchNo = '" + aopSearchObj.BatchNo + "'";
                }

                if (aopSearchObj.SoftenerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " SoftenerID = " + aopSearchObj.SoftenerID;
                }

                if (aopSearchObj.PrintID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " PrintType = " + aopSearchObj.PrintID;
                }

                if (aopSearchObj.MachineID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " MachineType = " + aopSearchObj.MachineID;
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
    }
}
using System;
using System.Collections.Generic;
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
                aops = new List<Aop>();
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
                string GetAOPID = "SELECT AOPID FROM Test WHERE Id = " + test.Id;

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

        internal static bool DeleteTest(int id)
        {
            throw new NotImplementedException();
        }

        internal static List<Aop> AopSearch(Aop aopSearchObj)
        {
            throw new NotImplementedException();
        }

        internal static bool BarCodeAuthorization(int barCode)
        {
            throw new NotImplementedException();
        }
    }
}
using System;
using System.Collections.Generic;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.DataAccessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace TextileResearchDevelopment.BLL
{
    public class AopBLL
    {

        public static List<Aop> aops = new List<Aop>();
        public static List<Stenter> stenters = new List<Stenter>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();
        public static List<SoftenerType> SoftenerTypes = new List<SoftenerType>();
        public static List<PrintType> PrintTypes = new List<PrintType>();
        public static List<MachineType> MachineTypes = new List<MachineType>();

        static string connectionStr = DBGateway.connectionString;

        internal static List<Aop> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                aops = new List<Aop>();
                string query = "SELECT * FROM AopView";
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
                        aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                        aop.SoftenerName = reader["SoftenerName"].ToString();

                        aop.PrintID = Convert.ToInt32(reader["PrintType"]);
                        aop.PrintName = reader["PrintName"].ToString();
                        aop.MachineID = Convert.ToInt32(reader["MachineType"]);
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

        internal static int ReviseAop(Aop aop)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM Aop WHERE BarCode = '" + aop.BarCode + "'";
                string GetStenterID = "SELECT StenterID FROM Aop WHERE Id = " + aop.Id;

                string query = " INSERT INTO Aop (StenterID, BarCode, PrintType, MachineType, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES((" + GetStenterID + ")," + aop.BarCode + "," + aop.PrintID + "," + aop.MachineID + ", ((" + GetReviseQuery + ") +1),'" + aop.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM AopView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            aop.Id = Convert.ToInt32(reader["Id"]);
                            Id = aop.Id;
                            aop.BarCode = reader["BarCode"].ToString();
                            aop.BuyerName = reader["BuyerName"].ToString();
                            aop.FabricName = reader["FabricName"].ToString();
                            aop.OrderNo = reader["OrderNo"].ToString();
                            aop.Color = reader["Color"].ToString();
                            aop.ChallanNo = reader["ChallanNo"].ToString();
                            aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            aop.FabricID = Convert.ToInt32(reader["FabricID"]);

                            aop.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            aop.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            aop.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            aop.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            aop.McDiaGauge = reader["McDiaGauge"].ToString();
                            aop.YarnCount = reader["YarnCount"].ToString();
                            aop.YarnBrand = reader["YarnBrand"].ToString();
                            aop.YarnLot = reader["YarnLot"].ToString();
                            aop.KnitUnit = reader["KnitUnit"].ToString();
                            aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            aop.McBrand = reader["McBrand"].ToString();
                            aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                            aop.BatchNo = reader["BatchNo"].ToString();
                            aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            aop.SoftenerName = Convert.ToString(reader["SoftenerName"]);

                            aop.StenterID = Convert.ToInt32(reader["StenterID"]);
                            aop.PrintID = Convert.ToInt32(reader["PrintType"]);
                            aop.PrintName = Convert.ToString(reader["SoftenerName"]);
                            aop.MachineID = Convert.ToInt32(reader["MachineType"]);
                            aop.MachineName = Convert.ToString(reader["SoftenerName"]);

                            aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            aop.CreateByName = reader["CreateByName"].ToString();
                            aop.UpdateByName = reader["UpdateByName"].ToString();
                            aop.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int ApproveAop(Aop aop)
        {
            int Id = -1;
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Aop SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + aop.ApprovedTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + aop.Id + " AND ApprovedStatus = 0 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM AopView WHERE Id = " + aop.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            aop.Id = Convert.ToInt32(reader["Id"]);
                            Id = aop.Id;
                            aop.BarCode = reader["BarCode"].ToString();
                            aop.BuyerName = reader["BuyerName"].ToString();
                            aop.FabricName = reader["FabricName"].ToString();
                            aop.OrderNo = reader["OrderNo"].ToString();
                            aop.Color = reader["Color"].ToString();
                            aop.ChallanNo = reader["ChallanNo"].ToString();
                            aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            aop.FabricID = Convert.ToInt32(reader["FabricID"]);

                            aop.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            aop.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            aop.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            aop.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            aop.McDiaGauge = reader["McDiaGauge"].ToString();
                            aop.YarnCount = reader["YarnCount"].ToString();
                            aop.YarnBrand = reader["YarnBrand"].ToString();
                            aop.YarnLot = reader["YarnLot"].ToString();
                            aop.KnitUnit = reader["KnitUnit"].ToString();
                            aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            aop.McBrand = reader["McBrand"].ToString();
                            aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                            aop.BatchNo = reader["BatchNo"].ToString();
                            aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            aop.SoftenerName = Convert.ToString(reader["SoftenerName"]);

                            aop.StenterID = Convert.ToInt32(reader["StenterID"]);
                            aop.PrintID = Convert.ToInt32(reader["PrintType"]);
                            aop.PrintName = Convert.ToString(reader["SoftenerName"]);
                            aop.MachineID = Convert.ToInt32(reader["MachineType"]);
                            aop.MachineName = Convert.ToString(reader["SoftenerName"]);

                            aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            aop.CreateByName = reader["CreateByName"].ToString();
                            aop.UpdateByName = reader["UpdateByName"].ToString();
                            aop.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int UnapproveAop(Aop aop)
        {
            int Id = -1;
            try
            {
                string query = " UPDATE Aop SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + aop.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM AopView WHERE Id = " + aop.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            aop.Id = Id = Convert.ToInt32(reader["Id"]);
                            Id = aop.Id;
                            aop.BarCode = reader["BarCode"].ToString();
                            aop.BuyerName = reader["BuyerName"].ToString();
                            aop.FabricName = reader["FabricName"].ToString();
                            aop.OrderNo = reader["OrderNo"].ToString();
                            aop.Color = reader["Color"].ToString();
                            aop.ChallanNo = reader["ChallanNo"].ToString();
                            aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            aop.FabricID = Convert.ToInt32(reader["FabricID"]);

                            aop.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            aop.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            aop.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            aop.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            aop.McDiaGauge = reader["McDiaGauge"].ToString();
                            aop.YarnCount = reader["YarnCount"].ToString();
                            aop.YarnBrand = reader["YarnBrand"].ToString();
                            aop.YarnLot = reader["YarnLot"].ToString();
                            aop.KnitUnit = reader["KnitUnit"].ToString();
                            aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            aop.McBrand = reader["McBrand"].ToString();
                            aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                            aop.BatchNo = reader["BatchNo"].ToString();
                            aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            aop.SoftenerName = Convert.ToString(reader["SoftenerName"]);

                            aop.StenterID = Convert.ToInt32(reader["StenterID"]);
                            aop.PrintID = Convert.ToInt32(reader["PrintType"]);
                            aop.PrintName = Convert.ToString(reader["SoftenerName"]);
                            aop.MachineID = Convert.ToInt32(reader["MachineType"]);
                            aop.MachineName = Convert.ToString(reader["SoftenerName"]);

                            aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            aop.CreateByName = reader["CreateByName"].ToString();
                            aop.UpdateByName = reader["UpdateByName"].ToString();
                            aop.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int EditAop(Aop aop)
        {
            int Id = -1;
            try
            {
                string GetUpdateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";

                string query = " UPDATE Aop SET PrintType = " + aop.PrintID + ", MachineType = '" + aop.MachineID + "', UpdateBy = (" + GetUpdateByQuery + "), UpdateTime = '" + aop.UpdateTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + aop.Id + " AND ApprovedStatus = 0";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM AopView WHERE Id = " + aop.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            aop.Id = Convert.ToInt32(reader["Id"]);
                            Id = aop.Id;
                            aop.BarCode = reader["BarCode"].ToString();
                            aop.BuyerName = reader["BuyerName"].ToString();
                            aop.FabricName = reader["FabricName"].ToString();
                            aop.OrderNo = reader["OrderNo"].ToString();
                            aop.Color = reader["Color"].ToString();
                            aop.ChallanNo = reader["ChallanNo"].ToString();
                            aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            aop.FabricID = Convert.ToInt32(reader["FabricID"]);

                            aop.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            aop.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            aop.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            aop.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            aop.McDiaGauge = reader["McDiaGauge"].ToString();
                            aop.YarnCount = reader["YarnCount"].ToString();
                            aop.YarnBrand = reader["YarnBrand"].ToString();
                            aop.YarnLot = reader["YarnLot"].ToString();
                            aop.KnitUnit = reader["KnitUnit"].ToString();
                            aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            aop.McBrand = reader["McBrand"].ToString();
                            aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                            aop.BatchNo = reader["BatchNo"].ToString();
                            aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            aop.SoftenerName = Convert.ToString(reader["SoftenerName"]);

                            aop.StenterID = Convert.ToInt32(reader["StenterID"]);
                            aop.PrintID = Convert.ToInt32(reader["PrintType"]);
                            aop.PrintName = Convert.ToString(reader["SoftenerName"]);
                            aop.MachineID = Convert.ToInt32(reader["MachineType"]);
                            aop.MachineName = Convert.ToString(reader["SoftenerName"]);

                            aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            aop.CreateByName = reader["CreateByName"].ToString();
                            aop.UpdateByName = reader["UpdateByName"].ToString();
                            aop.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int AddAop(Aop aop)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Aop (StenterID, BarCode, PrintType, MachineType, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + aop.StenterID + "," + aop.BarCode + "," + aop.PrintID + "," + aop.MachineID + "," + aop.ReviseStatus + ",'" + aop.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM AopView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            aop.Id = Convert.ToInt32(reader["Id"]);
                            Id = aop.Id;
                            aop.BuyerName = reader["BuyerName"].ToString();
                            aop.FabricName = reader["FabricName"].ToString();
                            aop.OrderNo = reader["OrderNo"].ToString();
                            aop.Color = reader["Color"].ToString();
                            aop.ChallanNo = reader["ChallanNo"].ToString();
                            aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            aop.FabricID = Convert.ToInt32(reader["FabricID"]);
                            aop.BarCode = reader["BarCode"].ToString();

                            aop.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            aop.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            aop.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            aop.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            aop.McDiaGauge = reader["McDiaGauge"].ToString();
                            aop.YarnCount = reader["YarnCount"].ToString();
                            aop.YarnBrand = reader["YarnBrand"].ToString();
                            aop.YarnLot = reader["YarnLot"].ToString();
                            aop.KnitUnit = reader["KnitUnit"].ToString();
                            aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            aop.McBrand = reader["McBrand"].ToString();
                            aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                            aop.BatchNo = reader["BatchNo"].ToString();
                            aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            aop.SoftenerName = Convert.ToString(reader["SoftenerName"]);

                            aop.StenterID = Convert.ToInt32(reader["StenterID"]);
                            aop.PrintID = Convert.ToInt32(reader["PrintType"]);
                            aop.PrintName = Convert.ToString(reader["PrintName"]);
                            aop.MachineID = Convert.ToInt32(reader["MachineType"]);
                            aop.MachineName = Convert.ToString(reader["MachineName"]);

                            aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            aop.CreateByName = reader["CreateByName"].ToString();
                            aop.UpdateByName = reader["UpdateByName"].ToString();
                            aop.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static bool DeleteAop(int Id)
        {
            try
            {
                string query = "DELETE FROM Aop WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Stenter> StenterSearch(Stenter stenterSearchObj)
        {
            stenters = new List<Stenter>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                stenters = new List<Stenter>();
                string query = "";
                query = GetStenterSearchQuery(stenterSearchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Stenter Stenter = new Stenter();

                            Stenter.Id = Convert.ToInt32(reader["Id"]);
                            Stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            Stenter.BuyerName = reader["BuyerName"].ToString();
                            Stenter.FabricName = reader["FabricName"].ToString();
                            Stenter.OrderNo = reader["OrderNo"].ToString();
                            Stenter.Color = reader["Color"].ToString();
                            Stenter.ChallanNo = reader["ChallanNo"].ToString();
                            Stenter.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            Stenter.FabricID = Convert.ToInt32(reader["FabricID"]);
                            Stenter.BarCode = reader["BarCode"].ToString();
                            Stenter.McDiaGauge = reader["McDiaGauge"].ToString();
                            Stenter.YarnCount = reader["YarnCount"].ToString();
                            Stenter.YarnBrand = reader["YarnBrand"].ToString();
                            Stenter.YarnLot = reader["YarnLot"].ToString();
                            Stenter.KnitUnit = reader["KnitUnit"].ToString();
                            Stenter.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            Stenter.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            Stenter.McBrand = reader["McBrand"].ToString();

                            Stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            Stenter.DyeingUnit = reader["DyeingUnitName"].ToString();
                            Stenter.BatchNo = reader["BatchNo"].ToString();
                            Stenter.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            Stenter.WidthSet = Convert.ToInt32(reader["WidthSet"]);
                            Stenter.OverFeed = Convert.ToInt32(reader["OverFeed"]);
                            Stenter.Temp = Convert.ToDecimal(reader["Temp"]);
                            Stenter.Speed = Convert.ToDecimal(reader["Speed"]);
                            Stenter.Peder = reader["Peder"].ToString();
                            Stenter.Blower = Convert.ToDecimal(reader["Blower"]);
                            Stenter.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            Stenter.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);
                            Stenter.SoftenerName = reader["SoftenerName"].ToString();
                            Stenter.DIA = Convert.ToInt32(reader["DIA"]);
                            Stenter.GSM = Convert.ToInt32(reader["GSM"]);

                            Stenter.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            Stenter.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            Stenter.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            Stenter.CreateByName = reader["CreateByName"].ToString();
                            Stenter.UpdateByName = reader["UpdateByName"].ToString();
                            Stenter.ApprovedByName = reader["ApprovedByName"].ToString();

                            Stenter.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            Stenter.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            stenters.Add(Stenter);
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
                stenters = new List<Stenter>();
            }
            finally
            {
                cn.Close();
            }

            return stenters;
        }

        internal static bool BarCodeAuthorization(int BarCode)
        {
            try
            {
                string query = "SELECT * FROM Aop WHERE BarCode = " + BarCode;
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

        internal static List<PrintType> GetPrintTypeList()
        {
            try
            {
                PrintTypes = new List<PrintType>();
                string query = "SELECT * FROM PrintUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        PrintType PrintType = new PrintType();
                        PrintType.Id = Convert.ToInt32(reader["Id"]);
                        PrintType.PrintName = reader["PrintName"].ToString();

                        PrintTypes.Add(PrintType);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return PrintTypes;
        }

        internal static int AddPrintType(PrintType printType)
        {
            int Id = -1;
            try
            {
                string query = "";
                query = printType.Id == 0 ? "INSERT INTO PrintUnit (PrintName) VALUES('" + printType.PrintName + "')" : "UPDATE PrintUnit SET PrintName = '" + printType.PrintName + "' WHERE Id = " + printType.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM PrintUnit order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Id = Convert.ToInt32(reader["Id"]);
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

        internal static bool DeletePrintType(int Id)
        {
            try
            {
                string query = "DELETE FROM PrintUnit WHERE Id = " + Id;
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

        internal static List<MachineType> GetMachineTypeList()
        {
            try
            {
                MachineTypes = new List<MachineType>();
                string query = "SELECT * FROM MachineUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType MachineType = new MachineType();
                        MachineType.Id = Convert.ToInt32(reader["Id"]);
                        //MachineType.MachineName = reader["MachineName"].ToString();

                        MachineTypes.Add(MachineType);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return MachineTypes;
        }

        internal static int AddMachineType(MachineType machineType)
        {
            int Id = -1;
            try
            {
                string query = "";
                //query = machineType.Id == 0 ? "INSERT INTO MachineUnit (MachineName) VALUES('" + machineType.MachineName + "')" : "UPDATE MachineUnit SET MachineName = '" + machineType.MachineName + "' WHERE Id = " + machineType.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM MachineUnit order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Id = Convert.ToInt32(reader["Id"]);
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

        internal static bool DeleteMachineType(int Id)
        {
            try
            {
                string query = "DELETE FROM MachineUnit WHERE Id = " + Id;
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

        public static string GetStenterSearchQuery(Stenter StenterSearchObj)
        {
            try
            {
                string query = "SELECT * FROM StenterView ";
                if (StenterSearchObj.BarCode != "" && StenterSearchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(StenterSearchObj.BarCode);
                }
                if (StenterSearchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + StenterSearchObj.BuyerID;
                }
                if (StenterSearchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + StenterSearchObj.FabricTypeID;
                }

                if (StenterSearchObj.DiaGaugeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DiaGaugeID = " + StenterSearchObj.DiaGaugeID;
                }
                if (StenterSearchObj.YarnCountID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnCountID = " + StenterSearchObj.YarnCountID;
                }

                if (StenterSearchObj.KnitUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " KnitUnitID = " + StenterSearchObj.KnitUnitID;
                }
                if (StenterSearchObj.McBrandID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrandID = " + StenterSearchObj.McBrandID;
                }

                if (StenterSearchObj.OrderNo != "" && StenterSearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + StenterSearchObj.OrderNo + "'";
                }
                if (StenterSearchObj.Color != "" && StenterSearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + StenterSearchObj.Color + "'";
                }
                if (StenterSearchObj.ChallanNo != "" && StenterSearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + StenterSearchObj.ChallanNo + "'";
                }
                if (StenterSearchObj.DeliveryDateStart != DateTime.MaxValue && StenterSearchObj.DeliveryDateEnd != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate BETWEEN '" + StenterSearchObj.DeliveryDateStart.ToString("yyyy/MM/dd HH:mm") + "' AND '" + StenterSearchObj.DeliveryDateEnd.ToString("yyyy/MM/dd HH:mm") + "'";
                }

                if (StenterSearchObj.YarnBrand != "" && StenterSearchObj.YarnBrand != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnBrand = '" + StenterSearchObj.YarnBrand + "'";
                }

                if (StenterSearchObj.YarnLot != "" && StenterSearchObj.YarnLot != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnLot = '" + StenterSearchObj.YarnLot + "'";
                }

                if (StenterSearchObj.GreyWidth != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyWidth = " + StenterSearchObj.GreyWidth;
                }

                if (StenterSearchObj.GreyGSM != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyGSM = " + StenterSearchObj.GreyGSM;
                }

                if (StenterSearchObj.DyeingUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DyeingUnitID = " + StenterSearchObj.DyeingUnitID;
                }

                if (StenterSearchObj.BatchNo != "" && StenterSearchObj.BatchNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BatchNo = '" + StenterSearchObj.BatchNo + "'";
                }

                if (StenterSearchObj.SoftenerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " SoftenerID = " + StenterSearchObj.SoftenerID;
                }

                if (StenterSearchObj.SoftenerGL != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " SoftenerGL = " + StenterSearchObj.SoftenerGL;
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
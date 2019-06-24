using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.DataAccessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TextileResearchDevelopment.BLL
{
    public class StenterBLL
    {
        public static List<Stenter> stenters = new List<Stenter>();
        public static List<Dyeing> dyeings = new List<Dyeing>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();
        public static List<SoftenerType> SoftenerTypes = new List<SoftenerType>();

        static string connectionStr = DBGateway.connectionString;

        internal static List<SoftenerType> GetSoftenerUnit()
        {
            try
            {
                SoftenerTypes = new List<SoftenerType>();
                string query = "SELECT * FROM SoftenerUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        SoftenerType SoftenerType = new SoftenerType();
                        SoftenerType.Id = Convert.ToInt32(reader["Id"]);
                        SoftenerType.Softener = reader["SoftenerName"].ToString();

                        SoftenerTypes.Add(SoftenerType);
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

            return SoftenerTypes;
        }

        internal static List<Stenter> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                stenters = new List<Stenter>();
                string query = "SELECT * FROM StenterView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Stenter Stenter = new Stenter();
                        Stenter.Id = Convert.ToInt32(reader["Id"]);
                        Stenter.DyeingID = Convert.ToInt32(reader["DyeingID"]);
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
                        Stenter.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                        Stenter.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        Stenter.WidthSet = Convert.ToInt32(reader["WidthSet"]);
                        Stenter.OverFeed = Convert.ToInt32(reader["OverFeed"]);
                        Stenter.Temp = Convert.ToDecimal(reader["Temp"]);
                        Stenter.Speed = Convert.ToInt32(reader["Speed"]);
                        Stenter.Peder = reader["Peder"].ToString();
                        Stenter.Blower = Convert.ToInt32(reader["Blower"]);
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

        internal static int AddStenter(Stenter stenter)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Stenter (DyeingID, BarCode, WidthSet, OverFeed, Temp, Speed, Peder, Blower, SoftenerID, SoftenerGL, DIA, GSM, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + stenter.DyeingID + "," + stenter.BarCode + "," + stenter.WidthSet + "," + stenter.OverFeed + "," + stenter.Temp + "," + stenter.Speed + ",'" + stenter.Peder + "'," + stenter.Blower + "," + stenter.SoftenerID + "," + stenter.SoftenerGL + "," + stenter.DIA + "," + stenter.GSM + "," + stenter.ReviseStatus + ",'" + stenter.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM StenterView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            stenter.Id = Id = Convert.ToInt32(reader["Id"]);
                            stenter.DyeingID = Convert.ToInt32(reader["DyeingID"]);
                            stenter.BuyerName = reader["BuyerName"].ToString();
                            stenter.FabricName = reader["FabricName"].ToString();
                            stenter.OrderNo = reader["OrderNo"].ToString();
                            stenter.Color = reader["Color"].ToString();
                            stenter.ChallanNo = reader["ChallanNo"].ToString();
                            stenter.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            stenter.FabricID = Convert.ToInt32(reader["FabricID"]);

                            stenter.BarCode = reader["BarCode"].ToString();

                            stenter.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            stenter.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            stenter.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            stenter.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            stenter.McDiaGauge = reader["McDiaGauge"].ToString();
                            stenter.YarnCount = reader["YarnCount"].ToString();
                            stenter.YarnBrand = reader["YarnBrand"].ToString();
                            stenter.YarnLot = reader["YarnLot"].ToString();
                            stenter.KnitUnit = reader["KnitUnit"].ToString();
                            stenter.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            stenter.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            stenter.McBrand = reader["McBrand"].ToString();
                            stenter.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            stenter.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            stenter.DyeingUnit = reader["DyeingUnitName"].ToString();
                            stenter.BatchNo = reader["BatchNo"].ToString();
                            stenter.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            stenter.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            stenter.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            stenter.SoftenerName = Convert.ToString(reader["SoftenerName"]);
                            stenter.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);

                            stenter.WidthSet = Convert.ToDecimal(reader["WidthSet"]);
                            stenter.OverFeed = Convert.ToDecimal(reader["OverFeed"]);
                            stenter.Temp = Convert.ToDecimal(reader["Temp"]);
                            stenter.Speed = Convert.ToDecimal(reader["Speed"]);
                            stenter.Peder = Convert.ToString(reader["Peder"]);
                            stenter.Blower = Convert.ToDecimal(reader["Blower"]);
                            stenter.DIA = Convert.ToDecimal(reader["DIA"]);
                            stenter.GSM = Convert.ToDecimal(reader["GSM"]);

                            stenter.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            stenter.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            stenter.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            stenter.CreateByName = reader["CreateByName"].ToString();
                            stenter.UpdateByName = reader["UpdateByName"].ToString();
                            stenter.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int EditStenter(Stenter stenter)
        {
            int Id = -1;
            try
            {
                string GetUpdateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";

                string query = " UPDATE Stenter SET WidthSet = " + stenter.WidthSet + ", OverFeed = '" + stenter.OverFeed + "', Temp = '" + stenter.Temp + "', Speed = '" + stenter.Speed + "', Peder = '" + stenter.Peder + "', Blower = '" + stenter.Blower + "',SoftenerID = '" + stenter.SoftenerID + "', SoftenerGL = '" + stenter.SoftenerGL + "', DIA = '" + stenter.DIA + "', GSM = '" + stenter.GSM + "', UpdateBy = (" + GetUpdateByQuery + "), UpdateTime = '" + stenter.UpdateTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + stenter.Id + " AND ApprovedStatus = 0";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM StenterView WHERE Id = " + stenter.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            stenter.Id = Id = Convert.ToInt32(reader["Id"]);
                            stenter.DyeingID = Convert.ToInt32(reader["DyeingID"]);
                            stenter.BuyerName = reader["BuyerName"].ToString();
                            stenter.FabricName = reader["FabricName"].ToString();
                            stenter.OrderNo = reader["OrderNo"].ToString();
                            stenter.Color = reader["Color"].ToString();
                            stenter.ChallanNo = reader["ChallanNo"].ToString();
                            stenter.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            stenter.FabricID = Convert.ToInt32(reader["FabricID"]);

                            stenter.BarCode = reader["BarCode"].ToString();

                            stenter.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            stenter.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            stenter.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            stenter.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            stenter.McDiaGauge = reader["McDiaGauge"].ToString();
                            stenter.YarnCount = reader["YarnCount"].ToString();
                            stenter.YarnBrand = reader["YarnBrand"].ToString();
                            stenter.YarnLot = reader["YarnLot"].ToString();
                            stenter.KnitUnit = reader["KnitUnit"].ToString();
                            stenter.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            stenter.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            stenter.McBrand = reader["McBrand"].ToString();
                            stenter.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            stenter.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            stenter.DyeingUnit = reader["DyeingUnitName"].ToString();
                            stenter.BatchNo = reader["BatchNo"].ToString();
                            stenter.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            stenter.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            stenter.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            stenter.SoftenerName = Convert.ToString(reader["SoftenerName"]);
                            stenter.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);

                            stenter.WidthSet = Convert.ToDecimal(reader["WidthSet"]);
                            stenter.OverFeed = Convert.ToDecimal(reader["OverFeed"]);
                            stenter.Temp = Convert.ToDecimal(reader["Temp"]);
                            stenter.Speed = Convert.ToDecimal(reader["Speed"]);
                            stenter.Peder = Convert.ToString(reader["Peder"]);
                            stenter.Blower = Convert.ToDecimal(reader["Blower"]);
                            stenter.DIA = Convert.ToDecimal(reader["DIA"]);
                            stenter.GSM = Convert.ToDecimal(reader["GSM"]);

                            stenter.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            stenter.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            stenter.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            stenter.CreateByName = reader["CreateByName"].ToString();
                            stenter.UpdateByName = reader["UpdateByName"].ToString();
                            stenter.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int ApproveStenter(Stenter stenter)
        {
            int Id = -1;
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Stenter SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + stenter.ApprovedTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + stenter.Id + " AND ApprovedBy = 0 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM StenterView WHERE Id = " + stenter.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            stenter.Id = Id = Convert.ToInt32(reader["Id"]);
                            stenter.DyeingID = Convert.ToInt32(reader["DyeingID"]);
                            stenter.BuyerName = reader["BuyerName"].ToString();
                            stenter.FabricName = reader["FabricName"].ToString();
                            stenter.OrderNo = reader["OrderNo"].ToString();
                            stenter.Color = reader["Color"].ToString();
                            stenter.ChallanNo = reader["ChallanNo"].ToString();
                            stenter.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            stenter.FabricID = Convert.ToInt32(reader["FabricID"]);

                            stenter.BarCode = reader["BarCode"].ToString();

                            stenter.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            stenter.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            stenter.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            stenter.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            stenter.McDiaGauge = reader["McDiaGauge"].ToString();
                            stenter.YarnCount = reader["YarnCount"].ToString();
                            stenter.YarnBrand = reader["YarnBrand"].ToString();
                            stenter.YarnLot = reader["YarnLot"].ToString();
                            stenter.KnitUnit = reader["KnitUnit"].ToString();
                            stenter.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            stenter.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            stenter.McBrand = reader["McBrand"].ToString();
                            stenter.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            stenter.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            stenter.DyeingUnit = reader["DyeingUnitName"].ToString();
                            stenter.BatchNo = reader["BatchNo"].ToString();
                            stenter.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            stenter.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            stenter.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            stenter.SoftenerName = Convert.ToString(reader["SoftenerName"]);
                            stenter.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);

                            stenter.WidthSet = Convert.ToDecimal(reader["WidthSet"]);
                            stenter.OverFeed = Convert.ToDecimal(reader["OverFeed"]);
                            stenter.Temp = Convert.ToDecimal(reader["Temp"]);
                            stenter.Speed = Convert.ToDecimal(reader["Speed"]);
                            stenter.Peder = Convert.ToString(reader["Peder"]);
                            stenter.Blower = Convert.ToDecimal(reader["Blower"]);
                            stenter.DIA = Convert.ToDecimal(reader["DIA"]);
                            stenter.GSM = Convert.ToDecimal(reader["GSM"]);

                            stenter.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            stenter.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            stenter.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            stenter.CreateByName = reader["CreateByName"].ToString();
                            stenter.UpdateByName = reader["UpdateByName"].ToString();
                            stenter.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int ReviseStenter(Stenter stenter)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT ReviseStatus FROM Stenter WHERE Id = " + stenter.Id;

                string query = " INSERT INTO Stenter (DyeingID, BarCode, WidthSet, OverFeed, Temp, Speed, Peder, Blower, SoftenerID, SoftenerGL, DIA, GSM, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + stenter.DyeingID + "," + stenter.BarCode + "," + stenter.WidthSet + "," + stenter.OverFeed + "," + stenter.Temp + "," + stenter.Speed + ",'" + stenter.Peder + "'," + stenter.Blower + "," + stenter.SoftenerID + "," + stenter.SoftenerGL + "," + stenter.DIA + "," + stenter.GSM + ", ((" + GetReviseQuery + ") +1),'" + stenter.CreateTime.ToString("yyyy/MM/dd HH:mm") + "', (" + GetCreateByQuery + "), 0, 0, 0 )";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM StenterView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            stenter.Id = Id = Convert.ToInt32(reader["Id"]);
                            stenter.DyeingID = Convert.ToInt32(reader["DyeingID"]);
                            stenter.BuyerName = reader["BuyerName"].ToString();
                            stenter.FabricName = reader["FabricName"].ToString();
                            stenter.OrderNo = reader["OrderNo"].ToString();
                            stenter.Color = reader["Color"].ToString();
                            stenter.ChallanNo = reader["ChallanNo"].ToString();
                            stenter.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            stenter.FabricID = Convert.ToInt32(reader["FabricID"]);

                            stenter.BarCode = reader["BarCode"].ToString();

                            stenter.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            stenter.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            stenter.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            stenter.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            stenter.McDiaGauge = reader["McDiaGauge"].ToString();
                            stenter.YarnCount = reader["YarnCount"].ToString();
                            stenter.YarnBrand = reader["YarnBrand"].ToString();
                            stenter.YarnLot = reader["YarnLot"].ToString();
                            stenter.KnitUnit = reader["KnitUnit"].ToString();
                            stenter.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            stenter.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            stenter.McBrand = reader["McBrand"].ToString();
                            stenter.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            stenter.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            stenter.DyeingUnit = reader["DyeingUnitName"].ToString();
                            stenter.BatchNo = reader["BatchNo"].ToString();
                            stenter.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            stenter.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            stenter.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            stenter.SoftenerName = Convert.ToString(reader["SoftenerName"]);
                            stenter.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);

                            stenter.WidthSet = Convert.ToDecimal(reader["WidthSet"]);
                            stenter.OverFeed = Convert.ToDecimal(reader["OverFeed"]);
                            stenter.Temp = Convert.ToDecimal(reader["Temp"]);
                            stenter.Speed = Convert.ToDecimal(reader["Speed"]);
                            stenter.Peder = Convert.ToString(reader["Peder"]);
                            stenter.Blower = Convert.ToDecimal(reader["Blower"]);
                            stenter.DIA = Convert.ToDecimal(reader["DIA"]);
                            stenter.GSM = Convert.ToDecimal(reader["GSM"]);

                            stenter.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            stenter.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            stenter.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            stenter.CreateByName = reader["CreateByName"].ToString();
                            stenter.UpdateByName = reader["UpdateByName"].ToString();
                            stenter.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static bool DeleteStenter(int Id)
        {
            try
            {
                string query = "DELETE FROM Stenter WHERE Id = " + Id + " AND ApprovedBy = 0";
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

        internal static List<Dyeing> DyeingSearch(Dyeing dyeingSearchObj)
        {
            dyeings = new List<Dyeing>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                dyeings = new List<Dyeing>();
                string query = "";
                query = GetStenterSearchQuery(dyeingSearchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Dyeing dyeing = new Dyeing();

                            dyeing.Id = Convert.ToInt32(reader["Id"]);
                            dyeing.BuyerName = reader["BuyerName"].ToString();
                            dyeing.FabricName = reader["FabricName"].ToString();
                            dyeing.OrderNo = reader["OrderNo"].ToString();
                            dyeing.Color = reader["Color"].ToString();
                            dyeing.ChallanNo = reader["ChallanNo"].ToString();
                            dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
                            dyeing.KnitID = Convert.ToInt32(reader["KnitID"]);

                            dyeing.BarCode = reader["BarCode"].ToString();

                            dyeing.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            dyeing.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            dyeing.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            dyeing.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            dyeing.McDiaGauge = reader["McDiaGauge"].ToString();
                            dyeing.YarnCount = reader["YarnCount"].ToString();
                            dyeing.YarnBrand = reader["YarnBrand"].ToString();
                            dyeing.YarnLot = reader["YarnLot"].ToString();
                            dyeing.KnitUnit = reader["KnitUnit"].ToString();
                            dyeing.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            dyeing.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            dyeing.McBrand = reader["McBrand"].ToString();
                            dyeing.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            dyeing.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            dyeing.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            dyeing.DyeingUnit = reader["DyeingUnitName"].ToString();
                            dyeing.BatchNo = reader["BatchNo"].ToString();
                            dyeing.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            dyeing.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            dyeing.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            dyeing.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            dyeing.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            dyeing.CreateByName = reader["CreateByName"].ToString();
                            dyeing.UpdateByName = reader["UpdateByName"].ToString();
                            dyeing.ApprovedByName = reader["ApprovedByName"].ToString();

                            dyeings.Add(dyeing);
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
                dyeings = new List<Dyeing>();
            }
            finally
            {
                cn.Close();
            }

            return dyeings;
        }

        internal static int AddSoftenerType(SoftenerType softenerType)
        {
            int Id = -1;
            try
            {
                string query = "";
                query = softenerType.Id == 0 ? "INSERT INTO SoftenerUnit (SoftenerName) VALUES('" + softenerType.Softener + "')" : "UPDATE SoftenerUnit SET SoftenerName = '" + softenerType.Softener + "' WHERE Id = " + softenerType.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM SoftenerUnit order by Id desc";
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

        internal static bool DeleteSoftenerType(int Id)
        {
            try
            {
                string query = "DELETE FROM SoftenerUnit WHERE Id = " + Id;
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

        public static string GetStenterSearchQuery(Dyeing dyeingSearchObj)
        {
            try
            {
                string query = "SELECT * FROM DyeingView ";
                if (dyeingSearchObj.BarCode != "" && dyeingSearchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(dyeingSearchObj.BarCode);
                }
                if (dyeingSearchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + dyeingSearchObj.BuyerID;
                }
                if (dyeingSearchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + dyeingSearchObj.FabricTypeID;
                }

                if (dyeingSearchObj.DiaGaugeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DiaGaugeID = " + dyeingSearchObj.DiaGaugeID;
                }
                if (dyeingSearchObj.YarnCountID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnCountID = " + dyeingSearchObj.YarnCountID;
                }

                if (dyeingSearchObj.KnitUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " KnitUnitID = " + dyeingSearchObj.KnitUnitID;
                }
                if (dyeingSearchObj.McBrandID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrandID = " + dyeingSearchObj.McBrandID;
                }

                if (dyeingSearchObj.OrderNo != "" && dyeingSearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + dyeingSearchObj.OrderNo + "'";
                }
                if (dyeingSearchObj.Color != "" && dyeingSearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + dyeingSearchObj.Color + "'";
                }
                if (dyeingSearchObj.ChallanNo != "" && dyeingSearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + dyeingSearchObj.ChallanNo + "'";
                }
                if (dyeingSearchObj.DeliveryDate != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate = '" + dyeingSearchObj.DeliveryDate + "'";
                }

                if (dyeingSearchObj.CreateTime != DateTime.MaxValue && dyeingSearchObj.CreateTime != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " CreateTime = '" + dyeingSearchObj.CreateTime + "'";
                }

                if (dyeingSearchObj.YarnBrand != "" && dyeingSearchObj.YarnBrand != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnBrand = '" + dyeingSearchObj.YarnBrand + "'";
                }

                if (dyeingSearchObj.YarnLot != "" && dyeingSearchObj.YarnLot != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnLot = '" + dyeingSearchObj.YarnLot + "'";
                }

                if (dyeingSearchObj.GreyWidth != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyWidth = " + dyeingSearchObj.GreyWidth;
                }

                if (dyeingSearchObj.GreyGSM != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyGSM = " + dyeingSearchObj.GreyGSM;
                }

                if (dyeingSearchObj.DyeingUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DyeingUnitID = " + dyeingSearchObj.DyeingUnitID;
                }

                if (dyeingSearchObj.BatchNo != "" && dyeingSearchObj.BatchNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BatchNo = '" + dyeingSearchObj.BatchNo + "'";
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
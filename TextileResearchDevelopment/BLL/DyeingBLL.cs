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
    public class DyeingBLL
    {
        public static List<Knitting> knittings = new List<Knitting>();
        public static List<Dyeing> dyeings = new List<Dyeing>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();

        internal static List<DyeingUnitType> GetDyeingUnit()
        {
            try
            {
                DyeingUnitTypes = new List<DyeingUnitType>();
                string query = "SELECT * FROM DyeingUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        DyeingUnitType deingUnitType = new DyeingUnitType();
                        deingUnitType.Id = Convert.ToInt32(reader["Id"]);
                        deingUnitType.DyeingUnit = reader["DyeingUnitName"].ToString();

                        DyeingUnitTypes.Add(deingUnitType);
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

            return DyeingUnitTypes;
        }

        internal static int AddDyeing(Dyeing dyeing)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Dyeing (FabricID, KnitID, BarCode, DyeingUnitID, BatchNo, BatchQty, SerialNo, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + dyeing.FabricID + "," + dyeing.KnitID + "," + dyeing.BarCode + "," + dyeing.DyeingUnitID + ",'" + dyeing.BatchNo + "'," + dyeing.BatchQty + "," + dyeing.SerialNo + "," + dyeing.ReviseStatus + ",'" + dyeing.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DyeingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing.Id = Id = Convert.ToInt32(reader["KnitId"]);
                            dyeing.BuyerName = reader["BuyerName"].ToString();
                            dyeing.FabricName = reader["FabricName"].ToString();
                            dyeing.OrderNo = reader["OrderNo"].ToString();
                            dyeing.Color = reader["Color"].ToString();
                            dyeing.ChallanNo = reader["ChallanNo"].ToString();
                            dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);

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

        internal static bool DeleteDyeing(int Id)
        {
            try
            {
                string query = "DELETE FROM Dyeing WHERE Id = " + Id + " AND ApprovedBy = 0";
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

        internal static int ReviseDyeing(Dyeing dyeing)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT ReviseStatus FROM Dyeing WHERE Id = " + dyeing.Id;
                string GetknitID = "SELECT KnitID FROM Dyeing WHERE Id = " + dyeing.Id;
                string query = " INSERT INTO Dyeing (FabricID, KnitID, BarCode, DyeingUnitID, BatchNo, BatchQty, SerialNo, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + dyeing.FabricID + ",(" + GetknitID + ")," + dyeing.BarCode + "," + dyeing.DyeingUnitID + ",'" + dyeing.BatchNo + "'," + dyeing.BatchQty + "," + dyeing.SerialNo + ",((" + GetReviseQuery + ") + 1),'" + dyeing.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DyeingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing.Id = Id = Convert.ToInt32(reader["Id"]);
                            dyeing.BuyerName = reader["BuyerName"].ToString();
                            dyeing.FabricName = reader["FabricName"].ToString();
                            dyeing.OrderNo = reader["OrderNo"].ToString();
                            dyeing.Color = reader["Color"].ToString();
                            dyeing.ChallanNo = reader["ChallanNo"].ToString();
                            dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
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

        internal static int UnapproveDyeing(Dyeing dyeing)
        {
            int Id = -1;
            try
            {
                string query = " UPDATE Dyeing SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + dyeing.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM DyeingView WHERE Id = " + dyeing.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing.Id = Id = Convert.ToInt32(reader["Id"]);
                            dyeing.BuyerName = reader["BuyerName"].ToString();
                            dyeing.FabricName = reader["FabricName"].ToString();
                            dyeing.OrderNo = reader["OrderNo"].ToString();
                            dyeing.Color = reader["Color"].ToString();
                            dyeing.ChallanNo = reader["ChallanNo"].ToString();
                            dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
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

        internal static int ApproveDyeing(Dyeing dyeing)
        {
            int Id = -1;
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Dyeing SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + dyeing.ApprovedTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + dyeing.Id + " AND ApprovedBy = 0 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM DyeingView WHERE Id = " + dyeing.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing.Id = Id = Convert.ToInt32(reader["Id"]);
                            dyeing.BuyerName = reader["BuyerName"].ToString();
                            dyeing.FabricName = reader["FabricName"].ToString();
                            dyeing.OrderNo = reader["OrderNo"].ToString();
                            dyeing.Color = reader["Color"].ToString();
                            dyeing.ChallanNo = reader["ChallanNo"].ToString();
                            dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
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

        internal static int EditDyeing(Dyeing dyeing)
        {
            int Id = -1;
            try
            {
                string GetUpdateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Dyeing SET DyeingUnitID = " + dyeing.DyeingUnitID + ", BatchNo = '" + dyeing.BatchNo + "', BatchQty = " + dyeing.BatchQty + ", SerialNo = " + dyeing.SerialNo + ", UpdateBy = (" + GetUpdateByQuery + "), UpdateTime = '" + dyeing.UpdateTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + dyeing.Id + " AND ApprovedStatus = 0";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM DyeingView WHERE Id = " + dyeing.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing.Id = Id = Convert.ToInt32(reader["Id"]);
                            dyeing.BuyerName = reader["BuyerName"].ToString();
                            dyeing.FabricName = reader["FabricName"].ToString();
                            dyeing.OrderNo = reader["OrderNo"].ToString();
                            dyeing.Color = reader["Color"].ToString();
                            dyeing.ChallanNo = reader["ChallanNo"].ToString();
                            dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
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
                string query = "SELECT * FROM Dyeing WHERE BarCode = " + BarCode;
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

        internal static List<DyeingUnitType> GetDyeingUnitList()
        {
            try
            {
                DyeingUnitTypes = new List<DyeingUnitType>();
                string query = "SELECT * FROM DyeingUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        DyeingUnitType DyeingUnit = new DyeingUnitType();
                        DyeingUnit.Id = Convert.ToInt32(reader["Id"]);
                        DyeingUnit.DyeingUnit = reader["DyeingUnitName"].ToString();

                        DyeingUnitTypes.Add(DyeingUnit);
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

            return DyeingUnitTypes;
        }

        internal static int AddDyeingUnit(DyeingUnitType dyeing)
        {
            int Id = -1;
            try
            {
                string query = "";
                query = dyeing.Id == 0 ? "INSERT INTO DyeingUnit (DyeingUnitName) VALUES('" + dyeing.DyeingUnit + "')" : "UPDATE DyeingUnit SET DyeingUnitName = '" + dyeing.DyeingUnit + "' WHERE Id = " + dyeing.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM DyeingUnit order by Id desc";
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

        public static List<KnitUnitType> KnitUnits = new List<KnitUnitType>();
        public static List<McBrandType> McBrands = new List<McBrandType>();

        static string connectionStr = DBGateway.connectionString;

        public static List<Knitting> KnitSearch(Knitting knitSearchObj)
        {
            knittings = new List<Knitting>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                knittings = new List<Knitting>();
                string query = "";
                query = GetknitSearchQuery(knitSearchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Knitting knitting = new Knitting();
                            knitting.Id = Convert.ToInt32(reader["KnitId"]);
                            knitting.FabricID = Convert.ToInt32(reader["FabricID"]);
                            knitting.BarCode = reader["BarCode"].ToString();
                            knitting.BuyerName = reader["BuyerName"].ToString();
                            knitting.FabricName = reader["FabricName"].ToString();
                            knitting.OrderNo = reader["OrderNo"].ToString();
                            knitting.Color = reader["Color"].ToString();
                            knitting.ChallanNo = reader["ChallanNo"].ToString();

                            knitting.McDiaGauge = reader["McDiaGauge"].ToString();
                            knitting.YarnCount = reader["YarnCount"].ToString();
                            knitting.YarnBrand = reader["YarnBrand"].ToString();
                            knitting.YarnLot = reader["YarnLot"].ToString();
                            knitting.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            knitting.KnitUnit = reader["KnitUnit"].ToString();
                            knitting.MCNO = Convert.ToInt32(reader["MCNO"]);
                            knitting.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            knitting.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            knitting.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            knitting.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            knitting.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            knitting.McBrand = reader["McBrand"].ToString();
                            knitting.CreateTime = Convert.ToDateTime(reader["CreateTime"]);

                            knittings.Add(knitting);
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
                knittings = new List<Knitting>();
            }
            finally
            {
                cn.Close();
            }

            return knittings;
        }

        internal static bool DeleteDyeingUnit(int Id)
        {
            try
            {
                string query = "DELETE FROM DyeingUnit WHERE Id = " + Id;
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

        internal static List<Dyeing> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                dyeings = new List<Dyeing>();
                string query = "SELECT * FROM DyeingView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Dyeing dyeing = new Dyeing();
                        dyeing.Id = Convert.ToInt32(reader["Id"]);
                        dyeing.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        dyeing.BuyerName = reader["BuyerName"].ToString();
                        dyeing.FabricName = reader["FabricName"].ToString();
                        dyeing.OrderNo = reader["OrderNo"].ToString();
                        dyeing.Color = reader["Color"].ToString();
                        dyeing.ChallanNo = reader["ChallanNo"].ToString();
                        dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
                        dyeing.BarCode = reader["BarCode"].ToString();
                        dyeing.McDiaGauge = reader["McDiaGauge"].ToString();
                        dyeing.YarnCount = reader["YarnCount"].ToString();
                        dyeing.YarnBrand = reader["YarnBrand"].ToString();
                        dyeing.YarnLot = reader["YarnLot"].ToString();
                        dyeing.KnitUnit = reader["KnitUnit"].ToString();
                        dyeing.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        dyeing.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        dyeing.McBrand = reader["McBrand"].ToString();

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

                        dyeing.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        dyeing.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                        dyeings.Add(dyeing);
                    }
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

        public static string GetknitSearchQuery(Knitting knitSearchObj)
        {
            try
            {
                string query = "SELECT * FROM KnitView ";
                if (knitSearchObj.BarCode != "" && knitSearchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(knitSearchObj.BarCode);
                }
                if (knitSearchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + knitSearchObj.BuyerID;
                }
                if (knitSearchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + knitSearchObj.FabricTypeID;
                }

                if (knitSearchObj.DiaGaugeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DiaGaugeID = " + knitSearchObj.DiaGaugeID;
                }
                if (knitSearchObj.YarnCountID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnCountID = " + knitSearchObj.YarnCountID;
                }

                if (knitSearchObj.KnitUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " KnitUnitID = " + knitSearchObj.KnitUnitID;
                }
                if (knitSearchObj.McBrandID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrandID = " + knitSearchObj.McBrandID;
                }

                if (knitSearchObj.OrderNo != "" && knitSearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + knitSearchObj.OrderNo + "'";
                }
                if (knitSearchObj.Color != "" && knitSearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + knitSearchObj.Color + "'";
                }
                if (knitSearchObj.ChallanNo != "" && knitSearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + knitSearchObj.ChallanNo + "'";
                }
                if (knitSearchObj.DeliveryDateStart != DateTime.MaxValue && knitSearchObj.DeliveryDateEnd != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate BETWEEN '" + knitSearchObj.DeliveryDateStart.ToString("yyyy/MM/dd HH:mm") + "' AND '" + knitSearchObj.DeliveryDateEnd.ToString("yyyy/MM/dd HH:mm") + "'";
                }
                if (knitSearchObj.YarnBrand != "" && knitSearchObj.YarnBrand != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnBrand = '" + knitSearchObj.YarnBrand + "'";
                }

                if (knitSearchObj.YarnLot != "" && knitSearchObj.YarnLot != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnLot = '" + knitSearchObj.YarnLot + "'";
                }

                if (knitSearchObj.GreyWidth != (decimal)0.00 && knitSearchObj.GreyWidth != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyWidth = " + knitSearchObj.GreyWidth;
                }

                if (knitSearchObj.GreyGSM != (decimal)0.00 && knitSearchObj.GreyGSM != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyGSM = " + knitSearchObj.GreyGSM;
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
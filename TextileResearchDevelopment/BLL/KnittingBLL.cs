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
    public class KnittingBLL
    {
        public static List<Knitting> knittings = new List<Knitting>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<KnitUnitType> KnitUnits = new List<KnitUnitType>();
        public static List<McBrandType> McBrands = new List<McBrandType>();

        public static List<Fabric> fabrics = new List<Fabric>();

        static string connectionStr = DBGateway.connectionString;

        public static List<Fabric> FabricSearch(Fabric fabricearchObj)
        {
            fabrics = new List<Fabric>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                string query = "";
                query = GetfabricearchQuery(fabricearchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Fabric fabric = new Fabric();
                            fabric.BuyerName = reader["BuyerName"].ToString();
                            fabric.Id = Convert.ToInt32(reader["Id"]);
                            fabric.FabricType = reader["FabricName"].ToString();
                            fabric.BarCode = reader["Barcode"].ToString();
                            fabric.OrderNo = reader["OrderNo"].ToString();
                            fabric.Color = reader["Color"].ToString();
                            fabric.Note = reader["Note"].ToString();
                            fabric.Width = reader["Width"].ToString();
                            fabric.GSM = Convert.ToInt32(reader["GSM"]);
                            fabric.Status = reader["LabdipStatus"].ToString();
                            fabric.ChallanNo = reader["ChallanNo"].ToString();
                            fabric.DeliveryQty = Convert.ToDecimal(reader["DeliveryQty"]);
                            fabric.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"].ToString());

                            fabrics.Add(fabric);
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
                fabrics = new List<Fabric>();
            }
            finally
            {
                cn.Close();
            }

            return fabrics;
        }

        internal static List<string> GetMatchingData(string text, string Col)
        {
            List<string> matchingList = new List<string>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                string query = "SELECT " + Col + " FROM Knitting WHERE " + Col + " LIKE '%" + text + "%'";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        matchingList.Add(reader[Col].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                cn.Close();
            }

            return matchingList;
        }

        internal static int AddKnit(Knitting knit)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Knitting (FabricID, MCNOID, YarnCountID, YarnBrand, YarnLot, StitchLength, KnitUnitID, MCNO, MCRPM, GreyWidth, GreyGSM, TumbleWidth, TumbleGSM, McBrandID, ReviseStatus, ApprovedStatus, CreateBy, CreateTime, BarCode, ApprovedBy, UpdateBy) " +
                               " VALUES(" + knit.FabricID + "," + knit.DiaGaugeID + "," + knit.YarnCountID + ",'" + knit.YarnBrand + "','" + knit.YarnLot + "'," + knit.StitchLength + "," + knit.KnitUnitID + "," + knit.MCNO + "," + knit.MCRPM + "," + knit.GreyWidth + "," + knit.GreyGSM + "," + knit.TumbleWidth + "," + knit.TumbleGSM + "," + knit.McBrandID + "," + knit.ReviseStatus + "," + knit.ApprovedStatus + ", (" + GetCreateByQuery + "), '" + knit.CreateTime.ToString("yyyy/MM/dd HH:mm") + "'," + knit.BarCode + ", 0, 0)";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM KnitView order by KnitId desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit.Id = Convert.ToInt32(reader["KnitId"]);
                            Id = knit.Id;
                            knit.BuyerName = reader["BuyerName"].ToString();
                            knit.FabricName = reader["FabricName"].ToString();
                            knit.OrderNo = reader["OrderNo"].ToString();
                            knit.Color = reader["Color"].ToString();
                            knit.ChallanNo = reader["ChallanNo"].ToString();
                            knit.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                            knit.BarCode = reader["BarCode"].ToString();

                            knit.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            knit.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            knit.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            knit.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            knit.McDiaGauge = reader["McDiaGauge"].ToString();
                            knit.YarnCount = reader["YarnCount"].ToString();
                            knit.YarnBrand = reader["YarnBrand"].ToString();
                            knit.YarnLot = reader["YarnLot"].ToString();
                            knit.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            knit.KnitUnit = reader["KnitUnit"].ToString();
                            knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                            knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            knit.McBrand = reader["McBrand"].ToString();
                            knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            knit.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            knit.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            knit.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            knit.CreateByName = reader["CreateByName"].ToString();
                            knit.UpdateByName = reader["UpdateByName"].ToString();
                            knit.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static bool DeleteMCDIA(int Id)
        {
            try
            {
                string query = "DELETE FROM McDia WHERE Id = " + Id;
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

        internal static Boolean DeleteYarnCount(int Id)
        {
            try
            {
                string query = "DELETE FROM YarnCount WHERE Id = " + Id;
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

        internal static bool DeleteBrand(int Id)
        {
            try
            {
                string query = "DELETE FROM McBrand WHERE Id = " + Id;
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

        internal static bool DeleteKnitUnit(int Id)
        {
            try
            {
                string query = "DELETE FROM KnitUnit WHERE Id = " + Id;
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

        internal static int ApproveKnit(Knitting knit)
        {
            int Id = -1;
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Knitting SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + knit.ApprovedTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + knit.Id + " AND ApprovedStatus = 0 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM KnitView WHERE KnitId = " + knit.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit.Id = Convert.ToInt32(reader["KnitId"]);
                            Id = knit.Id;
                            knit.BuyerName = reader["BuyerName"].ToString();
                            knit.FabricName = reader["FabricName"].ToString();
                            knit.OrderNo = reader["OrderNo"].ToString();
                            knit.Color = reader["Color"].ToString();
                            knit.ChallanNo = reader["ChallanNo"].ToString();
                            knit.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                            knit.BarCode = reader["BarCode"].ToString();

                            knit.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            knit.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            knit.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            knit.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            knit.McDiaGauge = reader["McDiaGauge"].ToString();
                            knit.YarnCount = reader["YarnCount"].ToString();
                            knit.YarnBrand = reader["YarnBrand"].ToString();
                            knit.YarnLot = reader["YarnLot"].ToString();
                            knit.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            knit.KnitUnit = reader["KnitUnit"].ToString();
                            knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                            knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            knit.McBrand = reader["McBrand"].ToString();
                            knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            knit.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            knit.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            knit.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            knit.CreateByName = reader["CreateByName"].ToString();
                            knit.UpdateByName = reader["UpdateByName"].ToString();
                            knit.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static int UnapproveKnit(Knitting knit)
        {
            int Id = -1;
            try
            {
                string query = " UPDATE Knitting SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + knit.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM KnitView WHERE KnitId = " + knit.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit.Id = Id = Convert.ToInt32(reader["KnitId"]);
                            Id = knit.Id;
                            knit.BuyerName = reader["BuyerName"].ToString();
                            knit.FabricName = reader["FabricName"].ToString();
                            knit.OrderNo = reader["OrderNo"].ToString();
                            knit.Color = reader["Color"].ToString();
                            knit.ChallanNo = reader["ChallanNo"].ToString();
                            knit.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                            knit.BarCode = reader["BarCode"].ToString();

                            knit.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            knit.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            knit.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            knit.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            knit.McDiaGauge = reader["McDiaGauge"].ToString();
                            knit.YarnCount = reader["YarnCount"].ToString();
                            knit.YarnBrand = reader["YarnBrand"].ToString();
                            knit.YarnLot = reader["YarnLot"].ToString();
                            knit.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            knit.KnitUnit = reader["KnitUnit"].ToString();
                            knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                            knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            knit.McBrand = reader["McBrand"].ToString();
                            knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            knit.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            knit.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            knit.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            knit.CreateByName = reader["CreateByName"].ToString();
                            knit.UpdateByName = reader["UpdateByName"].ToString();
                            knit.ApprovedByName = reader["ApprovedByName"].ToString();
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
                string query = "SELECT * FROM Knitting WHERE BarCode = "+ BarCode;
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

        internal static int EditKnit(Knitting knit)
        {
            int Id = -1;
            try
            {
                string GetUpdateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Knitting SET DiaGaugeID = " + knit.DiaGaugeID + ", YarnCountID = " + knit.YarnCountID + ", YarnBrand = '" + knit.YarnBrand + "', YarnLot = '" + knit.YarnLot + "', StitchLength = " + knit.StitchLength + ", KnitUnitID = " + knit.KnitUnitID + ", MCNO = " + knit.MCNO + ", MCRPM = " + knit.MCRPM + ", GreyWidth = " + knit.GreyWidth + ", GreyGSM = " + knit.GreyGSM + ", TumbleWidth = " + knit.TumbleWidth + ", TumbleGSM = " + knit.TumbleGSM + ", McBrandID = " + knit.McBrandID + ", UpdateBy = (" + GetUpdateByQuery + "), UpdateTime = '" + knit.UpdateTime?.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + knit.Id + " AND ApprovedStatus = 0";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM KnitView WHERE KnitId = " + knit.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit.Id = Convert.ToInt32(reader["KnitId"]);
                            Id = knit.Id;
                            knit.BuyerName = reader["BuyerName"].ToString();
                            knit.FabricName = reader["FabricName"].ToString();
                            knit.OrderNo = reader["OrderNo"].ToString();
                            knit.Color = reader["Color"].ToString();
                            knit.ChallanNo = reader["ChallanNo"].ToString();
                            knit.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                            knit.BarCode = reader["BarCode"].ToString();

                            knit.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            knit.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            knit.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            knit.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            knit.McDiaGauge = reader["McDiaGauge"].ToString();
                            knit.YarnCount = reader["YarnCount"].ToString();
                            knit.YarnBrand = reader["YarnBrand"].ToString();
                            knit.YarnLot = reader["YarnLot"].ToString();
                            knit.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            knit.KnitUnit = reader["KnitUnit"].ToString();
                            knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                            knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            knit.McBrand = reader["McBrand"].ToString();
                            knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            knit.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            knit.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            knit.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            knit.CreateByName = reader["CreateByName"].ToString();
                            knit.UpdateByName = reader["UpdateByName"].ToString();
                            knit.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static bool DeleteKnit(int Id)
        {
            try
            {
                string query = "DELETE FROM Knitting WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static int ReviseKnit(Knitting knit)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM Knitting WHERE BarCode = '" + knit.BarCode + "'";

                string query = " INSERT INTO Knitting (FabricID, DiaGaugeID, YarnCountID, YarnBrand, YarnLot, StitchLength, KnitUnitID, MCNO, MCRPM, GreyWidth, GreyGSM, TumbleWidth, TumbleGSM, McBrandID, ReviseStatus, ApprovedStatus, CreateBy, CreateTime, BarCode, ApprovedBy, UpdateBy) " +
                               " VALUES(" + knit.FabricID + "," + knit.DiaGaugeID + "," + knit.YarnCountID + ",'" + knit.YarnBrand + "','" + knit.YarnLot + "'," + knit.StitchLength + "," + knit.KnitUnitID + "," + knit.MCNO + "," + knit.MCRPM + "," + knit.GreyWidth + "," + knit.GreyGSM + "," + knit.TumbleWidth + "," + knit.TumbleGSM + "," + knit.McBrandID + ",((" + GetReviseQuery + ") + 1)," + knit.ApprovedStatus + ", (" + GetCreateByQuery + "), '" + knit.CreateTime.ToString("yyyy/MM/dd HH:mm") + "'," + knit.BarCode + ", 0, 0)";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM KnitView order by KnitId desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit.Id = Convert.ToInt32(reader["KnitId"]);
                            Id = knit.Id;
                            knit.BuyerName = reader["BuyerName"].ToString();
                            knit.FabricName = reader["FabricName"].ToString();
                            knit.OrderNo = reader["OrderNo"].ToString();
                            knit.Color = reader["Color"].ToString();
                            knit.ChallanNo = reader["ChallanNo"].ToString();
                            knit.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                            knit.BarCode = reader["BarCode"].ToString();

                            knit.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            knit.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            knit.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            knit.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            knit.McDiaGauge = reader["McDiaGauge"].ToString();
                            knit.YarnCount = reader["YarnCount"].ToString();
                            knit.YarnBrand = reader["YarnBrand"].ToString();
                            knit.YarnLot = reader["YarnLot"].ToString();
                            knit.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            knit.KnitUnit = reader["KnitUnit"].ToString();
                            knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                            knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            knit.McBrand = reader["McBrand"].ToString();
                            knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            knit.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            knit.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            knit.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            knit.CreateByName = reader["CreateByName"].ToString();
                            knit.UpdateByName = reader["UpdateByName"].ToString();
                            knit.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static List<Knitting> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                knittings = new List<Knitting>();
                string query = "SELECT * FROM KnitView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Knitting knit = new Knitting();
                        knit.Id = Convert.ToInt32(reader["KnitId"]);
                        knit.BuyerName = reader["BuyerName"].ToString();
                        knit.FabricName = reader["FabricName"].ToString();
                        knit.OrderNo = reader["OrderNo"].ToString();
                        knit.Color = reader["Color"].ToString();
                        knit.ChallanNo = reader["ChallanNo"].ToString();
                        knit.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                        knit.BarCode = reader["BarCode"].ToString();

                        knit.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                        knit.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                        knit.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                        knit.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                        knit.McDiaGauge = reader["McDiaGauge"].ToString();
                        knit.YarnCount = reader["YarnCount"].ToString();
                        knit.YarnBrand = reader["YarnBrand"].ToString();
                        knit.YarnLot = reader["YarnLot"].ToString();
                        knit.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                        knit.KnitUnit = reader["KnitUnit"].ToString();
                        knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                        knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                        knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                        knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                        knit.McBrand = reader["McBrand"].ToString();
                        knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                        knit.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                        knit.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                        knit.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                        knit.CreateByName = reader["CreateByName"].ToString();
                        knit.UpdateByName = reader["UpdateByName"].ToString();
                        knit.ApprovedByName = reader["ApprovedByName"].ToString();

                        knittings.Add(knit);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                cn.Close();
            }

            return knittings;
        }

        public static string GetfabricearchQuery(Fabric fabricearchObj)
        {
            try
            {
                string query = "SELECT * FROM FabricView ";
                if (fabricearchObj.BarCode != "" && fabricearchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(fabricearchObj.BarCode);
                }
                if (fabricearchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + fabricearchObj.BuyerID;
                }
                if (fabricearchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + fabricearchObj.FabricTypeID;
                }
                if (fabricearchObj.OrderNo != "" && fabricearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + fabricearchObj.OrderNo + "'";
                }
                if (fabricearchObj.Color != "" && fabricearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + fabricearchObj.Color + "'";
                }
                if (fabricearchObj.ChallanNo != "" && fabricearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + fabricearchObj.ChallanNo + "'";
                }
                if (fabricearchObj.DeliveryDateStart != DateTime.MaxValue && fabricearchObj.DeliveryDateEnd != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate BETWEEN '" + fabricearchObj.DeliveryDateStart.ToString("yyyy/MM/dd HH:mm") + "' AND '" + fabricearchObj.DeliveryDateEnd.ToString("yyyy/MM/dd HH:mm") + "'";
                }

                return query;
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        public static int AddMCDIA(McDiaGaugeType dia)
        {
            int Id = -1;
            try
            {
                string query = "";
                query = dia.Id == 0 ? "INSERT INTO McDia (McDiaGauge, MCNO, McBrand) VALUES('" + dia.McDiaGauge + "', " + dia.MCNO + "'" + dia.Brand + "')" : "UPDATE McDia SET MCNO = "+dia.MCNO+", McDiaGauge = '" + dia.McDiaGauge + "', McBrand = '" + dia.Brand + "' WHERE Id = " + dia.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM McDia order by Id desc";
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

        public static int AddYarnCount(YarnCountType yarn)
        {
            int Id = -1;
            try
            {
                string query = "";
                query = yarn.Id == 0 ? "INSERT INTO YarnCount (YarnCount) VALUES('" + yarn.YarnCount + "')" : "UPDATE YarnCount SET YarnCount = '" + yarn.YarnCount + "' WHERE Id = " + yarn.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM YarnCount order by Id desc";
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

        public static int AddKnitUnit(KnitUnitType knitType)
        {
            int Id = -1;
            try

            {
                string query = "";
                query = knitType.Id == 0 ? "INSERT INTO KnitUnit (KnitUnit) VALUES('" + knitType.KnitUnit + "')" : "UPDATE KnitUnit SET KnitUnit = '" + knitType.KnitUnit + "' WHERE Id = " + knitType.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM KnitUnit order by Id desc";
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

        public static int AddBrand(McBrandType brand)
        {
            int Id = -1;
            try

            {
                string query = "";
                query = brand.Id == 0 ? "INSERT INTO McBrand (McBrand) VALUES('" + brand.McBrand + "')" : "UPDATE McBrand SET McBrand = '"+brand.McBrand+"' WHERE Id = "+brand.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM McBrand order by Id desc";
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

        public static List<McDiaGaugeType> GetMCDIAList()
        {
            try
            {
                McDiaGauges = new List<McDiaGaugeType>();
                string query = "SELECT * FROM McDia";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        McDiaGaugeType McDiaGauge = new McDiaGaugeType();
                        McDiaGauge.Id = Convert.ToInt32(reader["Id"]);
                        McDiaGauge.MCNO = Convert.ToInt32(reader["MCNO"]);
                        McDiaGauge.McDiaGauge = reader["McDiaGauge"].ToString();
                        McDiaGauge.Brand = reader["McBrand"].ToString();

                        McDiaGauges.Add(McDiaGauge);
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

            return McDiaGauges;
        }

        public static List<YarnCountType> GetYarnCountList()
        {
            try
            {
                YarnCounts = new List<YarnCountType>();
                string query = "SELECT * FROM YarnCount";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        YarnCountType YarnCount = new YarnCountType();
                        YarnCount.Id = Convert.ToInt32(reader["Id"]);
                        YarnCount.YarnCount = reader["YarnCount"].ToString();

                        YarnCounts.Add(YarnCount);
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

            return YarnCounts;
        }

        public static List<KnitUnitType> GetKnitUnitList()
        {
            try
            {
                KnitUnits = new List<KnitUnitType>();
                string query = "SELECT * FROM KnitUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        KnitUnitType KnitUnit = new KnitUnitType();
                        KnitUnit.Id = Convert.ToInt32(reader["Id"]);
                        KnitUnit.KnitUnit = reader["KnitUnit"].ToString();

                        KnitUnits.Add(KnitUnit);
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

            return KnitUnits;
        }

        public static List<McBrandType> GetMcBrandList()
        {
            try
            {
                McBrands = new List<McBrandType>();
                string query = "SELECT * FROM McBrand";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        McBrandType McBrand = new McBrandType();
                        McBrand.Id = Convert.ToInt32(reader["Id"]);
                        McBrand.McBrand = reader["McBrand"].ToString();

                        McBrands.Add(McBrand);
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

            return McBrands;
        }

    }
}
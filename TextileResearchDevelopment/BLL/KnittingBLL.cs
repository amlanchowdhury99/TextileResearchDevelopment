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
        public static List<YarnColorType> yctList = new List<YarnColorType>();
        public static List<YD> ydList = new List<YD>();
        public static List<YDR> ydrList = new List<YDR>();
        public static List<YarnType> ytList = new List<YarnType>();
        public static List<CompositionType> cmList = new List<CompositionType>();
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
                            fabric.Id = Convert.ToInt32(reader["Id"]);
                            fabric.BarCode = reader["BarCode"].ToString();
                            fabric.buyer.Id = Convert.ToInt32(reader["BuyerID"]);
                            fabric.fb.Id = Convert.ToInt32(reader["FabricTypeID"]);
                            fabric.cm.Id = Convert.ToInt32(reader["CompositionTypeID"]);
                            fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                            fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                            fabric.cm.Composition = reader["Composition"].ToString();
                            fabric.OrderNo = reader["OrderNo"].ToString();
                            fabric.RefNo = reader["RefNo"].ToString();
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

        internal static List<CompositionType> GetCompositionTypeList()
        {
            try
            {
                cmList = new List<CompositionType>();
                string query = "SELECT * FROM CompositionType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        CompositionType cm = new CompositionType();
                        cm.Id = Convert.ToInt32(reader["Id"]);
                        cm.Composition = reader["Composition"].ToString();

                        cmList.Add(cm);
                    }
                }
            }
            catch (Exception ex)
            {
                cmList = new List<CompositionType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return cmList;
        }

        public static YD AddYD(YD yd)
        {
            try
            {
                string query = "";
                query = yd.Id == 0 ? "INSERT INTO YarnDetails (KnitID, YDCountID, YDCompositionID, YDYarnTypeID, YDYarnColorID, YDSupplierID, Lot, TPI) VALUES(" + yd.KnitID + ", " + yd.yc.Id + ", " + yd.cm.Id + ", " + yd.yt.Id + ", " + yd.yct.Id + ",  " + yd.yb.Id + ", '" + yd.Lot + "', '" + yd.TPI + "')" :
                                     "UPDATE YarnDetails SET YDCountID = " + yd.yc.Id + ", YDCompositionID = " + yd.cm.Id + ", YDYarnTypeID = " + yd.yt.Id + ", YDYarnColorID = " + yd.yct.Id + ", YDSupplierID = " + yd.yb.Id + ", Lot = '" + yd.Lot+ "', TPI = '" + yd.TPI + "' WHERE Id = " + yd.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {

                    if (yd.Id > 0)
                    {
                        query = "SELECT * FROM YDView WHERE Id = " + yd.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yd = GetYDObj(reader);
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM YDView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yd = GetYDObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                yd = new YD();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return yd;
        }

        public static YDR AddYDR(YDR ydr)
        {
            try
            {
                string query = "";
                query = ydr.Id == 0 ? "INSERT INTO YarnDyedRepeat (KnitID, YDRRepeat, YDRColor, YDRFeederNo, YDRMeasurement, YDRUOM, YDRBatchNo, YDRCK) VALUES('" + ydr.KnitID + "', '" + ydr.YDRRepeat + "', '" + ydr.YDRColor + "', '" + ydr.YDRFeederNo + "', '" + ydr.YDRMeasurement + "',  '" + ydr.YDRUOM + "', '" + ydr.YDRBatchNo + "', '" + ydr.YDRCK + "')" :
                                     "UPDATE YarnDyedRepeat SET YDRRepeat = '" + ydr.YDRRepeat + "', YDRColor = '" + ydr.YDRColor + "', YDRFeederNo = '" + ydr.YDRFeederNo + "', YDRMeasurement = '" + ydr.YDRMeasurement + "', YDRUOM = '" + ydr.YDRUOM + "', YDRBatchNo = '" + ydr.YDRBatchNo + "', YDRCK = '" + ydr.YDRCK + "' WHERE Id = " + ydr.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {

                    if (ydr.Id > 0)
                    {
                        query = "SELECT * FROM YarnDyedRepeat WHERE Id = " + ydr.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                ydr = GetYDRObj(reader);
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM YarnDyedRepeat order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                ydr = GetYDRObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ydr = new YDR();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return ydr;
        }

        internal static Knitting AddKnit(Knitting knit)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Knitting (FabricID, BarCode, ErpNo, McNoID, McSpeed, SL, YarnTension, LycraTension, GreyDia, GreyGSM, ReqDia, ReqGSM, ReviseStatus, ApprovedStatus, CreateBy, CreateTime, ApprovedBy, UpdateBy) " +
                               " VALUES(" + knit.fabric.Id + ",'" + knit.BarCode + "','" + knit.ErpNo + "'," + knit.mc.Id + ",'" + knit.McSpeed + "','" + knit.SL + "','" + knit.YT + "','" + knit.LT + "','" + knit.GreyDia + "','" + knit.GreyGSM + "','" + knit.ReqDia + "','" + knit.ReqGSM + "', 0, 0, (" + GetCreateByQuery + "), '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "', 0, 0)";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM KnitView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit = GetKnitObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                knit = new Knitting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return knit;
        }

        internal static Knitting ApproveKnit(Knitting knit)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Knitting SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + knit.Id + " AND ApprovedStatus = 0 ";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM KnitView WHERE Id = " + knit.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit = GetKnitObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                knit = new Knitting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return knit;
        }

        internal static Knitting UnapproveKnit(Knitting knit)
        {
            try
            {
                string query = " UPDATE Knitting SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + knit.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM KnitView WHERE Id = " + knit.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit = GetKnitObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                knit = new Knitting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return knit;
        }

        internal static bool BarCodeAuthorization(int BarCode)
        {
            try
            {
                string query = "SELECT * FROM Knitting WHERE BarCode = '" + BarCode + "'";
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

        internal static Knitting EditKnit(Knitting knit)
        {
            int Id = -1;
            try
            {
                string GetUpdateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Knitting SET FabricID = " + knit.fabric.Id + ", ErpNo = '" + knit.ErpNo + "', McNoID = " + knit.mc.Id + ", McSpeed = '" + knit.McSpeed + "', SL = '" + knit.SL + "', YarnTension = '" + knit.YT + "', LycraTension = '" + knit.LT + "', GreyDia = '" + knit.GreyDia + "', GreyGSM = '" + knit.GreyGSM + "', ReqDia = '" + knit.ReqDia + "', ReqGSM = '" + knit.ReqGSM + "', UpdateBy = (" + GetUpdateByQuery + "), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + knit.Id + " AND ApprovedStatus = 0";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT * FROM KnitView WHERE Id = " + knit.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit = GetKnitObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                knit = new Knitting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return knit;
        }

        internal static Knitting ReviseKnit(Knitting knit)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM Knitting WHERE BarCode = '" + knit.BarCode + "'";

                string query = " INSERT INTO Knitting (FabricID, BarCode, ErpNo, McNoID, McSpeed, SL, YarnTension, LycraTension, GreyDia, GreyGSM, ReqDia, ReqGSM, ReviseStatus, ApprovedStatus, CreateBy, CreateTime, ApprovedBy, UpdateBy) " +
                               " VALUES(" + knit.fabric.Id + ",'" + knit.BarCode + "','" + knit.ErpNo + "'," + knit.mc.Id + ",'" + knit.McSpeed + "','" + knit.SL + "','" + knit.YT + "','" + knit.LT + "','" + knit.GreyDia + "','" + knit.GreyGSM + "','" + knit.ReqDia + "','" + knit.ReqGSM + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "), '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "', 0, 0)";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM KnitView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            knit = GetKnitObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                knit = new Knitting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return knit;
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
                        knittings.Add(GetKnitObj(reader));
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Knitting)";
                if (fabricearchObj.BarCode != "" && fabricearchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = '" + fabricearchObj.BarCode + "'";
                }
                if (fabricearchObj.buyer.Id > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + fabricearchObj.buyer.Id;
                }
                if (fabricearchObj.fb.Id > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + fabricearchObj.fb.Id;
                }
                if (fabricearchObj.cm.Id > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " CompositionTypeID = " + fabricearchObj.cm.Id;
                }
                if (fabricearchObj.OrderNo != "" && fabricearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + fabricearchObj.OrderNo + "'";
                }
                if (fabricearchObj.RefNo != "" && fabricearchObj.RefNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " RefNo = '" + fabricearchObj.RefNo + "'";
                }

                return query;
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        public static McDiaGaugeType AddMcNo(McDiaGaugeType mc)
        {
            try
            {
                string query = "";
                query = mc.Id == 0 ? "INSERT INTO KnittingMachine (McDia, McGauge, McNo, McBrand) VALUES('" + mc.McDia + "', '" + mc.McGauge + "', '" + mc.McNo + "', '" + mc.McBrand + "')" : "UPDATE KnittingMachine SET McNo = " + mc.McNo + ", McDia = " + mc.McDia + ", McGauge = '" + mc.McGauge + "', McBrand = '" + mc.McBrand + "' WHERE Id = " + mc.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {

                    if (mc.Id > 0)
                    {
                        query = "SELECT * FROM KnittingMachine WHERE Id = " + mc.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                mc = GetMcObj(reader);
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM KnittingMachine order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                mc = GetMcObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                mc = new McDiaGaugeType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return mc;
        }

        private static McDiaGaugeType GetMcObj(SqlDataReader reader)
        {
            McDiaGaugeType mc = new McDiaGaugeType();
            try
            {
                mc.Id = Convert.ToInt32(reader["Id"]);
                mc.McDia = reader["McDia"].ToString();
                mc.McGauge = reader["McGauge"].ToString();
                mc.McBrand = reader["McBrand"].ToString();
                mc.McNo = reader["McNo"].ToString();
            }
            catch (Exception ex)
            {
                mc = new McDiaGaugeType();
            }
            return mc;
        }

        private static bool GetStatusSL(int Id, string colName)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn; cn.Open();
            try
            {
                var columnsName = new List<string>();
                string query = "SELECT * FROM Knitting WHERE " + colName + " = " + Id;
                cm.CommandText = query;
                reader1 = cm.ExecuteReader();
                if (reader1.Read())
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
                cn.Close();
            }
            return false;
        }

        public static YarnCountType AddYarnCount(YarnCountType yarn)
        {
            try
            {
                string query = "";
                query = yarn.Id == 0 ? "INSERT INTO YarnCountType (YarnCount) VALUES('" + yarn.YarnCount + "')" : "UPDATE YarnCountType SET YarnCount = '" + yarn.YarnCount + "' WHERE Id = " + yarn.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    if(yarn.Id > 0)
                    {
                        query = "SELECT * FROM YarnCountType WHERE Id = " + yarn.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yarn.Id = Convert.ToInt32(reader["Id"]);
                                yarn.YarnCount = reader["YarnCount"].ToString();
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM YarnCountType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yarn.Id = Convert.ToInt32(reader["Id"]);
                                yarn.YarnCount = reader["YarnCount"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                yarn = new YarnCountType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return yarn;
        }

        public static YarnColorType AddYarnColor(YarnColorType yarn)
        {
            try
            {
                string query = "";
                query = yarn.Id == 0 ? "INSERT INTO YarnColorType (YarnColor) VALUES('" + yarn.YarnColor + "')" : "UPDATE YarnColorType SET YarnColor = '" + yarn.YarnColor + "' WHERE Id = " + yarn.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    if (yarn.Id > 0)
                    {
                        query = "SELECT * FROM YarnColorType WHERE Id = " + yarn.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yarn.Id = Convert.ToInt32(reader["Id"]);
                                yarn.YarnColor = reader["YarnColor"].ToString();
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM YarnColorType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yarn.Id = Convert.ToInt32(reader["Id"]);
                                yarn.YarnColor = reader["YarnColor"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                yarn = new YarnColorType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return yarn;
        }

        public static CompositionType AddYarnComposition(CompositionType cm)
        {
            try
            {
                string query = "";
                query = cm.Id == 0 ? "INSERT INTO YarnCompositionType (YarnComposition) VALUES('" + cm.Composition + "')" : "UPDATE YarnCompositionType SET YarnComposition = '" + cm.Composition + "' WHERE Id = " + cm.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    if (cm.Id > 0)
                    {
                        query = "SELECT * FROM YarnCompositionType WHERE Id = " + cm.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cm.Id = Convert.ToInt32(reader["Id"]);
                                cm.Composition = reader["YarnComposition"].ToString();
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM YarnCompositionType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cm.Id = Convert.ToInt32(reader["Id"]);
                                cm.Composition = reader["YarnComposition"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                cm = new CompositionType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return cm;
        }

        public static CompositionType AddComposition(CompositionType cm)
        {
            try
            {
                string query = "";
                query = cm.Id == 0 ? "INSERT INTO CompositionType (Composition) VALUES('" + cm.Composition + "')" : "UPDATE CompositionType SET Composition = '" + cm.Composition + "' WHERE Id = " + cm.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    if (cm.Id > 0)
                    {
                        query = "SELECT * FROM CompositionType WHERE Id = " + cm.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cm.Id = Convert.ToInt32(reader["Id"]);
                                cm.Composition = reader["Composition"].ToString();
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM CompositionType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cm.Id = Convert.ToInt32(reader["Id"]);
                                cm.Composition = reader["Composition"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                cm = new CompositionType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return cm;
        }

        public static YarnType AddYarnType(YarnType yr)
        {
            try
            {
                string query = "";
                query = yr.Id == 0 ? "INSERT INTO YarnType (YarnName) VALUES('" + yr.YarnName + "')" : "UPDATE YarnType SET YarnName = '" + yr.YarnName + "' WHERE Id = " + yr.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    if(yr.Id > 0)
                    {
                        query = "SELECT * FROM YarnType WHERE Id = "+yr.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yr.Id = Convert.ToInt32(reader["Id"]);
                                yr.YarnName = reader["YarnName"].ToString();
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM YarnType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                yr.Id = Convert.ToInt32(reader["Id"]);
                                yr.YarnName = reader["YarnName"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                yr = new YarnType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return yr;
        }

        public static McBrandType AddBrand(McBrandType brand)
        {
            try

            {
                string query = "";
                query = brand.Id == 0 ? "INSERT INTO YarnSupplierType (YarnSupplier) VALUES('" + brand.YarnSupplier + "')" : "UPDATE YarnSupplierType SET YarnSupplier = '" + brand.YarnSupplier + "' WHERE Id = " + brand.Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    if (brand.Id > 0)
                    {
                        query = "SELECT * FROM YarnSupplierType WHERE Id = " + brand.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                brand.Id = Convert.ToInt32(reader["Id"]);
                                brand.YarnSupplier = reader["YarnSupplier"].ToString();
                            }
                        }
                    }
                    else
                    {
                        query = "SELECT TOP 1 * FROM YarnSupplierType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                brand.Id = Convert.ToInt32(reader["Id"]);
                                brand.YarnSupplier = reader["YarnSupplier"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                new McBrandType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return brand;
        }

        public static List<McDiaGaugeType> GetMCDIAList()
        {
            try
            {
                McDiaGauges = new List<McDiaGaugeType>();
                string query = "SELECT * FROM KnittingMachine";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        McDiaGaugeType McDiaGauge = new McDiaGaugeType();
                        McDiaGauge.Id = Convert.ToInt32(reader["Id"]);
                        McDiaGauge.McNo = reader["McNo"].ToString();
                        McDiaGauge.McDia = reader["McDia"].ToString();
                        McDiaGauge.McGauge = reader["McGauge"].ToString();
                        McDiaGauge.McBrand = reader["McBrand"].ToString();
                        McDiaGauge.Status = GetStatusSL(Convert.ToInt32(reader["Id"]), "McNoID") == true ? 1 : 0;

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
                string query = "SELECT * FROM YarnCountType";
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

        public static List<YarnColorType> GetYarnColorList()
        {
            try
            {
                yctList = new List<YarnColorType>();
                string query = "SELECT * FROM YarnColorType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        YarnColorType yc = new YarnColorType();
                        yc.Id = Convert.ToInt32(reader["Id"]);
                        yc.YarnColor = reader["YarnColor"].ToString();

                        yctList.Add(yc);
                    }
                }
            }
            catch (Exception ex)
            {
                yctList = new List<YarnColorType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return yctList;
        }

        public static List<YarnType> GetYarnTypeList()
        {
            try
            {
                ytList = new List<YarnType>();
                string query = "SELECT * FROM YarnType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        YarnType yt = new YarnType();
                        yt.Id = Convert.ToInt32(reader["Id"]);
                        yt.YarnName = reader["YarnName"].ToString();

                        ytList.Add(yt);
                    }
                }
            }
            catch (Exception ex)
            {
                ytList = new List<YarnType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return ytList;
        }

        public static List<CompositionType> GetYarnCompositionTypeList()
        {
            try
            {
                cmList = new List<CompositionType>();
                string query = "SELECT * FROM YarnCompositionType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        CompositionType cm = new CompositionType();
                        cm.Id = Convert.ToInt32(reader["Id"]);
                        cm.Composition = reader["YarnComposition"].ToString();

                        cmList.Add(cm);
                    }
                }
            }
            catch (Exception ex)
            {
                cmList = new List<CompositionType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return cmList;
        }

        public static List<McBrandType> GetMcBrandList()
        {
            try
            {
                McBrands = new List<McBrandType>();
                string query = "SELECT * FROM YarnSupplierType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        McBrandType McBrand = new McBrandType();
                        McBrand.Id = Convert.ToInt32(reader["Id"]);
                        McBrand.YarnSupplier = reader["YarnSupplier"].ToString();

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

        internal static bool DeleteMcNo(int Id)
        {
            try
            {
                string query = "DELETE FROM KnittingMachine WHERE Id = " + Id;
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

        internal static Boolean DeleteYarnType(int Id)
        {
            try
            {
                string query = "DELETE FROM YarnType WHERE Id = " + Id;
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
                string query = "DELETE FROM YarnCountType WHERE Id = " + Id;
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

        internal static Boolean DeleteYarnColor(int Id)
        {
            try
            {
                string query = "DELETE FROM YarnColorType WHERE Id = " + Id;
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

        internal static Boolean DeleteYD(int Id)
        {
            try
            {
                string query = "DELETE FROM YarnDetails WHERE Id = " + Id;
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

        internal static Boolean DeleteYDR(int Id)
        {
            try
            {
                string query = "DELETE FROM YarnDyedRepeat WHERE Id = " + Id;
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
                string query = "DELETE FROM YarnSupplierType WHERE Id = " + Id;
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

        internal static bool DeleteYarnComposition(int Id)
        {
            try
            {
                string query = "DELETE FROM YarnCompositionType WHERE Id = " + Id;
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

        internal static bool DeleteComposition(int Id)
        {
            try
            {
                string query = "DELETE FROM CompositionType WHERE Id = " + Id;
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

        public static Knitting GetKnitObj(SqlDataReader reader)
        {
            Knitting knit = new Knitting();
            try
            {
                knit.Id = Convert.ToInt32(reader["Id"]);
                knit.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                knit.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                knit.fabric.OrderNo = reader["OrderNo"].ToString();
                knit.fabric.RefNo = reader["RefNo"].ToString();
                knit.fabric.cm.Composition = reader["Composition"].ToString();
                knit.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                knit.BarCode = reader["BarCode"].ToString();
                knit.fabric.ProcessString = FabricBLL.GetProcessString(reader["BarCode"].ToString());

                knit.ydList = GetYDList(knit.Id);
                knit.ydrList = GetYDRList(knit.Id);

                knit.ErpNo = reader["ErpNo"].ToString();
                knit.mc.Id = Convert.ToInt32(reader["McNoID"]);
                knit.mc.McNo = reader["McNo"].ToString();
                knit.mc.McDia = reader["McDia"].ToString();
                knit.mc.McGauge = reader["McGauge"].ToString();
                knit.mc.McBrand = reader["McBrand"].ToString();

                knit.McSpeed = reader["McSpeed"] == DBNull.Value ? "" : reader["McSpeed"].ToString();
                knit.SL = reader["SL"].ToString();
                knit.YT = reader["YarnTension"] == DBNull.Value ? "" : reader["YarnTension"].ToString();
                knit.LT = reader["LycraTension"] == DBNull.Value ? "" : reader["LycraTension"].ToString();
                knit.GreyDia = reader["GreyDia"] == DBNull.Value ? "" : reader["GreyDia"].ToString();
                knit.GreyGSM = reader["GreyGSM"] == DBNull.Value ? "" : reader["GreyGSM"].ToString();
                knit.ReqDia = reader["ReqDia"].ToString();
                knit.ReqGSM = reader["ReqGSM"].ToString();

                knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                knit.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                knit.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                knit.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                knit.CreateByName = reader["CreateByName"].ToString();
                knit.UpdateByName = reader["UpdateByName"].ToString();
                knit.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                knit = new Knitting();
            }

            return knit;

        }

        private static List<YD> GetYDList(int Id)
        {
            ydList = new List<YD>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader2; cm.Connection = cn; cn.Open();
            try
            {
                string query = "SELECT * FROM YDView WHERE KnitID = " + Id;
                cm.CommandText = query; reader2 = cm.ExecuteReader();
                if (reader2.HasRows)
                {
                    while (reader2.Read())
                    {
                        ydList.Add(GetYDObj(reader2));
                    }
                }
                else
                {
                    throw new Exception();
                }
            }
            catch (Exception ex)
            {
                ydList = new List<YD>();
            }
            finally
            {
                cn.Close();
            }

            return ydList;
        }

        private static List<YDR> GetYDRList(int Id)
        {
            ydrList = new List<YDR>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn; cn.Open();
            try
            {
                string query = "SELECT * FROM YarnDyedRepeat WHERE KnitID = " + Id;
                cm.CommandText = query; reader1 = cm.ExecuteReader();
                if (reader1.HasRows)
                {
                    while (reader1.Read())
                    {
                        ydrList.Add(GetYDRObj(reader1));
                    }
                }
                else
                {
                    throw new Exception();
                }
            }
            catch (Exception ex)
            {
                ydrList = new List<YDR>();
            }
            finally
            {
                cn.Close();
            }

            return ydrList;
        }

        public static YD GetYDObj(SqlDataReader reader)
        {
            YD yd = new YD();

            try
            {
                yd.Id = Convert.ToInt32(reader["Id"]);
                yd.KnitID = Convert.ToInt32(reader["KnitID"]);
                yd.yc.Id = Convert.ToInt32(reader["YDCountID"]);
                yd.cm.Id = Convert.ToInt32(reader["YDCompositionID"]);
                yd.yt.Id = Convert.ToInt32(reader["YDYarnTypeID"]);
                yd.yct.Id = Convert.ToInt32(reader["YDYarnColorID"]);
                yd.yb.Id = Convert.ToInt32(reader["YDSupplierID"]);

                yd.yc.YarnCount = reader["YarnCount"].ToString();
                yd.cm.Composition = reader["YarnComposition"].ToString();
                yd.yt.YarnName = reader["YarnName"].ToString();
                yd.yb.YarnSupplier = reader["YarnSupplier"].ToString();
                yd.yct.YarnColor = reader["YarnColor"].ToString();

                yd.Lot = reader["Lot"].ToString();
                yd.TPI = reader["TPI"] == DBNull.Value ? "" : reader["TPI"].ToString();
            }
            catch(Exception ex)
            {
                yd = new YD();
            }

            return yd;
        }

        public static YDR GetYDRObj(SqlDataReader reader)
        {
            YDR ydr = new YDR();

            try
            {
                ydr.Id = Convert.ToInt32(reader["Id"]);
                ydr.KnitID = Convert.ToInt32(reader["KnitID"]);
                ydr.YDRRepeat = reader["YDRRepeat"].ToString();
                ydr.YDRColor = reader["YDRColor"].ToString();
                ydr.YDRFeederNo = reader["YDRFeederNo"].ToString();
                ydr.YDRMeasurement = reader["YDRMeasurement"].ToString();
                ydr.YDRUOM = reader["YDRUOM"] == DBNull.Value ? "" : reader["YDRUOM"].ToString();
                ydr.YDRBatchNo = reader["YDRBatchNo"].ToString();
                ydr.YDRCK = reader["YDRCK"].ToString();
            }
            catch (Exception ex)
            {
                ydr = new YDR();
            }

            return ydr;
        }

    }
}
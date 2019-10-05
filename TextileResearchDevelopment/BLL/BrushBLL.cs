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
    public class BrushBLL
    {
        public static List<Brush> cws = new List<Brush>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();
        public static List<ProductionType> productionTypes = new List<ProductionType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static Brush CRUD(Brush brush)
        {
            try
            {
                string query = "";
                if (brush.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Brush SET FabricID = '" + brush.fabric.Id + "', BUpperPile = '" + brush.UPile + "', BUpperCounterPile = '" + brush.UCounterPile + "', BUpperDrumTension = '" + brush.UTension + "', BUpperDrumRPM = '" + brush.URPM + "', BLowerPile = '" + brush.LPile + "', BLowerCounterPile = '" + brush.LCounterPile + "',  BLowerDrumTension = '" + brush.LTension + "', BLowerDrumRPM = '" + brush.LRPM + "', BSpeed = '" + brush.BSpeed + "', BRemarks = '" + brush.Remarks + "', UpdateBy = (" + GetCreateByQuery + "), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "'";

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM BrushView WHERE Id = " + brush.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                brush = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Brush (FabricID, BUpperPile, BUpperCounterPile, BUpperDrumTension, BUpperDrumRPM, BLowerPile, BLowerCounterPile, BLowerDrumTension, BLowerDrumRPM, BSpeed, BRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + brush.fabric.Id + ",'" + brush.UPile + "','" + brush.UCounterPile + "','" + brush.UTension + "','" + brush.URPM + "','" + brush.LPile + "','" + brush.LCounterPile + "','" + brush.LTension + "','" + brush.LRPM + "','" + brush.BSpeed + "','" + brush.Remarks + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM BrushView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                brush = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Brush();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return brush;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM Brush WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Brush> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<Brush>();
                string query = "SELECT * FROM BrushView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        cws.Add(GetObj(reader));
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

            return cws;
        }

        private static Brush GetObj(SqlDataReader reader)
        {
            Brush brush = new Brush();
            try
            {
                brush.Id = Convert.ToInt32(reader["Id"]);
                brush.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                brush.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                brush.fabric.OrderNo = reader["OrderNo"].ToString();
                brush.fabric.RefNo = reader["RefNo"].ToString();
                brush.fabric.cm.Composition = reader["Composition"].ToString();
                brush.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                brush.fabric.BarCode = reader["BarCode"].ToString();
                brush.fabric.ProcessString = FabricBLL.GetProcessString(reader["BarCode"].ToString());

                brush.UPile = reader["BUpperPile"].ToString();
                brush.UCounterPile = reader["BUpperCounterPile"].ToString();
                brush.UTension = reader["BUpperDrumTension"].ToString();
                brush.URPM = reader["BUpperDrumRPM"].ToString();
                brush.LPile = reader["BLowerPile"].ToString();
                brush.LCounterPile = reader["BLowerCounterPile"].ToString();
                brush.LTension = reader["BLowerDrumTension"].ToString();
                brush.LRPM = reader["BLowerDrumRPM"].ToString();
                brush.BSpeed = reader["BSpeed"].ToString();
                brush.Remarks = reader["BRemarks"] == DBNull.Value ? "" : reader["BRemarks"].ToString();

                brush.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                brush.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                brush.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                brush.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                brush.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                brush.CreateByName = reader["CreateByName"].ToString();
                brush.UpdateByName = reader["UpdateByName"].ToString();
                brush.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                brush = new Brush();
            }

            return brush;
        }

        internal static Brush Revise(Brush brush)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM BrushView WHERE BarCode = '" + brush.fabric.BarCode + "'";
                
                string query = "INSERT INTO Brush (FabricID, BUpperPile, BUpperCounterPile, BUpperDrumTension, BUpperDrumRPM, BLowerPile, BLowerCounterPile, BLowerDrumTension, BLowerDrumRPM, BSpeed, BRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + brush.fabric.Id + ",'" + brush.UPile + "','" + brush.UCounterPile + "','" + brush.UTension + "','" + brush.URPM + "','" + brush.LPile + "','" + brush.LCounterPile + "','" + brush.LTension + "','" + brush.LRPM + "','" + brush.BSpeed + "','" + brush.Remarks + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM BrushView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            brush = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                brush = new Brush();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return brush;
        }

        internal static Brush Approve(Brush brush)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";

                string query = " UPDATE Brush SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + brush.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM BrushView WHERE Id = " + brush.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            brush = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                brush = new Brush();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return brush;
        }

        internal static Brush Unapprove(Brush brush)
        {
            try
            {
                string query = " UPDATE Brush SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + brush.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM BrushView WHERE Id = " + brush.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            brush = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                brush = new Brush();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return brush;
        }

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

        public static string GetfabricearchQuery(Fabric fabricearchObj)
        {
            try
            {
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Brush)";
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
    }
}
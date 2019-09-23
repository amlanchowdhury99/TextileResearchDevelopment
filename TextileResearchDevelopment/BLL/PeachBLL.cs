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
    public class PeachBLL
    {
        public static List<Peach> cws = new List<Peach>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();
        public static List<ProductionType> productionTypes = new List<ProductionType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static Peach CRUD(Peach peach)
        {
            try
            {
                string query = "";
                if (peach.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Peach SET FabricID = '" + peach.fabric.Id + "', PTaker = '" + peach.Taker + "', PPlaiter = '" + peach.Plaiter + "', PReturn = '" + peach.Return + "', PTension = '" + peach.Tension + "', PRPM = '" + peach.RPM + "', PBrush = '" + peach.Brush + "', PSpeed = '" + peach.Speed + "',  PDia = '" + peach.Dia + "', PGSM = '" + peach.GSM + "', PRemarks = '" + peach.Remarks + "', UpdateBy = ('" + GetCreateByQuery + "'), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM PeachView WHERE Id = " + peach.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                peach = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Peach (FabricID, PTaker, PPlaiter, PReturn, PTension, PRPM, PBrush, PSpeed, PDia, PGSM, PRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + peach.fabric.Id + ",'" + peach.Taker + "','" + peach.Plaiter + "','" + peach.Return + "','" + peach.Tension + "','" + peach.RPM + "','" + peach.Brush + "','" + peach.Speed + "','" + peach.Dia + "','" + peach.GSM + "','" + peach.Remarks + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM PeachView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                peach = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Peach();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return peach;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM Peach WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Peach> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<Peach>();
                string query = "SELECT * FROM PeachView";
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

        private static Peach GetObj(SqlDataReader reader)
        {
            Peach peach = new Peach();
            try
            {
                peach.Id = Convert.ToInt32(reader["Id"]);
                peach.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                peach.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                peach.fabric.OrderNo = reader["OrderNo"].ToString();
                peach.fabric.RefNo = reader["RefNo"].ToString();
                peach.fabric.cm.Composition = reader["Composition"].ToString();
                peach.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                peach.fabric.BarCode = reader["BarCode"].ToString();

                peach.Taker = reader["PTaker"].ToString();
                peach.Plaiter = reader["PPlaiter"].ToString();
                peach.Return = reader["PReturn"].ToString();
                peach.Tension = reader["PTension"].ToString();
                peach.RPM = reader["PRPM"].ToString();
                peach.Brush = reader["PBrush"].ToString();
                peach.Speed = reader["PSpeed"].ToString();
                peach.Dia = reader["PDia"].ToString();
                peach.GSM = reader["PGSM"].ToString();
                peach.Remarks = reader["PRemarks"] == DBNull.Value ? "" : reader["PRemarks"].ToString();

                peach.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                peach.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                peach.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                peach.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                peach.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                peach.CreateByName = reader["CreateByName"].ToString();
                peach.UpdateByName = reader["UpdateByName"].ToString();
                peach.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                peach = new Peach();
            }

            return peach;
        }

        internal static Peach Revise(Peach peach)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM PeachView WHERE BarCode = '" + peach.fabric.BarCode + "'";
                
                string query = "INSERT INTO Peach (FabricID, PTaker, PPlaiter, PReturn, PTension, PRPM, PBrush, PSpeed, PDia, PGSM, PRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + peach.fabric.Id + ",'" + peach.Taker + "','" + peach.Plaiter + "','" + peach.Return + "','" + peach.Tension + "','" + peach.RPM + "','" + peach.Brush + "','" + peach.Speed + "','" + peach.Dia + "','" + peach.GSM + "','" + peach.Remarks + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM PeachView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            peach = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                peach = new Peach();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return peach;
        }

        internal static Peach Approve(Peach peach)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Peach SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + peach.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM PeachView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            peach = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                peach = new Peach();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return peach;
        }

        internal static Peach Unapprove(Peach peach)
        {
            try
            {
                string query = " UPDATE Peach SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + peach.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM PeachView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            peach = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                peach = new Peach();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return peach;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Peach)";
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
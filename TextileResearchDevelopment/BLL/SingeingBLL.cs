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
    public class SingeingBLL
    {
        public static List<Singeing> cws = new List<Singeing>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static Singeing CRUD(Singeing singeing)
        {
            try
            {
                string query = "";
                if (singeing.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Singeing SET FabricID = '" + singeing.fabric.Id + "',  SFHBurner1 = '" + singeing.HBurner1 + "', SFHBurner2 = '" + singeing.HBurner2 + "', SFWBurner1 = '" + singeing.WBurner1 + "', SFWBurner2 = '" + singeing.WBurner2 + "', SSpeed = '" + singeing.Speed + "', SBurner = '" + singeing.Burner + "', SFlamePosition = '" + singeing.Position + "', UpdateBy = ('" + GetCreateByQuery + "'), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM cwView WHERE Id = " + singeing.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                singeing = GetCWObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Singeing (FabricID, SFHBurner1, SFHBurner2, SFWBurner1, SFWBurner2, SSpeed, SBurner, SFlamePosition, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + singeing.fabric.Id + "," + singeing.HBurner1 + "','" + singeing.HBurner2 + "','" + singeing.WBurner1 + "','" + singeing.WBurner2 + "','" + singeing.Speed + "','" + singeing.Burner + "','" + singeing.Position + "',  0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM SingeingView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                singeing = GetCWObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Singeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return singeing;
        }

        internal static bool DeleteCW(int Id)
        {
            try
            {
                string query = "DELETE FROM Singeing WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Singeing> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<Singeing>();
                string query = "SELECT * FROM SingeingView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        cws.Add(GetCWObj(reader));
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

        private static Singeing GetCWObj(SqlDataReader reader)
        {
            Singeing singeing = new Singeing();
            try
            {
                singeing.Id = Convert.ToInt32(reader["Id"]);
                singeing.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                singeing.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                singeing.fabric.OrderNo = reader["OrderNo"].ToString();
                singeing.fabric.RefNo = reader["RefNo"].ToString();
                singeing.fabric.cm.Composition = reader["Composition"].ToString();
                singeing.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                singeing.fabric.BarCode = reader["BarCode"].ToString();

                singeing.HBurner1 = reader["SFHBurner1"].ToString();
                singeing.HBurner2 = reader["SFHBurner2"].ToString();
                singeing.WBurner1 = reader["SFWBurner1"].ToString();
                singeing.WBurner2 = reader["SFWBurner2"].ToString();
                singeing.Speed = reader["SSpeed"].ToString();
                singeing.Burner = reader["SBurner"].ToString();
                singeing.Position = reader["SFlamePosition"].ToString();

                singeing.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                singeing.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                singeing.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                singeing.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                singeing.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                singeing.CreateByName = reader["CreateByName"].ToString();
                singeing.UpdateByName = reader["UpdateByName"].ToString();
                singeing.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                singeing = new Singeing();
            }

            return singeing;
        }

        internal static Singeing Revise(Singeing singeing)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM SingeingView WHERE BarCode = '" + singeing.fabric.BarCode + "'";
                string query = "INSERT INTO Singeing (FabricID, SFHBurner1, SFHBurner2, SFWBurner1, SFWBurner2, SSpeed, SBurner, SFlamePosition, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + singeing.fabric.Id + "," + singeing.HBurner1 + "','" + singeing.HBurner2 + "','" + singeing.WBurner1 + "','" + singeing.WBurner2 + "','" + singeing.Speed + "','" + singeing.Burner + "','" + singeing.Position + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM SingeingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            singeing = GetCWObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                singeing = new Singeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return singeing;
        }

        internal static Singeing Approve(Singeing singeing)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Singeing SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + singeing.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM SingeingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            singeing = GetCWObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                singeing = new Singeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return singeing;
        }

        internal static Singeing Unapprove(Singeing singeing)
        {
            try
            {
                string query = " UPDATE Singeing SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + singeing.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM SingeingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            singeing = GetCWObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                singeing = new Singeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return singeing;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Singeing)";
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
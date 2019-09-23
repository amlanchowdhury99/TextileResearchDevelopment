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
    public class HSPBLL
    {
        public static List<HSP> cws = new List<HSP>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static List<MachineType> GetMachineList()
        {
            try
            {
                machineTypes = new List<MachineType>();
                string query = "SELECT * FROM HSPMcNoType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType mc = new MachineType();
                        mc.Id = Convert.ToInt32(reader["Id"]);
                        mc.McNo = reader["HSPMcNo"].ToString();

                        machineTypes.Add(mc);
                    }
                }
            }
            catch (Exception ex)
            {
                machineTypes = new List<MachineType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return machineTypes;
        }

        internal static HSP CRUD(HSP hsp)
        {
            try
            {
                string query = "";
                if (hsp.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE HSP SET FabricID = '" + hsp.fabric.Id + "', HPMcNoId = " + hsp.mc.Id + ", HPTemp = '" + hsp.Temp + "', HPSpeed = '" + hsp.Speed + "', HPTime = '" + hsp.Time + "', HPFeed = '" + hsp.Feed + "', HPStrech = '" + hsp.Streching + "', HPChemical = '" + hsp.Chemical + "', HPDia = '" + hsp.Dia + "', HPGSM = '" + hsp.GSM + "', HPShrinkage = '" + hsp.Shrinkage + "', UpdateBy = ('" + GetCreateByQuery + "'), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM HSPView WHERE Id = " + hsp.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                hsp = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO HSP (FabricID, HPMcNoId, HPTemp, HPSpeed, HPTime, HPFeed, HPStrech, HPChemical, HPDia, HPGSM, HPShrinkage, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + hsp.fabric.Id + "," + hsp.mc.Id + ",'" + hsp.Temp + "','" + hsp.Speed + "','" + hsp.Time + "','" + hsp.Feed + "','" + hsp.Streching + "','" + hsp.Chemical + "','" + hsp.Dia + "','" + hsp.GSM + "','" + hsp.Shrinkage + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM HSPView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                hsp = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new HSP();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return hsp;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM HSP WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<HSP> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<HSP>();
                string query = "SELECT * FROM HSPView";
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

        private static HSP GetObj(SqlDataReader reader)
        {
            HSP hsp = new HSP();
            try
            {
                hsp.Id = Convert.ToInt32(reader["Id"]);
                hsp.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                hsp.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                hsp.fabric.OrderNo = reader["OrderNo"].ToString();
                hsp.fabric.RefNo = reader["RefNo"].ToString();
                hsp.fabric.cm.Composition = reader["Composition"].ToString();
                hsp.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                hsp.fabric.BarCode = reader["BarCode"].ToString();

                hsp.mc.Id = Convert.ToInt32(reader["HPMcNoId"]);
                hsp.mc.McNo = reader["HSPMcNo"].ToString();
                hsp.Temp = reader["HPTemp"].ToString();
                hsp.Speed = reader["HPSpeed"].ToString();
                hsp.Time = reader["HPTime"].ToString();
                hsp.Feed = reader["HPFeed"].ToString();
                hsp.Streching = reader["HPStrech"].ToString();
                hsp.Chemical = reader["HPChemical"].ToString();
                hsp.Dia = reader["HPDia"].ToString();
                hsp.GSM = reader["HPGSM"].ToString();
                hsp.Shrinkage = reader["HPShrinkage"] == DBNull.Value ? "" : reader["HPShrinkage"].ToString();

                hsp.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                hsp.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                hsp.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                hsp.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                hsp.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                hsp.CreateByName = reader["CreateByName"].ToString();
                hsp.UpdateByName = reader["UpdateByName"].ToString();
                hsp.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                hsp = new HSP();
            }

            return hsp;
        }

        internal static HSP Revise(HSP hsp)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM HSPView WHERE BarCode = '" + hsp.fabric.BarCode + "'";

                string query = "INSERT INTO HSP (FabricID, HPMcNoId, HPTemp, HPSpeed, HPTime, HPFeed, HPStrech, HPChemical, HPDia, HPGSM, HPShrinkage, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + hsp.fabric.Id + "," + hsp.mc.Id + ",'" + hsp.Temp + "','" + hsp.Speed + "','" + hsp.Time + "','" + hsp.Feed + "','" + hsp.Streching + "','" + hsp.Chemical + "','" + hsp.Dia + "','" + hsp.GSM + "','" + hsp.Shrinkage + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM HSPView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            hsp = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                hsp = new HSP();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return hsp;
        }

        internal static HSP Approve(HSP hsp)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE HSP SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + hsp.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM HSPView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            hsp = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                hsp = new HSP();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return hsp;
        }

        internal static HSP Unapprove(HSP hsp)
        {
            try
            {
                string query = " UPDATE HSP SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + hsp.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM HSPView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            hsp = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                hsp = new HSP();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return hsp;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM HSP)";
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
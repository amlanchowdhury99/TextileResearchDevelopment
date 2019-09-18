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
    public class DryerBLL
    {
        public static List<Dryer> cws = new List<Dryer>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static List<MachineType> GetMachineList()
        {
            try
            {
                machineTypes = new List<MachineType>();
                string query = "SELECT * FROM DryerMcNoType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType mc = new MachineType();
                        mc.Id = Convert.ToInt32(reader["Id"]);
                        mc.McNo = reader["DryerMcNo"].ToString();

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

        internal static Dryer CRUD(Dryer dryer)
        {
            try
            {
                string query = "";
                if (dryer.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Dryer SET FabricID = '" + dryer.fabric.Id + "', DRMcNoID = " + dryer.mc.Id + ", DRTemp = '" + dryer.Temp + "', DRSpeed = '" + dryer.Speed + "', DRFeed = '" + dryer.Feed + "', DRStreching = '" + dryer.Streching + "', DRChemical = '" + dryer.Chemical + "', DRDia = '" + dryer.Dia + "', DRGSM = '" + dryer.GSM + "', DRShrinkage = '" + dryer.Shrinkage + "', Remarks = '" + dryer.Remarks + "', UpdateBy = ('" + GetCreateByQuery + "'), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM DryerView WHERE Id = " + dryer.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                dryer = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Dryer (FabricID, DRMcNoID, DRTemp, DRSpeed, DRFeed, DRStreching, DRChemical, DRDia, DRGSM, DRShrinkage, Remarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) " +
                        "VALUES(" + dryer.fabric.Id + "," + dryer.mc.Id + ",'" + dryer.Temp + "','" + dryer.Speed + "','" + dryer.Feed + "','" + dryer.Streching + "','" + dryer.Chemical + "','" + dryer.Dia + "','" + dryer.GSM + "','" + dryer.Shrinkage + "','" + dryer.Remarks + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM DryerView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                dryer = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Dryer();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dryer;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM Dryer WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Dryer> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<Dryer>();
                string query = "SELECT * FROM DryerView";
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

        private static Dryer GetObj(SqlDataReader reader)
        {
            Dryer dryer = new Dryer();
            try
            {
                dryer.Id = Convert.ToInt32(reader["Id"]);
                dryer.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                dryer.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                dryer.fabric.OrderNo = reader["OrderNo"].ToString();
                dryer.fabric.RefNo = reader["RefNo"].ToString();
                dryer.fabric.cm.Composition = reader["Composition"].ToString();
                dryer.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                dryer.fabric.BarCode = reader["BarCode"].ToString();

                dryer.mc.Id = Convert.ToInt32(reader["DRMcNoID"]);
                dryer.mc.McNo = reader["DryerMcNo"].ToString();
                dryer.Temp = reader["DRTemp"].ToString();
                dryer.Speed = reader["DRSpeed"].ToString();
                dryer.Feed = reader["DRFeed"].ToString();
                dryer.Streching = reader["DRStreching"].ToString();
                dryer.Chemical = reader["DRChemical"].ToString();
                dryer.Dia = reader["DRDia"].ToString();
                dryer.GSM = reader["DRGSM"].ToString();
                dryer.Shrinkage = reader["DRShrinkage"].ToString();
                dryer.Remarks = reader["Remarks"].ToString();

                dryer.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                dryer.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                dryer.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                dryer.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                dryer.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                dryer.CreateByName = reader["CreateByName"].ToString();
                dryer.UpdateByName = reader["UpdateByName"].ToString();
                dryer.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                dryer = new Dryer();
            }

            return dryer;
        }

        internal static Dryer Revise(Dryer dryer)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM DryerView WHERE BarCode = '" + dryer.fabric.BarCode + "'";
                
                string query = "INSERT INTO Dryer (FabricID, DRMcNoID, DRTemp, DRSpeed, DRFeed, DRStreching, DRChemical, DRDia, DRGSM, DRShrinkage, Remarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + dryer.fabric.Id + "," + dryer.mc.Id + ",'" + dryer.Temp + "','" + dryer.Speed + "','" + dryer.Feed + "','" + dryer.Streching + "','" + dryer.Chemical + "','" + dryer.Dia + "','" + dryer.GSM + "','" + dryer.Shrinkage + "','" + dryer.Remarks + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DryerView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dryer = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                dryer = new Dryer();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dryer;
        }

        internal static Dryer Approve(Dryer dryer)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Dryer SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + dryer.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DryerView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dryer = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                dryer = new Dryer();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dryer;
        }

        internal static Dryer Unapprove(Dryer dryer)
        {
            try
            {
                string query = " UPDATE Dryer SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + dryer.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DryerView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dryer = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                dryer = new Dryer();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dryer;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Dryer)";
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
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
    public class CompactingBLL
    {
        public static List<Compacting> cws = new List<Compacting>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();
        public static List<ProductionType> productionTypes = new List<ProductionType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static List<MachineType> GetMachineList()
        {
            try
            {
                machineTypes = new List<MachineType>();
                string query = "SELECT * FROM CompactingMcNoType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType mc = new MachineType();
                        mc.Id = Convert.ToInt32(reader["Id"]);
                        mc.McNo = reader["CompactingMcNo"].ToString();

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

        internal static List<ProductionType> GetProductionTypeList()
        {
            try
            {
                productionTypes = new List<ProductionType>();
                string query = "SELECT * FROM CProductionType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        ProductionType p = new ProductionType();
                        p.Id = Convert.ToInt32(reader["Id"]);
                        p.Production = reader["CProduction"].ToString();

                        productionTypes.Add(p);
                    }
                }
            }
            catch (Exception ex)
            {
                productionTypes = new List<ProductionType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return productionTypes;
        }

        internal static Compacting CRUD(Compacting compacting)
        {
            try
            {
                string query = "";
                if (compacting.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Compacting SET FabricID = '" + compacting.fabric.Id + "', CMcNoID = " + compacting.mc.Id + ", CProductionTypeID = " + compacting.pr.Id + ", CTemp = '" + compacting.Temp + "', CSpeed = '" + compacting.Speed + "', CFeed = '" + compacting.Feed + "', CSteam = '" + compacting.Steam + "', CCompaction = '" + compacting.Compaction + "', CDia = '" + compacting.Dia + "', CGSM = '" + compacting.GSM + "', CRemarks = '" + compacting.Remarks + "', UpdateBy = ('" + GetCreateByQuery + "'), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM CompactingView WHERE Id = " + compacting.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                compacting = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Compacting (FabricID, CMcNoID, CProductionTypeID, CTemp, CFeed, CSpeed, CSteam, CCompaction, CDia, CGSM, CRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + compacting.fabric.Id + "," + compacting.mc.Id + "," + compacting.pr.Id + ",'" + compacting.Temp + "','" + compacting.Feed + "','" + compacting.Speed + "','" + compacting.Steam + "','" + compacting.Compaction + "','" + compacting.Dia + "','" + compacting.GSM + "','" + compacting.Remarks + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM CompactingView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                compacting = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Compacting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return compacting;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM Compacting WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Compacting> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<Compacting>();
                string query = "SELECT * FROM CompactingView";
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

        private static Compacting GetObj(SqlDataReader reader)
        {
            Compacting compacting = new Compacting();
            try
            {
                compacting.Id = Convert.ToInt32(reader["Id"]);
                compacting.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                compacting.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                compacting.fabric.OrderNo = reader["OrderNo"].ToString();
                compacting.fabric.RefNo = reader["RefNo"].ToString();
                compacting.fabric.cm.Composition = reader["Composition"].ToString();
                compacting.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                compacting.fabric.BarCode = reader["BarCode"].ToString();

                compacting.mc.Id = Convert.ToInt32(reader["CMcNoID"]);
                compacting.mc.McNo = reader["CompactingMcNo"].ToString();
                compacting.pr.Id = reader["CProductionTypeID"] == DBNull.Value ? 0 : Convert.ToInt32(reader["CProductionTypeID"]);
                compacting.pr.Production = reader["CProduction"] == DBNull.Value ? "" : reader["CProduction"].ToString();
                compacting.Speed = reader["CSpeed"].ToString();
                compacting.Temp = reader["CTemp"].ToString();
                compacting.Speed = reader["CSpeed"].ToString();
                compacting.Feed = reader["CFeed"].ToString();
                compacting.Steam = reader["CSteam"].ToString();
                compacting.Compaction = reader["CCompaction"] == DBNull.Value ? "" : reader["CCompaction"].ToString();
                compacting.Dia = reader["CDia"].ToString();
                compacting.GSM = reader["CGSM"].ToString();
                compacting.Remarks = reader["CRemarks"] == DBNull.Value ? "" : reader["CRemarks"].ToString();

                compacting.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                compacting.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                compacting.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                compacting.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                compacting.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                compacting.CreateByName = reader["CreateByName"].ToString();
                compacting.UpdateByName = reader["UpdateByName"].ToString();
                compacting.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                compacting = new Compacting();
            }

            return compacting;
        }

        internal static Compacting Revise(Compacting compacting)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM CompactingView WHERE BarCode = '" + compacting.fabric.BarCode + "'";
                
                string query = "INSERT INTO Compacting (FabricID, CMcNoID, CProductionTypeID, CTemp, CFeed, CSpeed, CSteam, CCompaction, CDia, CGSM, CRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + compacting.fabric.Id + "," + compacting.mc.Id + "," + compacting.pr.Id + ",'" + compacting.Temp + "','" + compacting.Feed + "','" + compacting.Speed + "','" + compacting.Steam + "','" + compacting.Compaction + "','" + compacting.Dia + "','" + compacting.GSM + "','" + compacting.Remarks + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM CompactingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            compacting = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                compacting = new Compacting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return compacting;
        }

        internal static Compacting Approve(Compacting compacting)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Compacting SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + compacting.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM CompactingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            compacting = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                compacting = new Compacting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return compacting;
        }

        internal static Compacting Unapprove(Compacting compacting)
        {
            try
            {
                string query = " UPDATE Compacting SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + compacting.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM CompactingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            compacting = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                compacting = new Compacting();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return compacting;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Compacting)";
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
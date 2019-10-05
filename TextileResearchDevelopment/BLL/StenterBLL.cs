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
        public static List<Stenter> cws = new List<Stenter>();
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
                string query = "SELECT * FROM StenterMcNoType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType mc = new MachineType();
                        mc.Id = Convert.ToInt32(reader["Id"]);
                        mc.McNo = reader["StenterMcNo"].ToString();

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
                string query = "SELECT * FROM SProductionType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        ProductionType p = new ProductionType();
                        p.Id = Convert.ToInt32(reader["Id"]);
                        p.Production = reader["SProduction"].ToString();

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

        internal static Stenter CRUD(Stenter stenter)
        {
            try
            {
                string query = "";
                if (stenter.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Stenter SET FabricID = '" + stenter.fabric.Id + "', SMcNoID = " + stenter.mc.Id + ", STProductionTypeID = " + stenter.pr.Id + ", STTemp = '" + stenter.Temp + "', STSpeed = '" + stenter.Speed + "', STFeed = '" + stenter.Feed + "', STStreching = '" + stenter.Streching + "', STChemical = '" + stenter.Chemical + "', STDia = '" + stenter.Dia + "', STGSM = '" + stenter.GSM + "', STShrinkage = '" + stenter.Shrinkage + "', STRemarks = '" + stenter.Remarks + "', UpdateBy = (" + GetCreateByQuery + "), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "'";

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM StenterView WHERE Id = " + stenter.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                stenter = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Stenter (FabricID, SMcNoID, STProductionTypeID, STTemp, STSpeed, STFeed, STStreching, STChemical, STDia, STGSM, STShrinkage, STRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + stenter.fabric.Id + "," + stenter.mc.Id + "," + stenter.pr.Id + ",'" + stenter.Temp + "','" + stenter.Speed + "','" + stenter.Feed + "','" + stenter.Streching + "','" + stenter.Chemical + "','" + stenter.Dia + "','" + stenter.GSM + "','" + stenter.Shrinkage + "','" + stenter.Remarks + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM StenterView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                stenter = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Stenter();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return stenter;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM Stenter WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Stenter> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<Stenter>();
                string query = "SELECT * FROM StenterView";
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

        private static Stenter GetObj(SqlDataReader reader)
        {
            Stenter stenter = new Stenter();
            try
            {
                stenter.Id = Convert.ToInt32(reader["Id"]);
                stenter.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                stenter.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                stenter.fabric.OrderNo = reader["OrderNo"].ToString();
                stenter.fabric.RefNo = reader["RefNo"].ToString();
                stenter.fabric.cm.Composition = reader["Composition"].ToString();
                stenter.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                stenter.fabric.BarCode = reader["BarCode"].ToString();
                stenter.fabric.ProcessString = FabricBLL.GetProcessString(reader["BarCode"].ToString());

                stenter.mc.Id = Convert.ToInt32(reader["SMcNoID"]);
                stenter.mc.McNo = reader["StenterMcNo"].ToString();
                stenter.pr.Id = reader["STProductionTypeID"] == DBNull.Value ? 0 : Convert.ToInt32(reader["STProductionTypeID"]);
                stenter.pr.Production = reader["SProduction"] == DBNull.Value ? "" : reader["SProduction"].ToString();
                stenter.Speed = reader["STSpeed"].ToString();
                stenter.Temp = reader["STTemp"].ToString();
                stenter.Speed = reader["STSpeed"].ToString();
                stenter.Feed = reader["STFeed"].ToString();
                stenter.Streching = reader["STStreching"].ToString();
                stenter.Chemical = reader["STChemical"].ToString();
                stenter.Dia = reader["STDia"].ToString();
                stenter.GSM = reader["STGSM"].ToString();
                stenter.Shrinkage = reader["STShrinkage"].ToString();
                stenter.Remarks = reader["STRemarks"] == DBNull.Value ? "" : reader["STRemarks"].ToString();

                stenter.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                stenter.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                stenter.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                stenter.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                stenter.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                stenter.CreateByName = reader["CreateByName"].ToString();
                stenter.UpdateByName = reader["UpdateByName"].ToString();
                stenter.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                stenter = new Stenter();
            }

            return stenter;
        }

        internal static Stenter Revise(Stenter stenter)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM StenterView WHERE BarCode = '" + stenter.fabric.BarCode + "'";

                string query = "INSERT INTO Stenter (FabricID, SMcNoID, STProductionTypeID, STTemp, STSpeed, STFeed, STStreching, STChemical, STDia, STGSM, STShrinkage, STRemarks, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + stenter.fabric.Id + "," + stenter.mc.Id + "," + stenter.pr.Id + ",'" + stenter.Temp + "','" + stenter.Speed + "','" + stenter.Feed + "','" + stenter.Streching + "','" + stenter.Chemical + "','" + stenter.Dia + "','" + stenter.GSM + "','" + stenter.Shrinkage + "','" + stenter.Remarks + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM StenterView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            stenter = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                stenter = new Stenter();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return stenter;
        }

        internal static Stenter Approve(Stenter stenter)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Stenter SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + stenter.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM StenterView WHERE Id = " + stenter.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            stenter = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                stenter = new Stenter();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return stenter;
        }

        internal static Stenter Unapprove(Stenter stenter)
        {
            try
            {
                string query = " UPDATE Stenter SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + stenter.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM StenterView WHERE Id = " + stenter.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            stenter = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                stenter = new Stenter();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return stenter;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Stenter)";
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
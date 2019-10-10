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
        public static List<Dyeing> cws = new List<Dyeing>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<HistoryType> historyTypes = new List<HistoryType>();
        public static List<RFTType> rFTTypes = new List<RFTType>();
        public static List<MachineType> machineTypes = new List<MachineType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static List<MachineType> GetMachineList()
        {
            try
            {
                machineTypes = new List<MachineType>();
                string query = "SELECT * FROM DyeingMcNoType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType mc = new MachineType();
                        mc.Id = Convert.ToInt32(reader["Id"]);
                        mc.McNo = reader["DyeingMcNo"].ToString();

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

        internal static List<RFTType> GetRFTList()
        {
            try
            {
                rFTTypes = new List<RFTType>();
                string query = "SELECT * FROM RFTType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        RFTType rft = new RFTType();
                        rft.Id = Convert.ToInt32(reader["Id"]);
                        rft.RFT = reader["RFT"].ToString();

                        rFTTypes.Add(rft);
                    }
                }
            }
            catch (Exception ex)
            {
                rFTTypes = new List<RFTType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return rFTTypes;
        }

        internal static List<HistoryType> GetHistoryList()
        {
            try
            {
                historyTypes = new List<HistoryType>();
                string query = "SELECT * FROM HistoryType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        HistoryType hs = new HistoryType();
                        hs.Id = Convert.ToInt32(reader["Id"]);
                        hs.History = reader["History"].ToString();

                        historyTypes.Add(hs);
                    }
                }
            }
            catch (Exception ex)
            {
                historyTypes = new List<HistoryType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return historyTypes;
        }

        internal static Dyeing CRUD(Dyeing dyeing)
        {
            try
            {
                string query = "";
                if (dyeing.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Dyeing SET FabricID = '" + dyeing.fabric.Id + "', RFTNoID = " + dyeing.rft.Id + ", HistoryID = " + dyeing.hs.Id + ", DyeingMcNoID = '" + dyeing.mc.Id + "', DSpeed = '" + dyeing.Speed + "', DEnzy = '" + dyeing.Enzyme + "', Recipe = '" + dyeing.Recipe + "', RecipeNo = '" + dyeing.RecipeNo + "', DyeingDate = '" + dyeing.DyeingDate?.ToString("yyyy/MM/dd") + "', DyeingTime = '" + dyeing.Time + "', Dyebath = '" + dyeing.PH + "', Whiteness = '" + dyeing.Value + "', UpdateBy = (" + GetCreateByQuery + "), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "'";

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM DyeingView WHERE Id = " + dyeing.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                dyeing = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Dyeing (FabricID, RFTNoID, HistoryID, DyeingMcNoID, DSpeed, DEnzy, Recipe, DyeingTime, Dyebath, Whiteness, RecipeNo, DyeingDate, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + dyeing.fabric.Id + "," + dyeing.rft.Id + "," + dyeing.hs.Id + "," + dyeing.mc.Id + ",'" + dyeing.Speed + "','" + dyeing.Enzyme + "','" + dyeing.Recipe + "','" + dyeing.Time + "','" + dyeing.PH + "','" + dyeing.Value + "','" + dyeing.RecipeNo + "', '" + dyeing.DyeingDate?.ToString("yyyy/MM/dd") + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM DyeingView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                dyeing = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Dyeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dyeing;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM Dyeing WHERE Id = " + Id + " AND ApprovedStatus = 0";
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
                cws = new List<Dyeing>();
                string query = "SELECT * FROM DyeingView Order By Id desc";
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

        private static Dyeing GetObj(SqlDataReader reader)
        {
            Dyeing dyeing = new Dyeing();
            try
            {
                dyeing.Id = Convert.ToInt32(reader["Id"]);
                dyeing.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                dyeing.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                dyeing.fabric.OrderNo = reader["OrderNo"].ToString();
                dyeing.fabric.RefNo = reader["RefNo"].ToString();
                dyeing.fabric.cm.Composition = reader["Composition"].ToString();
                dyeing.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                dyeing.fabric.BarCode = reader["BarCode"].ToString();
                dyeing.fabric.ProcessString = reader["ProcessString"] == DBNull.Value ? "" : reader["ProcessString"].ToString();
                dyeing.fabric.ProcessText = reader["ProcessText"] == DBNull.Value ? "" : reader["ProcessText"].ToString();
                dyeing.fabric.ColorString = FabricBLL.GetColorString(dyeing.fabric.Id, dyeing.fabric.ProcessString);

                dyeing.rft.Id = Convert.ToInt32(reader["RFTNoID"]);
                dyeing.rft.RFT = reader["RFT"].ToString();
                dyeing.hs.Id = reader["HistoryID"] == DBNull.Value ? 0 : Convert.ToInt32(reader["HistoryID"]);
                dyeing.hs.History = reader["History"] == DBNull.Value ? "" : reader["History"].ToString();
                dyeing.mc.Id = reader["DyeingMcNoID"] == DBNull.Value ? 0 : Convert.ToInt32(reader["DyeingMcNoID"]);
                dyeing.mc.McNo = reader["DyeingMcNo"] == DBNull.Value ? "" : reader["DyeingMcNo"].ToString();
                dyeing.Speed = reader["DSpeed"].ToString();
                dyeing.Enzyme = reader["DEnzy"].ToString();
                dyeing.Recipe = reader["Recipe"].ToString();
                dyeing.RecipeNo = reader["RecipeNo"] == DBNull.Value ? "" : reader["RecipeNo"].ToString();
                dyeing.Time = reader["DyeingTime"].ToString();
                dyeing.DyeingDate = reader.IsDBNull(reader.GetOrdinal("DyeingDate")) == true ? (DateTime?)null : Convert.ToDateTime(reader["DyeingDate"]);
                dyeing.PH = reader["Dyebath"].ToString();
                dyeing.Value = reader["Whiteness"].ToString();

                dyeing.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                dyeing.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                dyeing.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                dyeing.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                dyeing.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                dyeing.CreateByName = reader["CreateByName"].ToString();
                dyeing.UpdateByName = reader["UpdateByName"].ToString();
                dyeing.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                dyeing = new Dyeing();
            }

            return dyeing;
        }

        internal static Dyeing Revise(Dyeing dyeing)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM DyeingView WHERE BarCode = '" + dyeing.fabric.BarCode + "'";

                string query = "";

                query = "INSERT INTO Dyeing (FabricID, RFTNoID, HistoryID, DyeingMcNoID, DSpeed, DEnzy, Recipe, DyeingTime, Dyebath, Whiteness, RecipeNo, DyeingDate, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + dyeing.fabric.Id + "," + dyeing.rft.Id + "," + dyeing.hs.Id + ",'" + dyeing.mc.Id + "','" + dyeing.Speed + "','" + dyeing.Enzyme + "','" + dyeing.Recipe + "','" + dyeing.Time + "','" + dyeing.PH + "','" + dyeing.Value + "','" + dyeing.RecipeNo + "', '" + dyeing.DyeingDate?.ToString("yyyy/MM/dd") + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DyeingView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                dyeing = new Dyeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dyeing;
        }

        internal static Dyeing Approve(Dyeing dyeing)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE Dyeing SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + dyeing.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DyeingView WHERE Id = " + dyeing.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                dyeing = new Dyeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dyeing;
        }

        internal static Dyeing Unapprove(Dyeing dyeing)
        {
            try
            {
                string query = " UPDATE Dyeing SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + dyeing.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM DyeingView WHERE Id = " + dyeing.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dyeing = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                dyeing = new Dyeing();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return dyeing;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Dyeing)";
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
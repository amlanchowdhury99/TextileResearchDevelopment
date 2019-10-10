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
    public class WashingBLL
    {

        public static List<CW> cws = new List<CW>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static List<MachineType> GetMachineList()
        {
            try
            {
                machineTypes = new List<MachineType>();
                string query = "SELECT * FROM CWMcNoType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType mc = new MachineType();
                        mc.Id = Convert.ToInt32(reader["Id"]);
                        mc.McNo = reader["CWMcNo"].ToString();

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

        internal static CW CRUD(CW cw)
        {
            try
            {
                string query = "";
                if (cw.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE ContinueWashing SET FabricID = '" + cw.fabric.Id + "', CWMcNoId = '" + cw.mc.Id + "', CWTemp = '" + cw.Temp + "', CWChemical = '" + cw.Chemical + "', CWSpeed = '" + cw.Speed + "', CWWELength = '" + cw.ElognationLength + "', CWSEWidth = '" + cw.ElognationWidth + "', CWWashDia = '" + cw.Dia + "', UpdateBy = (" + GetCreateByQuery + "), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "'";

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM CWView WHERE Id = " + cw.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cw = GetCWObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO ContinueWashing (FabricID, CWMcNoId, CWTemp, CWChemical, CWSpeed, CWWELength, CWSEWidth, CWWashDia, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + cw.fabric.Id + "," + cw.mc.Id + ",'" + cw.Temp + "','" + cw.Chemical + "','" + cw.Speed + "','" + cw.ElognationLength + "','" + cw.ElognationWidth + "','" + cw.Dia + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM CWView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cw = GetCWObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new CW();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return cw;
        }

        internal static bool DeleteCW(int Id)
        {
            try
            {
                string query = "DELETE FROM ContinueWashing WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<CW> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<CW>();
                string query = "SELECT * FROM CWView Order By Id desc";
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

        private static CW GetCWObj(SqlDataReader reader)
        {
            CW cw = new CW();
            try
            {
                cw.Id = Convert.ToInt32(reader["Id"]);
                cw.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                cw.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                cw.fabric.OrderNo = reader["OrderNo"].ToString();
                cw.fabric.RefNo = reader["RefNo"].ToString();
                cw.fabric.cm.Composition = reader["Composition"].ToString();
                cw.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                cw.fabric.BarCode = reader["BarCode"].ToString();
                cw.fabric.ProcessString = reader["ProcessString"] == DBNull.Value ? "" : reader["ProcessString"].ToString();
                cw.fabric.ProcessText = reader["ProcessText"] == DBNull.Value ? "" : reader["ProcessText"].ToString();
                cw.fabric.ColorString = FabricBLL.GetColorString(cw.fabric.Id, cw.fabric.ProcessString);

                cw.mc.Id = Convert.ToInt32(reader["CWMcNoId"]);
                cw.mc.McNo = reader["CWMcNo"].ToString();
                cw.Temp = reader["CWTemp"].ToString();
                cw.Chemical = reader["CWChemical"].ToString();
                cw.Speed = reader["CWSpeed"].ToString();
                cw.ElognationLength = reader["CWWELength"].ToString();
                cw.ElognationWidth = reader["CWSEWidth"].ToString();
                cw.Dia = reader["CWWashDia"].ToString();

                cw.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                cw.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                cw.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                cw.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                cw.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                cw.CreateByName = reader["CreateByName"].ToString();
                cw.UpdateByName = reader["UpdateByName"].ToString();
                cw.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                cw = new CW();
            }

            return cw;
        }

        internal static CW ReviseCW(CW cw)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM CWView WHERE BarCode = '" + cw.fabric.BarCode + "'";

                string query = "INSERT INTO ContinueWashing (FabricID, CWMcNoId, CWTemp, CWChemical, CWSpeed, CWWELength, CWSEWidth, CWWashDia, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + cw.fabric.Id + "," + cw.mc.Id + ",'" + cw.Temp + "','" + cw.Chemical + "','" + cw.Speed + "','" + cw.ElognationLength + "','" + cw.ElognationWidth + "','" + cw.Dia + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM CWView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            cw = GetCWObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                cw = new CW();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return cw;
        }

        internal static CW ApproveCW(CW cw)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE ContinueWashing SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + cw.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM CWView WHERE Id = " + cw.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            cw = GetCWObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                cw = new CW();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return cw;
        }

        internal static CW UnapproveCW(CW cw)
        {
            try
            {
                string query = " UPDATE ContinueWashing SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + cw.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM CWView WHERE Id = " + cw.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            cw = GetCWObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                cw = new CW();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return cw;
        }

        internal static List<string> GetMatchingData(string text, string Col)
        {
            List<string> matchingList = new List<string>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                string query = "SELECT " + Col + " FROM ContinueWashing WHERE " + Col + " LIKE '%" + text + "%'";
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
    }
}
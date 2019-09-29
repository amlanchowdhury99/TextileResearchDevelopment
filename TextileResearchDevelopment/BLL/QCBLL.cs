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
    public class QCBLL
    {
        public static List<QC> peachList = new List<QC>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static QC CRUD(QC qc)
        {
            try
            {
                string query = "";
                if (qc.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE QC SET FabricID = '" + qc.fabric.Id + "', QDia = '" + qc.Dia + "', QGSM = '" + qc.GSM + "', QShrinkage = '" + qc.Shrinkage + "', QWash = '" + qc.Wash + "', QWater = '" + qc.Water + "', QAcid = '" + qc.Acid + "', QAlkhali = '" + qc.Alkhali + "',  QBursting = '" + qc.Bursting + "', QPilling = '" + qc.Pilling + "', QStrech = '" + qc.Strech + "', QRecovery = '" + qc.Recovery + "', UpdateBy = (" + GetCreateByQuery + "), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "'";

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM QCView WHERE Id = " + qc.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                qc = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO QC (FabricID, QDia, QGSM, QShrinkage, QWash, QWater, QAcid, QAlkhali, QBursting, QPilling, QStrech, QRecovery, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + qc.fabric.Id + ",'" + qc.Dia + "','" + qc.GSM + "','" + qc.Shrinkage + "','" + qc.Wash + "','" + qc.Water + "','" + qc.Acid + "','" + qc.Alkhali + "','" + qc.Bursting + "','" + qc.Pilling + "','" + qc.Strech + "','" + qc.Recovery + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM QCView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                qc = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new QC();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return qc;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM QC WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<QC> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                peachList = new List<QC>();
                string query = "SELECT * FROM QCView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        peachList.Add(GetObj(reader));
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

            return peachList;
        }

        private static QC GetObj(SqlDataReader reader)
        {
            QC qc = new QC();
            try
            {
                qc.Id = Convert.ToInt32(reader["Id"]);
                qc.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                qc.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                qc.fabric.OrderNo = reader["OrderNo"].ToString();
                qc.fabric.RefNo = reader["RefNo"].ToString();
                qc.fabric.cm.Composition = reader["Composition"].ToString();
                qc.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                qc.fabric.BarCode = reader["BarCode"].ToString();

                qc.Dia = reader["QDia"].ToString();
                qc.GSM = reader["QGSM"].ToString();
                qc.Shrinkage = reader["QShrinkage"].ToString();
                qc.Wash = reader["QWash"] == DBNull.Value ? "" : reader["QWash"].ToString();
                qc.Water = reader["QWater"] == DBNull.Value ? "" : reader["QWater"].ToString();
                qc.Acid = reader["QAcid"] == DBNull.Value ? "" : reader["QAcid"].ToString();
                qc.Alkhali = reader["QAlkhali"] == DBNull.Value ? "" : reader["QAlkhali"].ToString();
                qc.Bursting = reader["QBursting"] == DBNull.Value ? "" : reader["QBursting"].ToString();
                qc.Pilling = reader["QPilling"] == DBNull.Value ? "" : reader["QPilling"].ToString();
                qc.Strech = reader["QStrech"] == DBNull.Value ? "" : reader["QStrech"].ToString();
                qc.Recovery = reader["QRecovery"] == DBNull.Value ? "" : reader["QRecovery"].ToString();

                qc.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                qc.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                qc.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                qc.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                qc.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                qc.CreateByName = reader["CreateByName"].ToString();
                qc.UpdateByName = reader["UpdateByName"].ToString();
                qc.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                qc = new QC();
            }

            return qc;
        }

        internal static QC Revise(QC qc)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM QCView WHERE BarCode = '" + qc.fabric.BarCode + "'";
                
                string query = "INSERT INTO QC (FabricID, QDia, QGSM, QShrinkage, QWash, QWater, QAcid, QAlkhali, QBursting, QPilling, QStrech, QRecovery, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + qc.fabric.Id + ",'" + qc.Dia + "','" + qc.GSM + "','" + qc.Shrinkage + "','" + qc.Wash + "','" + qc.Water + "','" + qc.Acid + "','" + qc.Alkhali + "','" + qc.Bursting + "','" + qc.Pilling + "','" + qc.Strech + "','" + qc.Recovery + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM QCView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            qc = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                qc = new QC();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return qc;
        }

        internal static QC Approve(QC qc)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE QC SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + qc.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM QCView WHERE Id = " + qc.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            qc = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                qc = new QC();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return qc;
        }

        internal static QC Unapprove(QC qc)
        {
            try
            {
                string query = " UPDATE QC SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + qc.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM QCView WHERE Id = " + qc.Id;
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            qc = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                qc = new QC();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return qc;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM QC)";
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
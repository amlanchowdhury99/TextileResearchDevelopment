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
    public class PrintBLL
    {
        public static List<Print> cws = new List<Print>();
        public static List<CompositionType> cmList = new List<CompositionType>();
        public static List<MachineType> machineTypes = new List<MachineType>();
        public static List<PrintFactoryType> printFactoryTypes = new List<PrintFactoryType>();
        public static List<PrintType> printTypes = new List<PrintType>();

        public static List<Fabric> fabrics = new List<Fabric>();
        static string connectionStr = DBGateway.connectionString;

        internal static List<MachineType> GetMachineList()
        {
            try
            {
                machineTypes = new List<MachineType>();
                string query = "SELECT * FROM PrintMcNo";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        MachineType mc = new MachineType();
                        mc.Id = Convert.ToInt32(reader["Id"]);
                        mc.McNo = reader["PrintMcNo"].ToString();

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

        internal static List<PrintFactoryType> GetPrintFactoryTypeList()
        {
            try
            {
                printFactoryTypes = new List<PrintFactoryType>();
                string query = "SELECT * FROM PrintFactoryType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        PrintFactoryType p = new PrintFactoryType();
                        p.Id = Convert.ToInt32(reader["Id"]);
                        p.PrintFactory = reader["PrintFactory"].ToString();

                        printFactoryTypes.Add(p);
                    }
                }
            }
            catch (Exception ex)
            {
                printFactoryTypes = new List<PrintFactoryType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return printFactoryTypes;
        }

        internal static List<PrintType> GetPrintTypeList()
        {
            try
            {
                printTypes = new List<PrintType>();
                string query = "SELECT * FROM PrintType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        PrintType p = new PrintType();
                        p.Id = Convert.ToInt32(reader["Id"]);
                        p.PrintName = reader["PrintName"].ToString();

                        printTypes.Add(p);
                    }
                }
            }
            catch (Exception ex)
            {
                printTypes = new List<PrintType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return printTypes;
        }

        internal static Print CRUD(Print print)
        {
            try
            {
                string query = "";
                if (print.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE PrintInfo SET FabricID = '" + print.fabric.Id + "', MachineTypeID = " + print.mc.Id + ", PrintFactoryID = " + print.ptf.Id + ", PrintTypeID = " + print.prt.Id + ", PrintCoverage = '" + print.PrintCoverage + "', OtherInfo = '" + print.OtherInfo + "', UpdateBy = ('" + GetCreateByQuery + "'), UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM PrintView WHERE Id = " + print.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                print = GetObj(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO PrintInfo (FabricID, MachineTypeID, PrintFactoryID, PrintTypeID, PrintCoverage, OtherInfo, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + print.fabric.Id + "," + print.mc.Id + "," + print.ptf.Id + "," + print.prt.Id + ",'" + print.PrintCoverage + "','" + print.OtherInfo + "', 0, 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM PrintView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                print = GetObj(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Print();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return print;
        }

        internal static bool Delete(int Id)
        {
            try
            {
                string query = "DELETE FROM PrintInfo WHERE Id = " + Id + " AND ApprovedStatus = 0";
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

        internal static List<Print> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                cws = new List<Print>();
                string query = "SELECT * FROM PrintView";
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
         
        private static Print GetObj(SqlDataReader reader)
        {
            Print print = new Print();
            try
            {
                print.Id = Convert.ToInt32(reader["Id"]);
                print.fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                print.fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                print.fabric.OrderNo = reader["OrderNo"].ToString();
                print.fabric.RefNo = reader["RefNo"].ToString();
                print.fabric.cm.Composition = reader["Composition"].ToString();
                print.fabric.Id = Convert.ToInt32(reader["FabricID"]);
                print.fabric.BarCode = reader["BarCode"].ToString();

                print.mc.Id = Convert.ToInt32(reader["MachineTypeID"]);
                print.mc.McNo = reader["PrintMcNo"].ToString();
                print.ptf.Id = Convert.ToInt32(reader["PrintFactoryID"]);
                print.ptf.PrintFactory = reader["PrintFactory"].ToString();
                print.prt.Id = Convert.ToInt32(reader["PrintTypeID"]);
                print.prt.PrintName = reader["PrintName"].ToString();
                print.PrintCoverage = reader["PrintCoverage"].ToString();
                print.OtherInfo = reader["OtherInfo"].ToString();

                print.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                print.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                print.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                print.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                print.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                print.CreateByName = reader["CreateByName"].ToString();
                print.UpdateByName = reader["UpdateByName"].ToString();
                print.ApprovedByName = reader["ApprovedByName"].ToString();
            }

            catch (Exception ex)
            {
                print = new Print();
            }

            return print;
        }

        internal static Print Revise(Print print)
        {
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string GetReviseQuery = "SELECT Count(Id)-1 AS ReviseStatus FROM PrintView WHERE BarCode = '" + print.fabric.BarCode + "'";
                
                string query = "INSERT INTO PrintInfo (FabricID, MachineTypeID, PrintFactoryID, PrintTypeID, PrintCoverage, OtherInfo, ReviseStatus, ApprovedStatus, CreateBy, CreateTime) VALUES(" + print.fabric.Id + "," + print.mc.Id + "," + print.ptf.Id + "," + print.prt.Id + ",'" + print.PrintCoverage + "','" + print.OtherInfo + "', ((" + GetReviseQuery + ") + 1), 0, (" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "')";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM PrintView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            print = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                print = new Print();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return print;
        }

        internal static Print Approve(Print print)
        {
            try
            {
                string GetApproveByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " UPDATE PrintInfo SET ApprovedStatus = 1, ApprovedBy = (" + GetApproveByQuery + "), ApprovedTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "' WHERE Id = " + print.Id + " AND ApprovedStatus = 0 ";

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM PrintView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            print = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                print = new Print();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return print;
        }

        internal static Print Unapprove(Print print)
        {
            try
            {
                string query = " UPDATE PrintInfo SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE Id = " + print.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM PrintView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            print = GetObj(reader);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                print = new Print();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return print;
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
                string query = "SELECT * FROM FabricView WHERE ID NOT IN (SELECT FabricID FROM Print)";
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
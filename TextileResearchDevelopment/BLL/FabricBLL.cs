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

    public static class FabricBLL
    {
        public static List<Fabric> fabrics = new List<Fabric>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<CompositionType> compositionTypes = new List<CompositionType>();

        static string connectionStr = DBGateway.connectionString;
        

        public static List<Fabric> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                fabrics = new List<Fabric>();
                string query = "SELECT * FROM FabricView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        fabrics.Add(GetFabricObject(reader));
                    }
                }
            }
            catch(Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                cn.Close();
            }

            return fabrics;
        }

        public static List<string> GetMatchingData(string text, string Col)
        {
            List<string> matchingList = new List<string>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                string query = "SELECT "+Col+" FROM Fabric WHERE "+ Col + " LIKE '%"+text+"%'";
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

        public static List<Buyer> GetBuyerTypeList()
        {
            try
            {
                buyers = new List<Buyer>();
                string query = "SELECT * FROM Buyer";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Buyer buyer = new Buyer();
                        buyer.Id = Convert.ToInt32(reader["Id"]);
                        buyer.BuyerName = reader["BuyerName"].ToString();
                        buyers.Add(buyer);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return buyers;
        }

        internal static bool IsFabricDuplicate(Fabric fabric)
        {
            string query = "";
            try
            {
                if (fabric.Id > 0)
                {
                    query = "SELECT Id FROM Fabric WHERE BuyerID = '" + fabric.buyer.Id + "', FabricTypeID = '" + fabric.fb.Id + "', CompositionTypeID = '" + fabric.cm.Id + "', OrderNo = '" + fabric.OrderNo + "', RefNo = '" + fabric.RefNo + "'";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            if(fabric.Id == Convert.ToInt32(reader["Id"]))
                            {
                                return false;
                            }
                            else
                            {
                                return true;
                            }
                        }
                    }
                }
                else
                {
                    query = "SELECT Id FROM Fabric WHERE BuyerID = '" + fabric.buyer.Id + "', FabricTypeID = '" + fabric.fb.Id + "', CompositionTypeID = '" + fabric.cm.Id + "', OrderNo = '" + fabric.OrderNo + "', RefNo = '" + fabric.RefNo + "'";
                    if (DBGateway.recordExist(query))
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                return true;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return true;
        }

        public static List<FabricType> GetFabricTypeList()
        {
            try
            {
                FabricTypes = new List<FabricType>();
                string query = "SELECT * FROM FabricType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        FabricType fabricType = new FabricType();
                        fabricType.Id = Convert.ToInt32(reader["Id"]);
                        fabricType.FabricTypeName = reader["FabricTypeName"].ToString();

                        FabricTypes.Add(fabricType);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return FabricTypes;
        }

        public static List<CompositionType> GetCompositionTypeList()
        {
            try
            {
                compositionTypes = new List<CompositionType>();
                string query = "SELECT * FROM CompositionType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        CompositionType cm = new CompositionType();
                        cm.Id = Convert.ToInt32(reader["Id"]);
                        cm.Composition = reader["Composition"].ToString();

                        compositionTypes.Add(cm);
                    }
                }
            }
            catch (Exception ex)
            {
                return new List<CompositionType>();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return compositionTypes;
        }

        public static User GetFabricProcess(string BarCode)
        {
            User ua = new User();
            try
            {
                string query = "SELECT * FROM FabricProcess WHERE BarCode = "+ BarCode;
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        ua = GetFabricProcessObject(reader);
                    }
                }
            }
            catch (Exception ex)
            {
                return new User();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }

            return ua;
        }

        internal static string GetSerial(string barCodePattern)
        {
            int Result = 1;
            try
            {
                string query = "SELECT COUNT(*) AS RowsCount FROM Fabric WHERE BarCode LIKE '"+barCodePattern+"%'";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Result = reader.IsDBNull(reader.GetOrdinal("RowsCount")) == true ? 1 : Convert.ToInt32(reader["RowsCount"]) + 1;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Result.ToString();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Result.ToString();
        }

        public static Buyer AddBuyerType(Buyer buyer)
        {

            string query = "";
            try
            {
                if(buyer.Id > 0)
                {
                    query = "UPDATE BUYER SET BueryName = '" + buyer.BuyerName + "' WHERE Id = " + buyer.Id;
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM BUYER WHERE Id = " + buyer.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                buyer.Id = Convert.ToInt32(reader["Id"]);
                                buyer.BuyerName = reader["BuyerName"].ToString();
                            }
                        }
                    }
                }
                else
                {
                    query = "INSERT INTO BUYER (BueryName) VALUES('" + buyer.BuyerName + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 (Id) AS Id FROM BUYER order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                buyer.Id = Convert.ToInt32(reader["Id"]);
                                buyer.BuyerName = reader["BuyerName"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Buyer();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return buyer;
        }

        public static CompositionType AddCompositionType(CompositionType cm)
        {

            string query = "";
            try
            {
                if (cm.Id > 0)
                {
                    query = "UPDATE CompositionType SET Composition = '" + cm.Composition + "' WHERE Id = " + cm.Id;
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM CompositionType WHERE Id = " + cm.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cm.Id = Convert.ToInt32(reader["Id"]);
                                cm.Composition = reader["Composition"].ToString();
                            }
                        }
                    }
                }
                else
                {
                    query = "INSERT INTO CompositionType (Composition) VALUES('" + cm.Composition + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 (Id) AS Id FROM CompositionType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                cm.Id = Convert.ToInt32(reader["Id"]);
                                cm.Composition = reader["Composition"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new CompositionType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return cm;
        }

        public static FabricType AddFabricType(FabricType fabricType)
        {

            string query = "";
            try
            {
                if(fabricType.Id > 0)
                {
                    query = "UPDATE FabricType SET FabricTypeName = '" + fabricType.FabricTypeName + "' WHERE Id = "+fabricType.Id;
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM FabricType WHERE Id = " + fabricType.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                fabricType.Id = Convert.ToInt32(reader["Id"]);
                                fabricType.FabricTypeName = reader["FabricName"].ToString();
                            }
                        }
                    }
                }
                else
                {
                    query = "INSERT INTO FabricType (FabricTypeName) VALUES('" + fabricType.FabricTypeName + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 (Id) AS Id FROM FabricType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                fabricType.Id = Convert.ToInt32(reader["Id"]);
                                fabricType.FabricTypeName = reader["FabricName"].ToString();
                            }
                        }
                    }
                }
                
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return new FabricType();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return fabricType;
        }

        public static Fabric CRUD(Fabric fabric)
        {
            try
            {
                string query = "";
                if (fabric.Id > 0)
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "UPDATE Fabric SET BuyerID = '" + fabric.buyer.Id + "', FabricTypeID = '" + fabric.fb.Id + "', CompositionTypeID = '" + fabric.cm.Id + "', OrderNo = '" + fabric.OrderNo + "', Color = '" + fabric.Color + "', RefNo = '" + fabric.RefNo + "', BatchNo = '" + fabric.BatchNo + "', Season = '" + fabric.Season + "', UpdateBy = ('" + GetCreateByQuery + "'), Version = '" + fabric.Version + "', UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm");

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        AddFabricProcess(fabric);
                        query = "SELECT * FROM FabricView WHERE Id = "+fabric.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                fabric = GetFabricObject(reader);
                            }
                        }
                    }
                }
                else
                {
                    string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    query = "INSERT INTO Fabric (BuyerID, FabricTypeID, CompositionTypeID, OrderNo, Color, RefNo, BatchNo, Season, CreateBy, CreateTime, UpdateTime, Barcode, Version) VALUES(" + fabric.buyer.Id + "," + fabric.fb.Id + "," + fabric.cm.Id + ",'" + fabric.OrderNo + "','" + fabric.Color + "','" + fabric.RefNo + "','" + fabric.BatchNo + "','" + fabric.Season + "',(" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "','" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "','" + fabric.BarCode + "', '"+fabric.Version+"')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        AddFabricProcess(fabric);
                        query = "SELECT TOP 1 * FROM FabricView order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                fabric = GetFabricObject(reader);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return new Fabric();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return fabric;
        }

        private static Boolean AddFabricProcess(Fabric fabric)
        {
            try
            {
                string query = "";
                if (fabric.Id > 0)
                {
                    query = "UPDATE FabricProcess SET Knit = " + fabric.ua.Knit + ", CW = " + fabric.ua.CW + ", HSP = " + fabric.ua.HSP + ", Dyeing = " + fabric.ua.Dyeing + ", Dryer = " + fabric.ua.Dryer + ", Stenter = " + fabric.ua.Stenter + ", Compacting = " + fabric.ua.Compacting + ", Peach = " + fabric.ua.Peach + ", Brush = " + fabric.ua.Brush + ", PrintInfo = " + fabric.ua.PrintInfo + ", QC = " + fabric.ua.QC + ", Singeing = " + fabric.ua.Singeing + " WHERE BarCode = " + fabric.BarCode;

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        return true;
                    }
                }
                else
                {
                    query = "INSERT INTO FabricProcess (BarCode, Knit, CW, HSP, Dyeing, Dryer, Stenter, Compacting, Peach, Brush, PrintInfo, QC, Singeing) VALUES(" + fabric.BarCode + "," + fabric.ua.Knit + "," + fabric.ua.CW + "," + fabric.ua.HSP + "," + fabric.ua.Dyeing + "," + fabric.ua.Dryer + "," + fabric.ua.Stenter + "," + fabric.ua.Compacting + "," + fabric.ua.Peach + "," + fabric.ua.Brush + "," + fabric.ua.PrintInfo + "," + fabric.ua.QC + "," + fabric.ua.Singeing + ")";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        return true;
                    }
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
            return true;
        }

        private static Fabric GetFabricObject(SqlDataReader reader)
        {
            Fabric fabric = new Fabric();
            try
            {
                fabric.Id = Convert.ToInt32(reader["Id"]);
                fabric.BarCode = reader["BarCode"].ToString();
                fabric.ua = GetFabricProcessObject(reader);
                fabric.buyer.Id = Convert.ToInt32(reader["BuyerID"]);
                fabric.fb.Id = Convert.ToInt32(reader["FabricTypeID"]);
                fabric.cm.Id = Convert.ToInt32(reader["CompositionTypeID"]);
                fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                fabric.cm.Composition = reader["Composition"].ToString();
                fabric.OrderNo = reader["OrderNo"].ToString();
                fabric.Color = reader["Color"].ToString();
                fabric.Season = reader["Season"].ToString();
                fabric.RefNo = reader["RefNo"].ToString();
                fabric.BatchNo = reader["BatchNo"].ToString();
                fabric.Version = reader["Version"].ToString();
                fabric.CreateBy = reader["CreateByName"].ToString();
                fabric.CreateTime = reader["CreateTime"].ToString();
                fabric.UpdateBy = reader["UpdateByName"].ToString();
                fabric.UpdateTime = reader["UpdateTime"].ToString();
            }
            catch(Exception ex)
            {
                return new Fabric();
            }
            return fabric;
        }

        private static User GetFabricProcessObject(SqlDataReader reader)
        {
            User ua = new User();
            try
            {
                ua.Id = Convert.ToInt32(reader["Id"]);
                ua.Knit = Convert.ToInt32(reader["Knit"]);
                ua.CW = Convert.ToInt32(reader["CW"]);
                ua.HSP = Convert.ToInt32(reader["HSP"]);
                ua.Singeing = Convert.ToInt32(reader["Singeing"]);
                ua.Dyeing = Convert.ToInt32(reader["Dyeing"]);
                ua.Dryer = Convert.ToInt32(reader["Dryer"]);
                ua.Stenter = Convert.ToInt32(reader["Stenter"]);
                ua.Compacting = Convert.ToInt32(reader["Compacting"]);
                ua.Peach = Convert.ToInt32(reader["Peach"]);
                ua.Brush = Convert.ToInt32(reader["Brush"]);
                ua.PrintInfo = Convert.ToInt32(reader["PrintInfo"]);
                ua.QC = Convert.ToInt32(reader["QC"]);
            }
            catch (Exception ex)
            {
                return new User();
            }
            return ua;
        }

        internal static bool DeleteFabric(int Id)
        {
            try
            {
                string query = "DELETE FROM Fabric WHERE Id = " + Id;
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

        internal static bool DeleteBuyer(int Id)
        {
            try
            {
                string query = "DELETE FROM Buyer WHERE Id = " + Id;
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

        internal static bool DeleteFabricType(int Id)
        {
            try
            {
                string query = "DELETE FROM FabricType WHERE Id = " + Id;
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

        internal static bool DeleteCompositionType(int Id)
        {
            try
            {
                string query = "DELETE FROM CompositionType WHERE Id = " + Id;
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


    }
}
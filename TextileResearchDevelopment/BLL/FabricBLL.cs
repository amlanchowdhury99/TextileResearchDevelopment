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
        public static List<StatusType> statusTypes = new List<StatusType>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<FabricUnitType> FabricUnitTypes = new List<FabricUnitType>();
        public static List<CompositionType> compositionTypes = new List<CompositionType>();

        static string connectionStr = DBGateway.connectionString;


        public static List<Fabric> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                fabrics = new List<Fabric>();
                string query = "SELECT * FROM FabricView Order By Id desc";
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
            catch (Exception ex)
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
                string query = "SELECT " + Col + " FROM Fabric WHERE " + Col + " LIKE '%" + text + "%'";
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

        internal static List<StatusType> GetStatusTypeList()
        {
            try
            {
                statusTypes = new List<StatusType>();
                string query = "SELECT * FROM ApprovalStatusType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        StatusType statusType = new StatusType();
                        statusType.Id = Convert.ToInt32(reader["Id"]);
                        statusType.Status = reader["FinalApprovalStatus"].ToString();
                        statusTypes.Add(statusType);
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

            return statusTypes;
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
                        buyer.Status = GetStatusSL(Convert.ToInt32(reader["Id"]), "BuyerID") == true ? 1 : 0;
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

        private static bool GetStatusSL(int Id, string colName)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn; cn.Open();
            try
            {
                var columnsName = new List<string>();
                string query = "SELECT * FROM Fabric WHERE " + colName + " = " + Id;
                cm.CommandText = query;
                reader1 = cm.ExecuteReader();
                if (reader1.Read())
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
                cn.Close();
            }
            return false;
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
                            if (fabric.Id == Convert.ToInt32(reader["Id"]))
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

        internal static string GetProcessString(string BarCode)
        {
            var columnsName = "";
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn; cn.Open();
            try
            {
                string query = " SELECT * FROM FabricProcess WHERE BarCode = '" + BarCode + "'";
                cm.CommandText = query;
                reader1 = cm.ExecuteReader();
                if (reader1.HasRows)
                {
                    while (reader1.Read())
                    {
                        for (int i = 0; i < reader1.FieldCount; i++)
                        {
                            if (reader1.GetValue(i).ToString() == "1")
                            {
                                columnsName = columnsName == "" ? reader1.GetName(i).ToString() : columnsName + " -> " + reader1.GetName(i).ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return "";
            }
            finally
            {
                cn.Close();
            }

            return columnsName;
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
                        fabricType.Status = GetStatusSL(Convert.ToInt32(reader["Id"]), "FabricTypeID") == true ? 1 : 0;
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

        public static List<FabricUnitType> GetFabricUnitTypeList()
        {
            try
            {
                FabricUnitTypes = new List<FabricUnitType>();
                string query = "SELECT * FROM FabricUnitType";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        FabricUnitType fabricUnitType = new FabricUnitType();
                        fabricUnitType.Id = Convert.ToInt32(reader["Id"]);
                        fabricUnitType.FabricUnit = reader["FabricUnit"].ToString();
                        FabricUnitTypes.Add(fabricUnitType);
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

            return FabricUnitTypes;
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
                        cm.Status = GetStatusSL(Convert.ToInt32(reader["Id"]), "CompositionTypeID") == true ? 1 : 0;
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
                string query = "SELECT * FROM FabricProcess WHERE BarCode = " + BarCode;
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
                string query = "SELECT COUNT(*) AS RowsCount FROM Fabric WHERE BarCode LIKE '" + barCodePattern + "%'";
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
                if (buyer.Id > 0)
                {
                    query = "UPDATE BUYER SET BuyerName = '" + buyer.BuyerName + "' WHERE Id = " + buyer.Id;
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
                    query = "INSERT INTO BUYER (BuyerName) VALUES('" + buyer.BuyerName + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM BUYER order by Id desc";
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

        internal static Fabric ResetFabric(Fabric fabric)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); cm.Connection = cn; cn.Open();
            try
            {
                string query = " SELECT * FROM Fabric WHERE BarCode = '" + fabric.BarCode + "'";
                string tableName = "";
                List<int> ProcessStringList = new List<int>();
                SqlDataReader reader = DBGateway.GetFromDB(query);

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        ProcessStringList = reader["ProcessString"].ToString().Split(',').Select(int.Parse).ToList();
                    }
                }
                if (ProcessStringList.Count > 0)
                {
                    foreach (var i in ProcessStringList)
                    {
                        tableName = new User().Sectors[(i + 1).ToString()];
                        if (tableName == "Knit")
                        {
                            cm.CommandText = "UPDATE Knitting SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE FabricID = " + fabric.Id;
                            cm.ExecuteNonQuery();
                        }
                        else if (tableName == "CW")
                        {
                            cm.CommandText = "UPDATE ContinueWashing SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE FabricID = " + fabric.Id;
                            cm.ExecuteNonQuery();
                        }
                        else if (tableName == "Print")
                        {
                            cm.CommandText = "UPDATE PrintInfo SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE FabricID = " + fabric.Id;
                            cm.ExecuteNonQuery();
                        }
                        else
                        {
                            cm.CommandText = "UPDATE " + tableName + " SET ApprovedStatus = 0, ApprovedBy = 0, ApprovedTime = NULL WHERE FabricID = " + fabric.Id;
                            cm.ExecuteNonQuery();
                        }
                    }
                }
                cm.CommandText = "UPDATE Fabric SET FinalApprovalID = 1 WHERE BarCode = '" + fabric.BarCode + "'";
                cm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                fabric = new Fabric();
            }
            finally
            {
                cn.Close();

                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return fabric;
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
                        query = "SELECT TOP 1 * FROM CompositionType order by Id desc";
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
                if (fabricType.Id > 0)
                {
                    query = "UPDATE FabricType SET FabricTypeName = '" + fabricType.FabricTypeName + "' WHERE Id = " + fabricType.Id;
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT * FROM FabricType WHERE Id = " + fabricType.Id;
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                fabricType.Id = Convert.ToInt32(reader["Id"]);
                                fabricType.FabricTypeName = reader["FabricTypeName"].ToString();
                            }
                        }
                    }
                }
                else
                {
                    query = "INSERT INTO FabricType (FabricTypeName) VALUES('" + fabricType.FabricTypeName + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 * FROM FabricType order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                fabricType.Id = Convert.ToInt32(reader["Id"]);
                                fabricType.FabricTypeName = reader["FabricTypeName"].ToString();
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
                    query = "UPDATE Fabric SET BuyerID = '" + fabric.buyer.Id + "', FabricTypeID = '" + fabric.fb.Id + "', CompositionTypeID = '" + fabric.cm.Id + "', OrderNo = '" + fabric.OrderNo + "', Color = '" + fabric.Color + "', RefNo = '" + fabric.RefNo + "', BatchNo = '" + fabric.BatchNo + "', Season = '" + fabric.Season + "', UpdateBy = (" + GetCreateByQuery + "), Version = '" + fabric.Version + "', ProcessString = '" + fabric.ProcessString + "', ProcessText = '" + fabric.ProcessText + "', UpdateTime = '" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "', Rate = '" + fabric.Rate + "', FabricUnitTypeID = " + fabric.fut.Id + ", Merchandiser = '" + fabric.Merchandiser + "' WHERE Id = "+ fabric.Id;

                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        //AddFabricProcess(fabric);
                        query = "SELECT * FROM FabricView WHERE Id = " + fabric.Id;
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
                    query = "INSERT INTO Fabric (BuyerID, FabricTypeID, CompositionTypeID, OrderNo, Color, RefNo, BatchNo, Season, Status, CreateBy, CreateTime, UpdateTime, Barcode, Version, FinalApprovalID, ProcessString, ProcessText, Rate, FabricUnitTypeID, Merchandiser) VALUES(" + fabric.buyer.Id + "," + fabric.fb.Id + "," + fabric.cm.Id + ",'" + fabric.OrderNo + "','" + fabric.Color + "','" + fabric.RefNo + "','" + fabric.BatchNo + "','" + fabric.Season + "', 0 ,(" + GetCreateByQuery + "),'" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "','" + DateTime.Now.ToString("yyyy/MM/dd HH:mm") + "','" + fabric.BarCode + "', '" + fabric.Version + "', 1, '" + fabric.ProcessString + "', '" + fabric.ProcessText + "', '" + fabric.Rate + "', " + fabric.fut.Id + ", '" + fabric.Merchandiser + "')";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        //AddFabricProcess(fabric);
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
                    string BarCodeQuery = "SELECT BarCode FROM Fabric WHERE Id = " + fabric.Id;
                    query = "UPDATE FabricProcess SET Knit = " + fabric.ua.Knit + ", CW = " + fabric.ua.CW + ", HSP = " + fabric.ua.HSP + ", Dyeing = " + fabric.ua.Dyeing + ", Dryer = " + fabric.ua.Dryer + ", Stenter = " + fabric.ua.Stenter + ", Compacting = " + fabric.ua.Compacting + ", Peach = " + fabric.ua.Peach + ", Brush = " + fabric.ua.Brush + ", PrintInfo = " + fabric.ua.PrintInfo + ", QC = " + fabric.ua.QC + ", Singeing = " + fabric.ua.Singeing + " WHERE BarCode = (" + BarCodeQuery + ")";

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

                //fabric.ua = GetFabricProcessObject(reader);
                fabric.ProcessString = reader["ProcessString"] == DBNull.Value ? "" : reader["ProcessString"].ToString();
                fabric.ProcessText = reader["ProcessText"] == DBNull.Value ? "" : reader["ProcessText"].ToString();
                fabric.ColorString = GetColorString(fabric.Id, fabric.ProcessString);
                fabric.buyer.Id = Convert.ToInt32(reader["BuyerID"]);
                fabric.fb.Id = Convert.ToInt32(reader["FabricTypeID"]);
                fabric.cm.Id = Convert.ToInt32(reader["CompositionTypeID"]);
                fabric.st.Id = Convert.ToInt32(reader["FinalApprovalID"]);
                fabric.st.Status = reader["FinalApprovalStatus"].ToString();
                fabric.Rate = reader["Rate"] == DBNull.Value ? "" : reader["Rate"].ToString();
                fabric.Merchandiser = reader["Merchandiser"] == DBNull.Value ? "" : reader["Merchandiser"].ToString();
                fabric.fut.Id = reader["FabricUnitTypeID"] == DBNull.Value ? 0 : Convert.ToInt32(reader["FabricUnitTypeID"]);
                fabric.fut.FabricUnit = reader["FabricUnit"] == DBNull.Value ? "" : reader["FabricUnit"].ToString();
                fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                fabric.cm.Composition = reader["Composition"].ToString();
                fabric.OrderNo = reader["OrderNo"].ToString();
                fabric.Color = reader["Color"].ToString();
                fabric.Status = GetFabricStatus(fabric.Id) > 0 ? "Active" : "Idle";
                fabric.Season = reader["Season"].ToString();
                fabric.RefNo = reader["RefNo"].ToString();
                fabric.BatchNo = reader["BatchNo"].ToString();
                fabric.Version = reader["Version"].ToString();
                fabric.CreateBy = reader["CreateByName"].ToString();
                fabric.CreateTime = reader["CreateTime"].ToString();
                fabric.UpdateBy = reader["UpdateByName"].ToString();
                fabric.UpdateTime = reader["UpdateTime"].ToString();

            }
            catch (Exception ex)
            {
                return new Fabric();
            }
            return fabric;
        }

        public static string GetColorString(int Id, string processString)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn;
            string query = ""; var ColorString = "";
            try
            {
                var ProcessStringList = new List<int>();
                ProcessStringList = processString.ToString().Split(',').Select(int.Parse).ToList();

                if (ProcessStringList.Count > 0)
                {
                    foreach (var i in ProcessStringList)
                    {
                        string tableName = new User().Sectors[(i + 1).ToString()];
                        if (tableName == "Knit")
                        {
                            tableName = "Knitting";
                        }
                        else if (tableName == "CW")
                        {
                            tableName = "ContinueWashing";
                        }
                        else if (tableName == "Print")
                        {
                            tableName = "PrintInfo";
                        }

                        query = " SELECT * FROM " + tableName + " WHERE FabricID = " + Id + " AND ApprovedStatus = 1";
                        cm.CommandText = query;
                        cn.Open();
                        reader1 = cm.ExecuteReader();
                        if (reader1.Read())
                        {
                            ColorString = ColorString == "" ? "1" : ColorString + ",1";
                        }
                        else
                        {
                            ColorString = ColorString == "" ? "0" : ColorString + ",0";
                        }
                        cn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                return "";
            }
            finally
            {
                cn.Close();
            }
            return ColorString;
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

        internal static bool DeleteFabric(int Id, string BarCode)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); cm.Connection = cn; cn.Open();
            try
            {
                string query = "DELETE FROM Fabric WHERE Id = " + Id;
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    var columnsName = new User().Sectors.Values.ToList();
                    columnsName.RemoveRange(0, 2);

                    foreach (var i in columnsName)
                    {
                        if (i.ToString() == "Knit")
                        {
                            cm.CommandText = "DELETE YarnDetails WHERE KnitID = (SELECT TOP 1(Id) FROM Knitting WHERE FabricID = " + Id + ")";
                            cm.ExecuteNonQuery();
                            cm.CommandText = "DELETE YarnDyedRepeat WHERE KnitID = (SELECT TOP 1(Id) FROM Knitting WHERE FabricID = " + Id + ")";
                            cm.ExecuteNonQuery();
                            cm.CommandText = "DELETE Knitting WHERE FabricID = " + Id;
                            cm.ExecuteNonQuery();

                        }
                        else if (i.ToString() == "CW")
                        {
                            cm.CommandText = "DELETE ContinueWashing WHERE FabricID = " + Id;
                            cm.ExecuteNonQuery();
                        }
                        else if (i.ToString() == "Print")
                        {
                            cm.CommandText = "DELETE PrintInfo WHERE FabricID = " + Id;
                            cm.ExecuteNonQuery();
                        }
                        else
                        {
                            cm.CommandText = "DELETE " + i.ToString() + " WHERE FabricID = " + Id;
                            cm.ExecuteNonQuery();
                        }
                    }
                    cm.CommandText = "DELETE FabricProcess WHERE BarCode = '" + BarCode + "'";
                    cm.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                cn.Close();
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return true;
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
                            fabric.st.Id = Convert.ToInt32(reader["FinalApprovalID"]);
                            fabric.st.Status = reader["FinalApprovalStatus"].ToString();
                            fabric.LastProcess = GetLastProcess(fabric.Id) == true ? "Complete" : "InComplete";
                            fabric.buyer.BuyerName = reader["BuyerName"].ToString();
                            fabric.fb.FabricTypeName = reader["FabricTypeName"].ToString();
                            fabric.cm.Composition = reader["Composition"].ToString();
                            fabric.OrderNo = reader["OrderNo"].ToString();
                            fabric.RefNo = reader["RefNo"].ToString();
                            fabric.CreateTime = reader["CreateTime"].ToString();

                            if (fabricearchObj.Note == "Report")
                            {
                                if (fabricearchObj.st.Id > 0)
                                {
                                    if (fabricearchObj.st.Id == fabric.st.Id)
                                    {
                                        fabrics.Add(fabric);
                                    }
                                }
                                else
                                {
                                    fabrics.Add(fabric);
                                }
                            }
                            else
                            {
                                fabrics.Add(fabric);
                            }
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

        private static bool GetLastProcess(int Id)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn; cn.Open();
            try
            {
                var ProcessStringList = new List<int>();
                string query = "SELECT * FROM Fabric WHERE Id = " + Id;
                cm.CommandText = query; reader1 = cm.ExecuteReader();
                if (reader1.HasRows)
                {
                    while (reader1.Read())
                    {
                        ProcessStringList = reader1["ProcessString"].ToString().Split(',').Select(int.Parse).ToList();
                    }
                }
                cn.Close();
                string LastSectorName = new User().Sectors[(ProcessStringList[ProcessStringList.Count - 1] + 1).ToString()];
                if (LastSectorName == "Knit")
                {
                    LastSectorName = "Knitting";
                }
                else if (LastSectorName == "CW")
                {
                    LastSectorName = "ContinueWashing";
                }
                else if (LastSectorName == "Print")
                {
                    LastSectorName = "PrintInfo";
                }

                query = "SELECT * FROM " + LastSectorName + " WHERE FabricID = " + Id + " AND ApprovedStatus = 1";
                cm.CommandText = query;
                cn.Open();
                if (cm.ExecuteReader().Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                cn.Close();
            }
        }

        internal static bool IsDuplicate(Fabric fabric)
        {
            try
            {
                string query = "";

                query = " SELECT Count(*) AS count FROM Fabric WHERE BuyerID = " + fabric.buyer.Id + " AND FabricTypeID = " + fabric.fb.Id + " AND CompositionTypeID = " + fabric.cm.Id + " AND OrderNo = '" + fabric.OrderNo + "' AND RefNo = '" + fabric.RefNo + "'";

                int rowsCount = DBGateway.GetNumberRows(query);

                if (fabric.Id > 0)
                {
                    if (rowsCount == 1)
                    {
                        int Id = fabric.Id;
                        query = " SELECT Id FROM Fabric WHERE BuyerID = " + fabric.buyer.Id + " AND FabricTypeID = " + fabric.fb.Id + " AND CompositionTypeID = " + fabric.cm.Id + " AND OrderNo = '" + fabric.OrderNo + "' AND RefNo = '" + fabric.RefNo + "'";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.Read())
                        {
                            Id = Convert.ToInt32(reader["Id"]);
                        }
                        DBGateway.connection.Close();
                        if (Id != fabric.Id)
                        {
                            return true;
                        }
                    }
                }

                return rowsCount > -1 ? fabric.Id > 0 ? rowsCount > 1 ? true : false : rowsCount > 0 ? true : false : true;
            }
            catch (Exception ex)
            {
                return true;
            }
        }

        public static string GetfabricearchQuery(Fabric fabricearchObj)
        {
            try
            {
                string query1 = GetValidFabric(fabricearchObj);
                string tableName = "";

                if (query1 != "")
                {
                    if (fabricearchObj.Note == "Knit")
                    {
                        tableName = "Knitting";
                    }
                    else if (fabricearchObj.Note == "CW")
                    {
                        tableName = "ContinueWashing";
                    }
                    else if (fabricearchObj.Note == "Print")
                    {
                        tableName = "PrintInfo";
                    }
                    else
                    {
                        tableName = fabricearchObj.Note;
                    }
                    string query = "";
                    if (fabricearchObj.Note != "Report")
                    {
                        query = "SELECT * FROM " + query1 + " WHERE A.Id NOT IN (SELECT FabricID FROM " + tableName + ")";
                    }
                    else
                    {
                        query = "SELECT * FROM " + query1;
                    }

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
                    if (fabricearchObj.Note == "Report")
                    {
                        if (fabricearchObj.DateStart != DateTime.MaxValue && fabricearchObj.DateEnd != DateTime.MaxValue)
                        {
                            query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                            query = query + " convert(varchar, CreateTime, 111) BETWEEN '" + fabricearchObj.DateStart.ToString("yyyy/MM/dd") + "' AND '" + fabricearchObj.DateEnd.ToString("yyyy/MM/dd") + "'";
                        }
                    }
                    if (fabricearchObj.RefNo != "" && fabricearchObj.RefNo != null)
                    {
                        query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                        query = query + " RefNo = '" + fabricearchObj.RefNo + "'";
                    }
                    return query;
                }
                else
                {
                    return "";
                }
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        private static string GetValidFabric(Fabric fabricearchObj)
        {
            string mainQuery = "";
            try
            {
                if (fabricearchObj.Note != "Report")
                {
                    var BarCodeList = new List<string>();
                    SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn; cn.Open();
                    string tableName = "";

                    if (fabricearchObj.Note == "Knit")
                    {
                        tableName = "Knitting";
                    }
                    else if (fabricearchObj.Note == "CW")
                    {
                        tableName = "Continue Washing";
                    }
                    else if (fabricearchObj.Note == "HSP")
                    {
                        tableName = "Heat Setting Parameters";
                    }
                    else if (fabricearchObj.Note == "Print")
                    {
                        tableName = "PrintInfo";
                    }
                    else
                    {
                        tableName = fabricearchObj.Note;
                    }

                    string query = " SELECT * FROM Fabric WHERE ProcessText LIKE '%" + tableName.ToUpper() + "%'";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            List<int> ProcessStringList = reader["ProcessString"].ToString().Split(',').Select(int.Parse).ToList();
                            int key = Convert.ToInt32(new User().Sectors.FirstOrDefault(x => x.Value == fabricearchObj.Note).Key) - 1;

                            if (ProcessStringList.IndexOf(key) == 0)
                            {
                                BarCodeList.Add(reader["BarCode"].ToString());
                            }
                            else
                            {
                                int prevFPVal = ProcessStringList[ProcessStringList.IndexOf(key) - 1] + 1;
                                tableName = new User().Sectors[prevFPVal.ToString()];

                                if (tableName == "Knit")
                                {
                                    tableName = "Knitting";
                                }
                                else if (tableName == "CW")
                                {
                                    tableName = "ContinueWashing";
                                }
                                else if (tableName == "Print")
                                {
                                    tableName = "PrintInfo";
                                }
                                string FabricQuery = "SELECT Id FROM Fabric WHERE BarCode = '" + reader["BarCode"].ToString() + "'";
                                string query1 = "SELECT * FROM " + tableName + " WHERE FabricID = (" + FabricQuery + ") AND ApprovedStatus != 0";
                                cm.CommandText = query1;
                                reader1 = cm.ExecuteReader();
                                if (reader1.Read())
                                {
                                    if (!BarCodeList.Contains(reader["BarCode"].ToString()))
                                    {
                                        BarCodeList.Add(reader["BarCode"].ToString());
                                    }
                                }
                            }
                        }
                    }
                    else
                    {
                        mainQuery = "";
                    }
                    if (BarCodeList.Count > 0)
                    {
                        mainQuery = "(SELECT * FROM FabricView WHERE BarCode In (" + string.Join(",", BarCodeList) + ")) AS A";
                    }
                    cn.Close();
                }
                else
                {
                    mainQuery = "FabricView";
                }

            }
            catch (Exception ex)
            {
                return "";
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return mainQuery;
        }

        private static int GetFabricStatus(int Id)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader1; cm.Connection = cn; cn.Open();
            var count = 0;
            try
            {
                var ProcessStringList = new List<int>();
                string query = "SELECT * FROM Fabric WHERE Id = " + Id;
                reader1 = DBGateway.GetFromDB(query);
                if (reader1.HasRows)
                {
                    while (reader1.Read())
                    {
                        ProcessStringList = reader1["ProcessString"].ToString().Split(',').Select(int.Parse).ToList();
                    }
                }
                cn.Close();

                if (ProcessStringList.Count > 0)
                {
                    foreach (var i in ProcessStringList)
                    {
                        string tableName = new User().Sectors[(i + 1).ToString()];
                        if (tableName == "Knit")
                        {
                            query = " SELECT * FROM Knitting WHERE FabricID = " + Id;
                            cm.CommandText = query;
                            cn.Open();
                            reader1 = cm.ExecuteReader();
                            if (reader1.Read())
                            {
                                count++;
                                break;
                            }
                            cn.Close();
                        }
                        else if (tableName == "CW")
                        {
                            query = " SELECT * FROM ContinueWashing WHERE FabricID = " + Id;
                            cm.CommandText = query;
                            cn.Open();
                            reader1 = cm.ExecuteReader();
                            if (reader1.Read())
                            {
                                count++;
                                break;
                            }
                            cn.Close();
                        }
                        else if (tableName == "Print")
                        {
                            query = " SELECT * FROM PrintInfo WHERE FabricID = " + Id;
                            cm.CommandText = query;
                            cn.Open();
                            reader1 = cm.ExecuteReader();
                            if (reader1.Read())
                            {
                                count++;
                                break;
                            }
                            cn.Close();
                        }
                        else
                        {
                            query = " SELECT * FROM " + tableName + " WHERE FabricID = " + Id;
                            cm.CommandText = query;
                            cn.Open();
                            reader1 = cm.ExecuteReader();
                            if (reader1.Read())
                            {
                                count++;
                                break;
                            }
                            cn.Close();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return 0;
            }
            finally
            {
                cn.Close();
            }
            return count;
        }

        public static Fabric FinalApprovedFabric(Fabric fabric)
        {
            try
            {
                string query = " UPDATE Fabric SET FinalApprovalID = 2 WHERE Id = " + fabric.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    fabric.st.Id = 2;
                }
            }
            catch (Exception ex)
            {
                fabric = new Fabric();
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

        public static Fabric FinalUnApprovedFabric(Fabric fabric)
        {
            try
            {
                string query = " UPDATE Fabric SET FinalApprovalID = 1 WHERE Id = " + fabric.Id;

                if (DBGateway.ExecutionToDB(query, 1))
                {
                    fabric.st.Id = 1;
                }
            }
            catch (Exception ex)
            {
                fabric = new Fabric();
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

        public static bool GetUnApprovedStatus(string BarCode, string tableName)
        {
            Boolean result = false; var ProcessStringList = new List<int>();
            int key = Convert.ToInt32(new User().Sectors.FirstOrDefault(x => x.Value == tableName).Key) - 1;
            try
            {
                string query = "SELECT * FROM Fabric WHERE BarCode = '" + BarCode + "' AND FinalApprovalID = 2 ";
                if (DBGateway.recordExist(query))
                {
                    result = false;
                }
                else
                {
                    query = " SELECT * FROM Fabric WHERE BarCode = '" + BarCode + "'";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            ProcessStringList = reader["ProcessString"].ToString().Split(',').Select(int.Parse).ToList();
                        }
                    }

                    if (ProcessStringList.IndexOf(key) == ProcessStringList.Count - 1)
                    {
                        result = true;
                    }
                    else
                    {
                        string nextSectorName = new User().Sectors[((ProcessStringList[ProcessStringList.IndexOf(key) + 1]) + 1).ToString()];
                        string FabricIDQuery = "SELECT Id FROM Fabric WHERE BarCode = '" + BarCode + "'";
                        if (nextSectorName == "Knit")
                        {
                            nextSectorName = "Knitting";
                        }
                        else if (nextSectorName == "CW")
                        {
                            nextSectorName = "ContinueWashing";
                        }
                        else if (nextSectorName == "Print")
                        {
                            nextSectorName = "PrintInfo";
                        }
                        query = "SELECT * FROM " + nextSectorName + " WHERE FabricID = (" + FabricIDQuery + ")";
                        if (DBGateway.recordExist(query))
                        {
                            query = "SELECT * FROM " + nextSectorName + " WHERE FabricID = (" + FabricIDQuery + ") AND ApprovedStatus = 1";
                            if (DBGateway.recordExist(query))
                            {
                                result = false;
                            }
                            else
                            {
                                result = true;
                            }
                        }
                        else
                        {
                            result = true;
                        }
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
            return result;
        }

        public static bool GetApprovedStatus(string BarCode, string tableName)
        {
            Boolean result = false; var ProcessStringList = new List<int>();
            int key = Convert.ToInt32(new User().Sectors.FirstOrDefault(x => x.Value == tableName).Key) - 1;
            try
            {
                string query = " SELECT * FROM Fabric WHERE BarCode = '" + BarCode + "'";

                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        ProcessStringList = reader["ProcessString"].ToString().Split(',').Select(int.Parse).ToList();
                    }
                }

                if (ProcessStringList.IndexOf(key) == 0)
                {
                    result = true;
                }
                else
                {
                    string prevSectorName = new User().Sectors[((ProcessStringList[ProcessStringList.IndexOf(key) - 1]) + 1).ToString()];
                    string FabricIDQuery = "SELECT Id FROM Fabric WHERE BarCode = '" + BarCode + "'";
                    if (prevSectorName == "Knit")
                    {
                        prevSectorName = "Knitting";
                    }
                    else if (prevSectorName == "CW")
                    {
                        prevSectorName = "ContinueWashing";
                    }
                    else if (prevSectorName == "Print")
                    {
                        prevSectorName = "PrintInfo";
                    }
                    query = "SELECT * FROM " + prevSectorName + " WHERE FabricID = (" + FabricIDQuery + ")";
                    if (DBGateway.recordExist(query))
                    {
                        query = "SELECT * FROM " + prevSectorName + " WHERE FabricID = (" + FabricIDQuery + ") AND ApprovedStatus = 1";
                        if (DBGateway.recordExist(query))
                        {
                            result = true;
                        }
                        else
                        {
                            result = false;
                        }
                    }
                    else
                    {
                        result = false;
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
            return result;
        }

    }
}
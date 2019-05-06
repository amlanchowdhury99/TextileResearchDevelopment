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

        public static List<Fabric> GetList()
        {

            try
            {
                fabrics = new List<Fabric>();
                string query = "SELECT * FROM FabricView";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Fabric fabric = new Fabric();
                        fabric.Id = Convert.ToInt32(reader["Id"]);
                        fabric.BuyerID = Convert.ToInt32(reader["BuyerID"]);
                        fabric.FabricTypeID = Convert.ToInt32(reader["FabricTypeID"]);
                        fabric.BuyerName = reader["BuyerName"].ToString();
                        fabric.FabricType = reader["FabricName"].ToString();
                        fabric.OrderNo = reader["OrderNo"].ToString();
                        fabric.Color = reader["Color"].ToString();
                        fabric.Note = reader["Note"].ToString();
                        fabric.Width = reader["Width"].ToString();
                        fabric.GSM = Convert.ToInt32(reader["GSM"]);
                        fabric.ChallanNo = reader["ChallanNo"].ToString();
                        fabric.Status = reader["LabdipStatus"].ToString();
                        fabric.DeliveryQty = Convert.ToDecimal(reader["DeliveryQty"]);
                        fabric.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);

                        fabrics.Add(fabric);
                    }
                }
            }
            catch(Exception ex)
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

            return fabrics;
        }

        public static List<Buyer> GetBuyerList()
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
                        fabricType.FabricTypeName = reader["FabricName"].ToString();

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

        internal static string GetSerial(string barCodePattern)
        {
            int Result = 1;
            try
            {
                string query = "SELECT COUNT(*) AS RowsCount FROM Fabric WHERE BarCode LIKE 'barCodePattern%'";
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

        public static int AddBuyer(Buyer buyer)
        {

            int Id = -1;
            try
            {
                string query = "INSERT INTO BUYER (BueryName) VALUES('" + buyer.BuyerName + "')";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM BUYER order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Id = Convert.ToInt32(reader["Id"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
        }

        public static int AddSample(FabricType fabricType)
        {

            int Id = -1;
            try
            {
                string query = "INSERT INTO FabricType (FabricTypeName) VALUES('" + fabricType.FabricTypeName + "')";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM FabricType order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Id = Convert.ToInt32(reader["Id"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
        }

        public static int AddFabric(Fabric fabric)
        {
            int Id = -1;
            try
            {
                string query = "INSERT INTO Fabric (BuyerID, FabricTypeID, OrderNo, Color, Note, Width, GSM, LabdipStatus, ChallanNo, DeliveryQty, DeliveryDate, Barcode) VALUES(" + fabric.BuyerID+","+fabric.FabricTypeID+",'"+fabric.OrderNo+"','"+fabric.Color+"','"+fabric.Note+"','"+fabric.Width+"',"+fabric.GSM+",'"+fabric.Status+"','"+fabric.ChallanNo+"',"+fabric.DeliveryQty+",'"+ fabric.DeliveryDate.ToString("yyyy-MM-dd")+"','"+fabric.BarCode+"')";
                if(DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM Fabric order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Id = Convert.ToInt32(reader["Id"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
                return Id;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return Id;
        }
    }
}
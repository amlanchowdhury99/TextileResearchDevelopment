using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.DataAccessLayer;
using System.Data;
using System.Data.SqlClient;


namespace TextileResearchDevelopment.BLL
{

    public static class FabricBLL
    {
        public static List<Fabric> fabrics = new List<Fabric>();

        public static List<Fabric> GetList()
        {
            try
            {
                fabrics = new List<Fabric>();
                string query = "SELECT * FROM Fabric";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Fabric fabric = new Fabric();
                        fabric.Id = Convert.ToInt32(reader["Id"]);
                        fabric.BuyerName = reader["BuyerName"].ToString();
                        fabric.FabricType = Convert.ToInt32(reader["FabricType"]);
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

        public static int AddItem(Fabric fabric)
        {
            int Id = -1;
            try
            {
                string query = "INSERT INTO Fabric (BuyerName, FabricType, OrderNo, Color, Note, Width, GSM, LabdipStatus, ChallanNo, DeliveryQty, DeliveryDate, Barcode) VALUES('"+fabric.BuyerName+"','"+fabric.FabricType+"','"+fabric.OrderNo+"','"+fabric.Color+"','"+fabric.Note+"','"+fabric.Width+"',"+fabric.GSM+",'"+fabric.Status+"','"+fabric.ChallanNo+"',"+fabric.DeliveryQty+",'"+ fabric.DeliveryDate.ToString("yyyy-MM-dd")+"','"+fabric.BarCode+"')";
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
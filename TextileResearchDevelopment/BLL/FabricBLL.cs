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
                        fabric.BuyerName = reader["BuyerName"].ToString();
                        fabric.FabricType = Convert.ToInt32(reader["FabricType"]);
                        fabric.OrderNo = reader["OrderNo"].ToString();
                        fabric.Color = reader["Color"].ToString();
                        fabric.Note = reader["Note"].ToString();
                        fabric.Width = reader["Width"].ToString();
                        fabric.GSM = Convert.ToInt32(reader["GSM"]);
                        fabric.Status = reader["LabdipStatus"].ToString();
                        fabric.DeliverQty = Convert.ToDecimal(reader["DeliveryQty"]);
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

    }
}
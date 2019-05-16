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
    public class KnittingBLL
    {
        public static List<Knitting> knittings = new List<Knitting>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<Fabric> fabrics = new List<Fabric>();

        static string connectionStr = DBGateway.connectionString;

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
                            fabric.BuyerName = reader["BuyerName"].ToString();
                            fabric.Id = Convert.ToInt32(reader["Id"]);
                            fabric.FabricType = reader["FabricName"].ToString();
                            fabric.BarCode = reader["Barcode"].ToString();
                            fabric.OrderNo = reader["OrderNo"].ToString();
                            fabric.Note = reader["Note"].ToString();
                            fabric.Width = reader["Width"].ToString();
                            fabric.GSM = Convert.ToInt32(reader["GSM"]);
                            fabric.Status = reader["LabdipStatus"].ToString();
                            fabric.ChallanNo = reader["ChallanNo"].ToString();
                            fabric.DeliveryQty = Convert.ToDecimal(reader["DeliveryQty"]);
                            fabric.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"].ToString());

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
                string query = "SELECT * FROM FabricView ";
                if(fabricearchObj.BarCode != "")
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(fabricearchObj.BarCode);
                }
                if (fabricearchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + fabricearchObj.BuyerID;
                }
                if (fabricearchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + fabricearchObj.FabricTypeID;
                }
                if (fabricearchObj.OrderNo != "" && fabricearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = " + fabricearchObj.OrderNo;
                }
                if (fabricearchObj.Color != "" && fabricearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = " + fabricearchObj.Color;
                }
                if (fabricearchObj.ChallanNo != "" && fabricearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = " + fabricearchObj.ChallanNo;
                }
                if (fabricearchObj.DeliveryDate != DateTime.MaxValue && fabricearchObj.DeliveryDate != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate = '" + fabricearchObj.DeliveryDate.ToString("dd/MM/yyy") + "'";
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
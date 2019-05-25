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
        public static List<Knitting> knittings = new List<Knitting>();
        public static List<Dyeing> dyeings = new List<Dyeing>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<KnitUnitType> KnitUnits = new List<KnitUnitType>();
        public static List<McBrandType> McBrands = new List<McBrandType>();

        static string connectionStr = DBGateway.connectionString;

        public static List<Knitting> KnitSearch(Knitting knitSearchObj)
        {
            knittings = new List<Knitting>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                knittings = new List<Knitting>();
                string query = "";
                query = GetknitSearchQuery(knitSearchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Knitting knit = new Knitting();
                            knit.Id = Convert.ToInt32(reader["KnitId"]);
                            knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                            knit.BarCode = reader["BarCode"].ToString();
                            knit.BuyerName = reader["BuyerName"].ToString();
                            knit.FabricName = reader["FabricName"].ToString();
                            knit.OrderNo = reader["OrderNo"].ToString();
                            knit.Color = reader["Color"].ToString();
                            knit.ChallanNo = reader["ChallanNo"].ToString();

                            knit.McDiaGuage = reader["McDiaGuage"].ToString();
                            knit.YarnCount = reader["YarnCount"].ToString();
                            knit.YarnBrand = reader["YarnBrand"].ToString();
                            knit.YarnLot = reader["YarnLot"].ToString();
                            knit.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            knit.KnitUnit = reader["KnitUnit"].ToString();
                            knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                            knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            knit.McBrand = reader["McBrand"].ToString();
                            knit.OrderDate = Convert.ToDateTime(reader["OrderDate"]);

                            knittings.Add(knit);
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
                knittings = new List<Knitting>();
            }
            finally
            {
                cn.Close();
            }

            return knittings;
        }

        public static string GetknitSearchQuery(Knitting knitSearchObj)
        {
            try
            {
                string query = "SELECT * FROM KnitView ";
                if (knitSearchObj.BarCode != "" && knitSearchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(knitSearchObj.BarCode);
                }
                if (knitSearchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + knitSearchObj.BuyerID;
                }
                if (knitSearchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + knitSearchObj.FabricTypeID;
                }

                if (knitSearchObj.DiaGaugeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DiaGaugeID = " + knitSearchObj.DiaGaugeID;
                }
                if (knitSearchObj.YarnCountID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnCountID = " + knitSearchObj.YarnCountID;
                }

                if (knitSearchObj.KnitUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " KnitUnitID = " + knitSearchObj.KnitUnitID;
                }
                if (knitSearchObj.McBrand > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrand = " + knitSearchObj.McBrand;
                }

                if (knitSearchObj.OrderNo != "" && knitSearchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + knitSearchObj.OrderNo + "'";
                }
                if (knitSearchObj.Color != "" && knitSearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + knitSearchObj.Color + "'";
                }
                if (knitSearchObj.ChallanNo != "" && knitSearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + knitSearchObj.ChallanNo + "'";
                }
                if (knitSearchObj.DeliveryDate != DateTime.MaxValue && knitSearchObj.DeliveryDate != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate = '" + knitSearchObj.DeliveryDate.ToString("dd/MM/yyy") + "'";
                }

                if (knitSearchObj.OrderDate != DateTime.MaxValue && knitSearchObj.OrderDate != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderDate = '" + knitSearchObj.OrderDate.ToString("dd/MM/yyy") + "'";
                }

                if (knitSearchObj.YarnBrand != "" && knitSearchObj.YarnBrand != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnBrand = '" + knitSearchObj.YarnBrand + "'";
                }

                if (knitSearchObj.YarnLot != "" && knitSearchObj.YarnLot != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnLot = '" + knitSearchObj.YarnLot + "'";
                }

                if (knitSearchObj.GreyWidth != (decimal)0.00 && knitSearchObj.GreyWidth != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyWidth = " + knitSearchObj.GreyWidth;
                }

                if (knitSearchObj.GreyGSM != (decimal)0.00 && knitSearchObj.GreyGSM != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyGSM = " + knitSearchObj.GreyGSM;
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
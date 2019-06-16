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
    public class StenterBLL
    {
        public static List<Stenter> stenters = new List<Stenter>();
        public static List<Stenter> dyeings = new List<Stenter>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();
        public static List<SoftenerType> SoftenerTypes = new List<SoftenerType>();

        static string connectionStr = DBGateway.connectionString;

        internal static List<Stenter> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                stenters = new List<Stenter>();
                string query = "SELECT * FROM StenterView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Stenter Stenter = new Stenter();
                        Stenter.Id = Convert.ToInt32(reader["Id"]);
                        Stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        Stenter.BuyerName = reader["BuyerName"].ToString();
                        Stenter.FabricName = reader["FabricName"].ToString();
                        Stenter.OrderNo = reader["OrderNo"].ToString();
                        Stenter.Color = reader["Color"].ToString();
                        Stenter.ChallanNo = reader["ChallanNo"].ToString();
                        Stenter.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        Stenter.FabricID = Convert.ToInt32(reader["FabricID"]);
                        Stenter.BarCode = reader["BarCode"].ToString();
                        Stenter.McDiaGauge = reader["McDiaGauge"].ToString();
                        Stenter.YarnCount = reader["YarnCount"].ToString();
                        Stenter.YarnBrand = reader["YarnBrand"].ToString();
                        Stenter.YarnLot = reader["YarnLot"].ToString();
                        Stenter.KnitUnit = reader["KnitUnit"].ToString();
                        Stenter.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        Stenter.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        Stenter.McBrand = reader["McBrand"].ToString();

                        Stenter.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        Stenter.DyeingUnit = reader["DyeingUnitName"].ToString();
                        Stenter.BatchNo = reader["BatchNo"].ToString();
                        Stenter.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                        Stenter.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        Stenter.WidthSet = Convert.ToInt32(reader["WidthSet"]);
                        Stenter.OverFeed = Convert.ToInt32(reader["OverFeed"]);
                        Stenter.Temp = Convert.ToDecimal(reader["Temp"]);
                        Stenter.Speed = Convert.ToInt32(reader["Speed"]);
                        Stenter.Peder = reader["Peder"].ToString();
                        Stenter.Blower = Convert.ToInt32(reader["Blower"]);
                        Stenter.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                        Stenter.SoftenerGL = reader["SoftenerGL"].ToString();
                        Stenter.SoftenerName = reader["SoftenerName"].ToString();
                        Stenter.DIA = Convert.ToInt32(reader["DIA"]);
                        Stenter.GSM = Convert.ToInt32(reader["GSM"]);

                        Stenter.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                        Stenter.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                        Stenter.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                        Stenter.CreateByName = reader["CreateByName"].ToString();
                        Stenter.UpdateByName = reader["UpdateByName"].ToString();
                        Stenter.ApprovedByName = reader["ApprovedByName"].ToString();

                        Stenter.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        Stenter.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                        stenters.Add(Stenter);
                    }
                }
            }
            catch (Exception ex)
            {
                stenters = new List<Stenter>();
            }
            finally
            {
                cn.Close();
            }

            return stenters;
        }

    }
}
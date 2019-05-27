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
        public static List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();

        internal static List<DyeingUnitType> GetDyeingUnit()
        {
            try
            {
                DyeingUnitTypes = new List<DyeingUnitType>();
                string query = "SELECT * FROM DyeingUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        DyeingUnitType deingUnitType = new DyeingUnitType();
                        deingUnitType.Id = Convert.ToInt32(reader["Id"]);
                        deingUnitType.DyeingUnit = reader["DyeingUnitName"].ToString();

                        DyeingUnitTypes.Add(deingUnitType);
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

            return DyeingUnitTypes;
        }

        internal static int AddDyeing(Dyeing dyeing)
        {
            int Id = -1;
            try
            {
                string query = " INSERT INTO Dyeing (FabricID, KnitID, BarCode, DyeingUnitID, BatchNo, BatchQty, SerialNo, ReviseStatus, CreateTime, UpdateTime, ApprovedTime, CreateBy, UpdateBy, ApprovedBy) " +
                               " VALUES(" + dyeing.FabricID + "," + "," + dyeing.KnitID + "," + dyeing.BarCode + "," + dyeing.DyeingUnitID + ",'" + dyeing.BatchNo + "'," + dyeing.BatchQty + "," + dyeing.SerialNo + "," + dyeing.ReviseStatus + ",'" + dyeing.CreateTime + "','" + dyeing.UpdateTime + "','" + dyeing.ApprovedTime + "',"+ dyeing.CreateBy+ ","+ dyeing.UpdateBy + ","+ dyeing.ApprovedBy + " )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1 (Id) AS Id FROM Dyeing order by Id desc";
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
                            Knitting dyeing = new Knitting();
                            dyeing.Id = Convert.ToInt32(reader["KnitId"]);
                            dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
                            dyeing.BarCode = reader["BarCode"].ToString();
                            dyeing.BuyerName = reader["BuyerName"].ToString();
                            dyeing.FabricName = reader["FabricName"].ToString();
                            dyeing.OrderNo = reader["OrderNo"].ToString();
                            dyeing.Color = reader["Color"].ToString();
                            dyeing.ChallanNo = reader["ChallanNo"].ToString();

                            dyeing.McDiaGuage = reader["McDiaGuage"].ToString();
                            dyeing.YarnCount = reader["YarnCount"].ToString();
                            dyeing.YarnBrand = reader["YarnBrand"].ToString();
                            dyeing.YarnLot = reader["YarnLot"].ToString();
                            dyeing.StitchLength = Convert.ToDecimal(reader["StitchLength"]);
                            dyeing.KnitUnit = reader["KnitUnit"].ToString();
                            dyeing.MCNO = Convert.ToInt32(reader["MCNO"]);
                            dyeing.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                            dyeing.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            dyeing.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            dyeing.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                            dyeing.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                            dyeing.McBrand = reader["McBrand"].ToString();
                            dyeing.CreateTime = Convert.ToDateTime(reader["CreateTime"]);

                            knittings.Add(dyeing);
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

        internal static List<Dyeing> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                dyeings = new List<Dyeing>();
                string query = "SELECT * FROM DyeingView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Dyeing dyeing = new Dyeing();
                        dyeing.Id = Convert.ToInt32(reader["Id"]);
                        dyeing.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        dyeing.BuyerName = reader["BuyerName"].ToString();
                        dyeing.FabricName = reader["FabricName"].ToString();
                        dyeing.OrderNo = reader["OrderNo"].ToString();
                        dyeing.Color = reader["Color"].ToString();
                        dyeing.ChallanNo = reader["ChallanNo"].ToString();
                        dyeing.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        dyeing.FabricID = Convert.ToInt32(reader["FabricID"]);
                        dyeing.BarCode = reader["BarCode"].ToString();
                        dyeing.McDiaGuage = reader["McDiaGuage"].ToString();
                        dyeing.YarnCount = reader["YarnCount"].ToString();
                        dyeing.YarnBrand = reader["YarnBrand"].ToString();
                        dyeing.YarnLot = reader["YarnLot"].ToString();
                        dyeing.KnitUnit = reader["KnitUnit"].ToString();
                        dyeing.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        dyeing.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        dyeing.McBrand = reader["McBrand"].ToString();

                        dyeing.DyeingUnit = reader["DyeingUnit"].ToString();
                        dyeing.BatchNo = reader["BatchNo"].ToString();
                        dyeing.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                        dyeing.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        dyeing.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                        dyeing.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                        dyeing.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                        dyeing.CreateByName = reader["CreateByName"].ToString();
                        dyeing.UpdateByName = reader["UpdateByName"].ToString();
                        dyeing.ApprovedByName = reader["ApprovedByName"].ToString();

                        dyeing.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        dyeing.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                        dyeings.Add(dyeing);
                    }
                }
            }
            catch (Exception ex)
            {
                dyeings = new List<Dyeing>();
            }
            finally
            {
                cn.Close();
            }

            return dyeings;
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
                if (knitSearchObj.McBrandID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrandID = " + knitSearchObj.McBrandID;
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
                if (knitSearchObj.DeliveryDate != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate = '" + knitSearchObj.DeliveryDate.ToString("yyyy/MM/dd") + "'";
                }

                if (knitSearchObj.CreateTime != DateTime.MaxValue && knitSearchObj.CreateTime != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " CreateTime = '" + knitSearchObj.CreateTime.ToString("yyyy/MM/dd") + "'";
                }

                if (knitSearchObj.FabricCreateTime != DateTime.MaxValue && knitSearchObj.FabricCreateTime != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricCreateTime = '" + knitSearchObj.FabricCreateTime.ToString("yyyy/MM/dd") + "'";
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
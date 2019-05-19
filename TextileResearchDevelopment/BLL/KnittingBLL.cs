﻿using System;
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
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<KnitUnitType> KnitUnits = new List<KnitUnitType>();
        public static List<McBrandType> McBrands = new List<McBrandType>();
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
                            fabric.Color = reader["Color"].ToString();
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

        internal static int AddKnit(Knitting knit)
        {
            int Id = -1;
            try
            {
                string query = "INSERT INTO Knitting (BuyerID, FabricTypeID, OrderNo, Color, Note, Width, GSM, LabdipStatus, ChallanNo, DeliveryQty, DeliveryDate, Barcode) VALUES(" + fabric.BuyerID + "," + fabric.FabricTypeID + ",'" + fabric.OrderNo + "','" + fabric.Color + "','" + fabric.Note + "','" + fabric.Width + "'," + fabric.GSM + ",'" + fabric.Status + "','" + fabric.ChallanNo + "'," + fabric.DeliveryQty + ",'" + fabric.DeliveryDate.ToString("yyyy-MM-dd") + "','" + fabric.BarCode + "')";
                if (DBGateway.ExecutionToDB(query, 1))
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

        internal static List<Knitting> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                knittings = new List<Knitting>();
                string query = "SELECT * FROM KnitView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Knitting knit = new Knitting();
                        knit.Id = Convert.ToInt32(reader["KnitId"]);
                        knit.BuyerName = reader["BuyerName"].ToString();
                        knit.FabricName = reader["FabricName"].ToString();
                        knit.OrderNo = reader["OrderNo"].ToString();
                        knit.Color = reader["Color"].ToString();
                        knit.ChallanNo = reader["ChallanNo"].ToString();
                        knit.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        knit.FabricID = Convert.ToInt32(reader["FabricID"]);
                        knit.BarCode = reader["BarCode"].ToString();

                        knit.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                        knit.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                        knit.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                        knit.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                        knit.McDiaGuage = reader["McDiaGuage"].ToString();
                        knit.YarnCount = reader["YarnCount"].ToString();
                        knit.YarnBrand = reader["YarnBrand"].ToString();
                        knit.YarnLot = reader["YarnLot"].ToString();
                        knit.StitchLength = Convert.ToDecimal(reader["ChallanNo"]);
                        knit.KnitUnit = reader["KnitUnit"].ToString();
                        knit.MCNO = Convert.ToInt32(reader["MCNO"]);
                        knit.MCRPM = Convert.ToInt32(reader["MCRPM"]);
                        knit.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        knit.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        knit.TumbleWidth = Convert.ToDecimal(reader["TumbleWidth"]);
                        knit.TumbleGSM = Convert.ToDecimal(reader["TumbleGSM"]);
                        knit.McBrand = reader["McBrand"].ToString();
                        knit.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        knit.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);
                        knit.OrderDate = Convert.ToDateTime(reader["OrderDate"]);

                        knittings.Add(knit);
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

            return knittings;
        }

        public static string GetfabricearchQuery(Fabric fabricearchObj)
        {
            try
            {
                string query = "SELECT * FROM FabricView ";
                if (fabricearchObj.BarCode != "" && fabricearchObj.BarCode != null)
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
                    query = query + " OrderNo = '" + fabricearchObj.OrderNo + "'";
                }
                if (fabricearchObj.Color != "" && fabricearchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + fabricearchObj.Color + "'";
                }
                if (fabricearchObj.ChallanNo != "" && fabricearchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + fabricearchObj.ChallanNo + "'";
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

        public static int AddMCDIA(Buyer buyer)
        {

            int Id = -1;
            try

            {
                string query = "INSERT INTO McDiaGuage (McDiaGuage) VALUES('" + buyer.BuyerName + "')";
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

        public static List<McDiaGaugeType> GetMCDIAList()
        {
            try
            {
                McDiaGauges = new List<McDiaGaugeType>();
                string query = "SELECT * FROM McDiaGuage";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        McDiaGaugeType McDiaGauge = new McDiaGaugeType();
                        McDiaGauge.Id = Convert.ToInt32(reader["Id"]);
                        McDiaGauge.McDiaGuage = reader["McDiaGuage"].ToString();

                        McDiaGauges.Add(McDiaGauge);
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

            return McDiaGauges;
        }

        public static List<YarnCountType> GetYarnCountList()
        {
            try
            {
                YarnCounts = new List<YarnCountType>();
                string query = "SELECT * FROM YarnCount";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        YarnCountType YarnCount = new YarnCountType();
                        YarnCount.Id = Convert.ToInt32(reader["Id"]);
                        YarnCount.YarnCount = reader["YarnCount"].ToString();

                        YarnCounts.Add(YarnCount);
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

            return YarnCounts;
        }

        public static List<KnitUnitType> GetKnitUnitList()
        {
            try
            {
                KnitUnits = new List<KnitUnitType>();
                string query = "SELECT * FROM KnitUnit";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        KnitUnitType KnitUnit = new KnitUnitType();
                        KnitUnit.Id = Convert.ToInt32(reader["Id"]);
                        KnitUnit.KnitUnit = reader["KnitUnit"].ToString();

                        KnitUnits.Add(KnitUnit);
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

            return KnitUnits;
        }

        public static List<McBrandType> GetMcBrandList()
        {
            try
            {
                McBrands = new List<McBrandType>();
                string query = "SELECT * FROM McBrand";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        McBrandType McBrand = new McBrandType();
                        McBrand.Id = Convert.ToInt32(reader["Id"]);
                        McBrand.McBrand = reader["McBrand"].ToString();

                        McBrands.Add(McBrand);
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

            return McBrands;
        }

    }
}
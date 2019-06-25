﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.DataAccessLayer;
using TextileResearchDevelopment.Models;

namespace TextileResearchDevelopment.BLL
{
    public class ReportBLL
    {
        static string connectionStr = DBGateway.connectionString;
        public static List<TestReport> reports = new List<TestReport>();

        internal static List<TestReport> Search(TestReport searchObj)
        {
            reports = new List<TestReport>();
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                reports = new List<TestReport>();
                string query = "";
                query = GetReportSearchQuery(searchObj);
                if (query != "")
                {
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            TestReport report = new TestReport();

                            report.Id = Convert.ToInt32(reader["Id"]);
                            report.BuyerName = reader["BuyerName"].ToString();
                            report.FabricName = reader["FabricName"].ToString();
                            report.OrderNo = reader["OrderNo"].ToString();
                            report.Color = reader["Color"].ToString();
                            report.ChallanNo = reader["ChallanNo"].ToString();
                            report.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            report.FabricID = Convert.ToInt32(reader["FabricID"]);
                            report.BarCode = reader["BarCode"].ToString();
                            report.McDiaGauge = reader["McDiaGauge"].ToString();
                            report.YarnCount = reader["YarnCount"].ToString();
                            report.YarnBrand = reader["YarnBrand"].ToString();
                            report.YarnLot = reader["YarnLot"].ToString();
                            report.KnitUnit = reader["KnitUnit"].ToString();
                            report.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            report.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            report.McBrand = reader["McBrand"].ToString();

                            report.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            report.DyeingUnit = reader["DyeingUnitName"].ToString();
                            report.BatchNo = reader["BatchNo"].ToString();
                            report.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            report.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            report.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            report.SoftenerName = reader["SoftenerName"].ToString();
                            report.SoftenerGL = Convert.ToDecimal(reader["SoftenerGL"]);

                            report.PrintID = Convert.ToInt32(reader["PrintID"]);
                            report.PrintName = reader["PrintName"].ToString();
                            report.MachineID = Convert.ToInt32(reader["MachineID"]);
                            report.MachineName = reader["MachineName"].ToString();

                            report.FinalWidth = Convert.ToDecimal(reader["FinalWidth"]);
                            report.FinalGSM = Convert.ToDecimal(reader["FinalGSM"]);
                            report.TLength = Convert.ToDecimal(reader["TLength"]);
                            report.TWidth = Convert.ToDecimal(reader["TWidth"]);
                            report.TSP = Convert.ToDecimal(reader["TSP"]);

                            report.Remarks = reader["Remarks"].ToString();

                            report.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            report.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            reports.Add(report);
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
                reports = new List<TestReport>();
            }
            finally
            {
                cn.Close();
            }

            return reports;
        }

        internal static bool BarCodeAuthorization(int BarCode)
        {
            try
            {
                string query = "SELECT * FROM Remarks WHERE BarCode = " + BarCode;
                if (!DBGateway.recordExist(query))
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

        private static string GetReportSearchQuery(TestReport searchObj)
        {
            try
            {
                string query = "SELECT * FROM TestView ";
                if (searchObj.BarCode != "" && searchObj.BarCode != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Barcode = " + Convert.ToInt32(searchObj.BarCode);
                }

                if (searchObj.BuyerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BuyerID = " + searchObj.BuyerID;
                }

                if (searchObj.FabricTypeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FabricTypeID = " + searchObj.FabricTypeID;
                }

                if (searchObj.DiaGaugeID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DiaGaugeID = " + searchObj.DiaGaugeID;
                }

                if (searchObj.YarnCountID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnCountID = " + searchObj.YarnCountID;
                }

                if (searchObj.KnitUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " KnitUnitID = " + searchObj.KnitUnitID;
                }

                if (searchObj.McBrandID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " McBrandID = " + searchObj.McBrandID;
                }

                if (searchObj.OrderNo != "" && searchObj.OrderNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " OrderNo = '" + searchObj.OrderNo + "'";
                }

                if (searchObj.Color != "" && searchObj.Color != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Color = '" + searchObj.Color + "'";
                }

                if (searchObj.ChallanNo != "" && searchObj.ChallanNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " ChallanNo = '" + searchObj.ChallanNo + "'";
                }

                if (searchObj.DeliveryDateStart != DateTime.MaxValue && searchObj.DeliveryDateEnd != DateTime.MaxValue)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DeliveryDate BETWEEN '" + searchObj.DeliveryDateStart + "' AND '" + searchObj.DeliveryDateEnd + "'";
                }

                if (searchObj.CreateTime != DateTime.MaxValue && searchObj.CreateTime != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " CreateTime = '" + searchObj.CreateTime + "'";
                }

                if (searchObj.YarnBrand != "" && searchObj.YarnBrand != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnBrand = '" + searchObj.YarnBrand + "'";
                }

                if (searchObj.YarnLot != "" && searchObj.YarnLot != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " YarnLot = '" + searchObj.YarnLot + "'";
                }

                if (searchObj.GreyWidth != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyWidth = " + searchObj.GreyWidth;
                }

                if (searchObj.GreyGSM != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " GreyGSM = " + searchObj.GreyGSM;
                }

                if (searchObj.DyeingUnitID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " DyeingUnitID = " + searchObj.DyeingUnitID;
                }

                if (searchObj.BatchNo != "" && searchObj.BatchNo != null)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " BatchNo = '" + searchObj.BatchNo + "'";
                }

                if (searchObj.SoftenerID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " SoftenerID = " + searchObj.SoftenerID;
                }

                if (searchObj.SoftenerGL != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " SoftenerGL = " + searchObj.SoftenerGL;
                }

                if (searchObj.Blower != (decimal)0.00)
                {
                    query = query.Contains("Blower") == true ? query + " AND " : query + " WHERE ";
                    query = query + " Blower = " + searchObj.Blower;
                }

                if (searchObj.PrintID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " PrintType = " + searchObj.PrintID;
                }

                if (searchObj.MachineID > 0)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " MachineType = " + searchObj.MachineID;
                }

                if (searchObj.FinalWidth != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FinalWidth = " + searchObj.FinalWidth;
                }

                if (searchObj.FinalGSM != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " FinalGSM = " + searchObj.FinalGSM;
                }

                if (searchObj.TSP != (decimal)0.00)
                {
                    query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                    query = query + " TSP = " + searchObj.TSP;
                }

                query = query.Contains("WHERE") == true ? query + " AND " : query + " WHERE ";
                query = query + " ApprovedStatus > 0";

                return query;
            }
            catch (Exception ex)
            {
                return "";
            }
        }
    }
}
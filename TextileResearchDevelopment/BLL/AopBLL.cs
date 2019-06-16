using System;
using System.Collections.Generic;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.DataAccessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace TextileResearchDevelopment.BLL
{
    public class AopBLL
    {

        public static List<Aop> aops = new List<Aop>();
        public static List<Stenter> stenters = new List<Stenter>();
        public static List<Buyer> buyers = new List<Buyer>();
        public static List<FabricType> FabricTypes = new List<FabricType>();
        public static List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();
        public static List<YarnCountType> YarnCounts = new List<YarnCountType>();
        public static List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();
        public static List<SoftenerType> SoftenerTypes = new List<SoftenerType>();
        public static List<PrintType> PrintTypes = new List<PrintType>();
        public static List<MachineType> MachineTypes = new List<MachineType>();

        static string connectionStr = DBGateway.connectionString;

        internal static List<Aop> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                aops = new List<Aop>();
                string query = "SELECT * FROM AopView";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Aop aop = new Aop();
                        aop.Id = Convert.ToInt32(reader["Id"]);
                        aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        aop.BuyerName = reader["BuyerName"].ToString();
                        aop.FabricName = reader["FabricName"].ToString();
                        aop.OrderNo = reader["OrderNo"].ToString();
                        aop.Color = reader["Color"].ToString();
                        aop.ChallanNo = reader["ChallanNo"].ToString();
                        aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                        aop.FabricID = Convert.ToInt32(reader["FabricID"]);
                        aop.BarCode = reader["BarCode"].ToString();
                        aop.McDiaGauge = reader["McDiaGauge"].ToString();
                        aop.YarnCount = reader["YarnCount"].ToString();
                        aop.YarnBrand = reader["YarnBrand"].ToString();
                        aop.YarnLot = reader["YarnLot"].ToString();
                        aop.KnitUnit = reader["KnitUnit"].ToString();
                        aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                        aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                        aop.McBrand = reader["McBrand"].ToString();

                        aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                        aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                        aop.BatchNo = reader["BatchNo"].ToString();
                        aop.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                        aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                        aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                        aop.SoftenerName = reader["SoftenerName"].ToString();

                        aop.PrintID = Convert.ToInt32(reader["PrintID"]);
                        aop.PrintName = reader["PrintName"].ToString();
                        aop.MachineID = Convert.ToInt32(reader["MachineID"]);
                        aop.MachineName = reader["MachineName"].ToString();

                        aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                        aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                        aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                        aop.CreateByName = reader["CreateByName"].ToString();
                        aop.UpdateByName = reader["UpdateByName"].ToString();
                        aop.ApprovedByName = reader["ApprovedByName"].ToString();

                        aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                        aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                        aops.Add(aop);
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

            return aops;
        }

        internal static int ReviseAop(Aop aop)
        {
            throw new NotImplementedException();
        }

        internal static int ApproveAop(Aop aop)
        {
            throw new NotImplementedException();
        }

        internal static int EditAop(Aop aop)
        {
            throw new NotImplementedException();
        }

        internal static int AddAop(Aop aop)
        {
            int Id = -1;
            try
            {
                string GetCreateByQuery = "SELECT Id FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                string query = " INSERT INTO Aop (StenterID, BarCode, PrintType, MachineType, ReviseStatus, CreateTime, CreateBy, ApprovedStatus, ApprovedBy, UpdateBy) " +
                               " VALUES(" + aop.StenterID + "," + aop.BarCode + "," + aop.PrintID + "," + aop.MachineID + aop.ReviseStatus + ",'" + aop.CreateTime.ToString("yyyy/MM/dd HH:mm") + "',(" + GetCreateByQuery + "), 0, 0, 0 )";
                if (DBGateway.ExecutionToDB(query, 1))
                {
                    query = "SELECT TOP 1* FROM AopView order by Id desc";
                    SqlDataReader reader = DBGateway.GetFromDB(query);
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            aop.Id = Id = Convert.ToInt32(reader["KnitId"]);
                            aop.BuyerName = reader["BuyerName"].ToString();
                            aop.FabricName = reader["FabricName"].ToString();
                            aop.OrderNo = reader["OrderNo"].ToString();
                            aop.Color = reader["Color"].ToString();
                            aop.ChallanNo = reader["ChallanNo"].ToString();
                            aop.DeliveryDate = Convert.ToDateTime(reader["DeliveryDate"]);
                            aop.FabricID = Convert.ToInt32(reader["FabricID"]);

                            aop.DiaGaugeID = Convert.ToInt32(reader["DiaGaugeID"]);
                            aop.YarnCountID = Convert.ToInt32(reader["YarnCountID"]);
                            aop.KnitUnitID = Convert.ToInt32(reader["KnitUnitID"]);
                            aop.McBrandID = Convert.ToInt32(reader["McBrandID"]);

                            aop.McDiaGauge = reader["McDiaGauge"].ToString();
                            aop.YarnCount = reader["YarnCount"].ToString();
                            aop.YarnBrand = reader["YarnBrand"].ToString();
                            aop.YarnLot = reader["YarnLot"].ToString();
                            aop.KnitUnit = reader["KnitUnit"].ToString();
                            aop.GreyWidth = Convert.ToDecimal(reader["GreyWidth"]);
                            aop.GreyGSM = Convert.ToDecimal(reader["GreyGSM"]);
                            aop.McBrand = reader["McBrand"].ToString();
                            aop.ReviseStatus = Convert.ToInt32(reader["ReviseStatus"]);
                            aop.ApprovedStatus = Convert.ToInt32(reader["ApprovedStatus"]);

                            aop.DyeingUnitID = Convert.ToInt32(reader["DyeingUnitID"]);
                            aop.DyeingUnit = reader["DyeingUnitName"].ToString();
                            aop.BatchNo = reader["BatchNo"].ToString();
                            aop.BatchQty = Convert.ToInt32(reader["BatchQty"]);
                            aop.SerialNo = Convert.ToInt32(reader["SerialNo"]);

                            aop.SoftenerID = Convert.ToInt32(reader["SoftenerID"]);
                            aop.SoftenerName = Convert.ToString(reader["SoftenerName"]);

                            aop.CreateTime = Convert.ToDateTime(reader["CreateTime"]);
                            aop.UpdateTime = reader.IsDBNull(reader.GetOrdinal("UpdateTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["UpdateTime"]);
                            aop.ApprovedTime = reader.IsDBNull(reader.GetOrdinal("ApprovedTime")) == true ? (DateTime?)null : Convert.ToDateTime(reader["ApprovedTime"]);
                            aop.CreateByName = reader["CreateByName"].ToString();
                            aop.UpdateByName = reader["UpdateByName"].ToString();
                            aop.ApprovedByName = reader["ApprovedByName"].ToString();
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

        internal static List<MachineType> GetMachineUnit()
        {
            throw new NotImplementedException();
        }

        internal static bool DeleteAop(int id)
        {
            throw new NotImplementedException();
        }

        internal static List<PrintType> GetPrintUnit()
        {
            throw new NotImplementedException();
        }

        internal static List<Stenter> StenterSearch(Stenter stenterSearchObj)
        {
            throw new NotImplementedException();
        }

        internal static bool BarCodeAuthorization(int barCode)
        {
            throw new NotImplementedException();
        }

        internal static List<PrintType> GetPrintTypeList()
        {
            throw new NotImplementedException();
        }

        internal static int AddPrintType(PrintType printType)
        {
            throw new NotImplementedException();
        }

        internal static bool DeletePrintType(int id)
        {
            throw new NotImplementedException();
        }

        internal static List<MachineType> GetMachineTypeList()
        {
            throw new NotImplementedException();
        }

        internal static int AddMachineType(PrintType machineType)
        {
            throw new NotImplementedException();
        }

        internal static bool DeleteMachineType(int id)
        {
            throw new NotImplementedException();
        }
    }
}
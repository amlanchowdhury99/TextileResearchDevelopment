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
        public static List<Fabric> fabric = new List<Fabric>();
        public static List<FabricType> FabricTypes = new List<FabricType>();

        static string connectionStr = DBGateway.connectionString;

        public static List<string> FabricSearch(Fabric fabricSearchObj)
        {

            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            try
            {
                string query = "SELECT * FROM Fabric WHERE ";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        matchingList.Add(reader[Col].ToString());
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

            return matchingList;
        }

    }
}
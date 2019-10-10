using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace TextileResearchDevelopment.DataAccessLayer
{
    public class DBGateway
    {
        public static string connectionString = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        public static SqlCommand cmd;
        public static SqlDataReader reader;
        public static SqlConnection connection = new SqlConnection(connectionString);
        public static string message = "";
        public static int rowsCount = 0;

        public static bool recordExist(string sSQL)
        {
            try
            {
                if (DBGateway.connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                cmd = new SqlCommand(sSQL, connection);
                reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (System.Exception e)
            {
                return false;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }

        public static bool IsTrue(string sSQL)
        {
            try
            {
                if (DBGateway.connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                cmd = new SqlCommand(sSQL, connection);
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        if (Convert.ToInt32(reader["A"]) == 1)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    return false;
                }
                else
                {
                    return false;
                }
            }
            catch (System.Exception e)
            {
                return false;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }

        public static int GetNumberRows(string query)
        {
            try
            {
                rowsCount = -1;
                if (DBGateway.connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }
                cmd = new SqlCommand(query, connection);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        rowsCount = Convert.ToInt32(reader["count"]);
                    }
                }
                else
                {
                    rowsCount = -1;
                }
            }
            catch (System.Exception e)
            {
                rowsCount = -1;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return rowsCount;
        }

        public static bool IsDate(string sdate)
        {
            DateTime dt;
            bool isDate = true;
            try
            {
                dt = DateTime.Parse(sdate);
            }
            catch
            {
                isDate = false;
            }
            return isDate;
        }

        public static bool CheckDouble(string Sstring)
        {
            bool NumberCheck = false;
            double CheckDouble = 0;

            try
            {
                NumberCheck = double.TryParse(Sstring, out CheckDouble);
            }
            catch
            {
                NumberCheck = false;
            }
            return NumberCheck;
        }

        public int MaxRecord(string sSQL)
        {
            string connectionStr = WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            SqlConnection connection = new SqlConnection(connectionStr);
            int mr = 0;
            try
            {
                connection.Open();
                cmd.Connection = connection;
                cmd.CommandText = sSQL;
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    mr = Convert.ToInt32(reader[0].ToString());
                }
            }
            catch (System.Exception e)
            {
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return mr;
        }

        public static bool ExecutionToDB(string query, int Action)
        {
            try
            {
                if (Action == 1)
                {
                    message = "Saved Successfully";
                }
                else if (Action == 2)
                {
                    message = "Updated Successfully";
                }
                else if (Action == 3)
                {
                    message = "Deleted Successfully";
                }

                if (DBGateway.connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }
                cmd = new SqlCommand(query, connection);

                int result = cmd.ExecuteNonQuery();

                if (result != 0)
                {
                    return true;
                }
                else
                {
                    throw new Exception("Failed!!!");
                }
            }
            catch (System.Exception e)
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
        }

        public static SqlDataReader GetFromDB(string query)
        {
            try
            {
                if (DBGateway.connection.State != ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                    DBGateway.connection.Open();
                }

                cmd = new SqlCommand(query, connection);

                reader = cmd.ExecuteReader();
                return reader;

            }
            catch (System.Exception e)
            {
                return reader;
            }
        }

        public static bool GetNumberForRows(string query)
        {
            try
            {
                rowsCount = -1;
                if (DBGateway.connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }
                cmd = new SqlCommand(query, connection);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        rowsCount = Convert.ToInt32(reader["count"]);
                    }
                }

                if (rowsCount > -1)
                {
                    if (rowsCount > 1)
                    {
                        if (DBGateway.connection.State == ConnectionState.Open)
                        {
                            connection.Close();
                        }
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                else
                {
                    if (DBGateway.connection.State == ConnectionState.Open)
                    {
                        connection.Close();
                    }
                    throw new Exception("Failed!!!");
                }
            }
            catch (System.Exception e)
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
        }

    }
}
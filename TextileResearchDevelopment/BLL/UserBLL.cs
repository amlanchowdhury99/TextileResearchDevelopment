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
    public class UserBLL
    {
        public static List<User> users = new List<User>();
        static string connectionStr = DBGateway.connectionString;

        internal static bool IsUserValid(User user)
        {
            try
            {
                if(DBGateway.recordExist("SELECT * FROM UserInfo WHERE UserName = '"+user.UserName+"' AND Password = '" + user.Password + "'"))
                {
                    int count = 0;
                    SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
                    string query = "UPDATE UserInfo SET LogIn = 1 WHERE UserName = '" + user.UserName + "'";
                    cm.CommandText = query;
                    count = cm.ExecuteNonQuery();
                    cn.Close();
                    if (count > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        internal static int AddUser(User user)
        {
            int Id = -1;
            try
            {
                string query = "SELECT * FROM UserInfo WHERE UserName = '"+ user.UserName+ "'";
                if (!DBGateway.recordExist(query))
                {
                    query = " INSERT INTO UserInfo (UserName, Password, Fabric, Knitting, Dyeing, Slitting, Stenter, Aop, Test, Remarks, PermissionString, Date, LogIn) " +
                                                   " VALUES('" + user.UserName + "','" + user.Password + "'," + user.Fabric + "," + user.Knitting + "," + user.Dyeing + "," + user.Slitting + "," + user.Stenter + "," + user.Aop + "," + user.Test + "," + user.Remarks + ",'" + user.PermissionString + "','" + user.CreateDate.ToString("yyyy/MM/dd") + "'," + user.LogIn + ")";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        query = "SELECT TOP 1 (Id) AS Id FROM UserInfo order by Id desc";
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
                else
                {
                    Id = -1; 
                }
            }
            catch (Exception ex)
            {
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

        internal static Boolean DeleteUser(int Id)
        {
            try
            {
                if (DBGateway.recordExist("SELECT * FROM UserInfo WHERE Id = " + Id))
                {
                    int count = 0;
                    SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
                    string query = "DELETE UserInfo WHERE Id = " + Id;
                    cm.CommandText = query;
                    count = cm.ExecuteNonQuery();
                    cn.Close();
                    if (count > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        internal static List<User> GetList()
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();

            try
            {
                users = new List<User>();
                string query = "SELECT * FROM UserInfo";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        User user = new User();
                        user.Id = Convert.ToInt32(reader["Id"]);
                        user.UserName = reader["UserName"].ToString();
                        user.Password = reader["Password"].ToString();
                        user.LogIn = Convert.ToInt32(reader["LogIn"]);
                        user.Fabric = Convert.ToInt32(reader["Fabric"]);
                        user.Knitting = Convert.ToInt32(reader["Knitting"]);
                        user.Dyeing = Convert.ToInt32(reader["Dyeing"]);
                        user.Slitting = Convert.ToInt32(reader["Slitting"]);
                        user.Stenter = Convert.ToInt32(reader["Stenter"]);
                        user.Aop = Convert.ToInt32(reader["Aop"]);
                        user.Test = Convert.ToInt32(reader["Test"]);
                        user.Remarks = Convert.ToInt32(reader["Remarks"]);
                        user.PermissionString = reader["PermissionString"].ToString();
                        user.CreateDate = Convert.ToDateTime(reader["Date"]);

                        users.Add(user);
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

            return users;
        }

        internal static bool LogOut(string userName)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();

            try
            {
                int count = 0;
                string query = "UPDATE UserInfo SET LogIn = 0 WHERE UserName = '"+ userName+"'";
                cm.CommandText = query;
                count = cm.ExecuteNonQuery();
                if (count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                cn.Close();
            }
        }
    }
}
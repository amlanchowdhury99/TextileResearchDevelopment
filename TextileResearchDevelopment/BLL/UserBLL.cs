﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.DataAccessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.Mvc;

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

        internal static int EditUser(User user)
        {
            int Id = -1;
            try
            {
                string query = "SELECT Count(*) As count FROM UserInfo WHERE UserName = '" + user.UserName + "'";
                if (DBGateway.GetNumberForRows(query))
                {
                    //query = " UPDATE UserInfo SET UserName = '" + user.UserName + "', Password = '" + user.Password + "', Fabric = " + user.Fabric + ", Knitting = " + user.Knitting + ", Dyeing = " + user.Dyeing + ", Slitting = " + user.Slitting + ", Stenter = " + user.Stenter + ", Aop = " + user.Aop + ", Test = " + user.Test + ", Remarks = " + user.Remarks + ", PermissionString = '" + user.PermissionString + "'" +
                    //                               " WHERE UserName = '" + user.UserName + "'";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        Id = 1;
                    }
                    else
                    {
                        Id = -1;
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

        internal static int AddUser(User user)
        {
            int Id = -1;
            try
            {
                string query = "SELECT * FROM UserInfo WHERE UserName = '"+ user.UserName+ "'";
                if (!DBGateway.recordExist(query))
                {
                    query = " INSERT INTO UserInfo (Name, UserName, Password, Date, SuperAdmin) " +
                                                   " VALUES('" + user.Name + "','" + user.UserName + "','" + user.Password + "','" + user.CreateDate.ToString("yyyy/MM/dd") + "', 0)";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {

                        foreach(var i in user.rootNode)
                        {
                            if(i.val == 1)
                            {
                                var key = user.Sectors.FirstOrDefault(x => x.Value == i.title).Key;
                                query = " INSERT INTO UserPermission (UserName, Sector) VALUES('" + user.UserName + "','" + key + "')";
                                if(DBGateway.ExecutionToDB(query, 1))
                                {
                                    foreach(var j in i.children)
                                    {
                                        if(j.title == "Crud")
                                        {
                                            i.role.Crud = j.val;
                                        }
                                        else if (j.title == "LibrarySet")
                                        {
                                            i.role.LibrarySet = j.val;
                                        }
                                        else if (j.title == "Approval")
                                        {
                                            i.role.Approval = j.val;
                                        }
                                    }
                                    query = " INSERT INTO UserRole (UserPermissionID, Crud, Approval, LibrarySet) VALUES('" + user.UserName + "'," + i.role.Crud + ", " + i.role.LibrarySet + ", " + i.role.Approval + ")";
                                }
                            }
                        }

                        if (DBGateway.ExecutionToDB(query, 1))
                        {
                            query = " INSERT INTO UserRole (UserPermissionID, Crud, Approval, LibrarySet) " +
                                                   " VALUES('" + user.UserName + "','" + 1 + "')";
                        }

                        //query = "SELECT TOP 1 (Id) AS Id FROM UserInfo order by Id desc";
                        //SqlDataReader reader = DBGateway.GetFromDB(query);
                        //if (reader.HasRows)
                        //{
                        //    while (reader.Read())
                        //    {
                        //        Id = Convert.ToInt32(reader["Id"]);
                        //    }
                        //}
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

        internal static Boolean HasRight(string text)
        {
            try
            {
                //string GetUserNameQuery = "SELECT UserName FROM UserInfo WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                if (DBGateway.recordExist("SELECT Id FROM UserRole WHERE UserName = '"+ HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'"))
                {
                    SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
                    string query = "SELECT "+ text + " AS Role FROM UserRole WHERE UserName = '" + HttpContext.Current.Session[System.Web.HttpContext.Current.Session.SessionID] + "'";
                    cm.CommandText = query;
                    reader = cm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            if(Convert.ToInt32(reader["Role"]) > 0)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                    else
                    {
                        return false;
                    }
                    cn.Close();
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
            return false;
        }

        internal static string GetUserAccess(string UserName)
        {
            string PermissionString = "";
            try
            {
                string query = "SELECT PermissionString FROM UserInfo WHERE UserName = '" + UserName + "'";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        PermissionString = reader["PermissionString"].ToString();
                    }
                }
                else
                {
                    PermissionString = "";
                }
            }
            catch (Exception ex)
            {
                return PermissionString;
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return PermissionString;
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
                string query = "SELECT * FROM UserInfo WHERE UserName != 'SuperAdmin' AND Password != 'urmi@admin'";
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
                        //user.Dyeing = Convert.ToInt32(reader["Dyeing"]);
                        //user.Slitting = Convert.ToInt32(reader["Slitting"]);
                        //user.Stenter = Convert.ToInt32(reader["Stenter"]);
                        //user.Aop = Convert.ToInt32(reader["Aop"]);
                        //user.Test = Convert.ToInt32(reader["Test"]);
                        //user.Remarks = Convert.ToInt32(reader["Remarks"]);
                        //user.PermissionString = reader["PermissionString"].ToString();
                        //user.CreateDate = Convert.ToDateTime(reader["Date"]);

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
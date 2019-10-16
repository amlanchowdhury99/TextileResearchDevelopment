using System;
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

        internal static User GetDetails(User user)
        {
            SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); SqlDataReader reader; cm.Connection = cn; cn.Open();
            SqlCommand cm1 = new SqlCommand(); SqlConnection cn1 = new SqlConnection(connectionStr); SqlDataReader reader1; cm1.Connection = cn1;
            try
            {
                RoleNode role = new RoleNode();
                string query = "SELECT * FROM UserPermission WHERE UserName = '" + user.UserName + "'";
                cm.CommandText = query;
                reader = cm.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        cn1.Open();
                        role = new RoleNode();
                        role.Id = Convert.ToInt32(reader["Id"]);
                        role.val = 1;
                        role.value = Convert.ToInt32(reader["Sector"]);

                        role.title = user.Sectors[reader["Sector"].ToString()];
                        query = "SELECT * FROM UserRole WHERE UserPermissionID = " + role.Id;
                        cm1.CommandText = query;
                        reader1 = cm1.ExecuteReader();
                        if (reader1.HasRows)
                        {
                            while (reader1.Read())
                            {
                                Child child = new Child(); child.Id = Convert.ToInt32(reader1["Id"]); child.ParentID = role.Id; child.val = Convert.ToInt32(reader1["Crud"]); child.value = Convert.ToInt32(reader1["CValue"]); child.title = "Crud";
                                role.children.Add(child);
                                child = new Child(); child.Id = Convert.ToInt32(reader1["Id"]); child.ParentID = role.Id; child.val = Convert.ToInt32(reader1["LibrarySet"]); child.value = Convert.ToInt32(reader1["LValue"]); child.title = "LibrarySet";
                                role.children.Add(child);
                                child = new Child(); child.Id = Convert.ToInt32(reader1["Id"]); child.ParentID = role.Id; child.val = Convert.ToInt32(reader1["Approval"]); child.value = Convert.ToInt32(reader1["AValue"]); child.title = "Approval";
                                role.children.Add(child);
                            }
                        }
                        user.rootNode.Add(role);
                        cn1.Close();
                    }
                }
            }
            catch(Exception ex)
            {
                user = new User();
            }
            finally
            {
                cn.Close();
            }
            return user;
        }

        internal static Role GetRoles(User user)
        {
            Role role = new Role();
            try
            {
                var key = user.Sectors.FirstOrDefault(x => x.Value == user.Name).Key;
                string UserPermissionQuery = "(SELECT Id FROM UserPermission WHERE UserName = '" + user.UserName + "' AND Sector = '" + key + "')";
                string query = "SELECT * FROM UserRole WHERE UserPermissionID = " + UserPermissionQuery;
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        role.Crud = Convert.ToInt32(reader["Crud"]);
                        role.LibrarySet = Convert.ToInt32(reader["LibrarySet"]);
                        role.Approval = Convert.ToInt32(reader["Approval"]);
                    }
                }
                if(DBGateway.recordExist("SELECT * FROM UserInfo WHERE UserName = '" + user.UserName + "' AND SuperAdmin = 1"))
                {
                    role.RolePermissionID = 1;
                }
                else
                {
                    role.RolePermissionID = 0;
                }

            }
            catch (Exception ex)
            {
                role = new Role();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return role;
        }

        internal static User EditUser(User user)
        {
            try
            {
                bool result = false;
                string query = "SELECT Count(*) As count FROM UserInfo WHERE UserName = '" + user.UserName + "'";
                if (DBGateway.GetNumberForRows(query))
                {
                    query = " UPDATE UserInfo SET Name = '" + user.Name + "', UserName = '" + user.UserName + "', Password = '" + user.Password + "', SuperAdmin = " + user.SuperAdmin + ", Report = " + user.Report + " WHERE UserName = '" + user.UserName + "'";
                    if (DBGateway.ExecutionToDB(query, 1))
                    {
                        foreach (var i in user.rootNode)
                        {
                            var key = user.Sectors.FirstOrDefault(x => x.Value == i.title).Key;
                            
                            if (i.val == 1)
                            {
                                if (!DBGateway.recordExist("SELECT Id FROM UserPermission WHERE UserName = '" + user.UserName + "' AND Sector = '" + key + "'"))
                                {
                                    query = "INSERT INTO UserPermission (UserName, Sector) VALUES('" + user.UserName + "','" + key + "')";
                                    result = DBGateway.ExecutionToDB(query, 1);
                                }

                                foreach (var j in i.children)
                                {
                                    if (j.title == "Crud")
                                    {
                                        i.role.Crud = j.val;
                                        i.role.CValue = j.value;
                                    }
                                    else if (j.title == "LibrarySet")
                                    {
                                        i.role.LibrarySet = j.val;
                                        i.role.LValue = j.value;
                                    }
                                    else if (j.title == "Approval")
                                    {
                                        i.role.Approval = j.val;
                                        i.role.AValue = j.value;
                                    }
                                }

                                string UserPermissionQuery = "(SELECT Id FROM UserPermission WHERE UserName = '" + user.UserName + "' AND Sector = '" + key + "')";
                                if (!DBGateway.recordExist("SELECT Id FROM UserRole WHERE UserPermissionID = " + UserPermissionQuery + ""))
                                {
                                    query = " INSERT INTO UserRole (UserPermissionID, Crud, LibrarySet, Approval, CValue, LValue, AValue) VALUES(" + UserPermissionQuery + "," + i.role.Crud + ", " + i.role.LibrarySet + ", " + i.role.Approval + ", " + i.role.CValue + ", " + i.role.LValue + ", " + i.role.AValue + ")";
                                    result = DBGateway.ExecutionToDB(query, 1);
                                }
                                else
                                {
                                    query = " UPDATE UserRole SET Crud = " + i.role.Crud + ", LibrarySet = " + i.role.LibrarySet + ", Approval = " + i.role.Approval + " WHERE UserPermissionID = " + UserPermissionQuery + "";
                                    result = DBGateway.ExecutionToDB(query, 1);
                                }
                            }
                            else
                            {
                                string UserPermissionQuery = "(SELECT Id FROM UserPermission WHERE UserName = '" + user.UserName + "' AND Sector = " + key + ")";
                                query = " DELETE UserRole WHERE UserPermissionID = " + UserPermissionQuery + "";
                                if (DBGateway.ExecutionToDB(query, 1))
                                {
                                    query = " DELETE UserPermission WHERE UserName = '" + user.UserName + "' AND Sector = " + key;
                                    result = DBGateway.ExecutionToDB(query, 1);
                                }
                            }
                        }

                        query = "SELECT * FROM UserInfo WHERE UserName = '" + user.UserName + "'";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                user.Id = Convert.ToInt32(reader["Id"]);
                                user.Name = reader["Name"].ToString();
                                user.UserName = reader["UserName"].ToString();
                                user.Password = reader["Password"].ToString();
                                user.CreateDate = Convert.ToDateTime(reader["Date"]);
                            }
                        }
                    }
                    else
                    {
                        user = new User();
                    }
                }
                else
                {
                    user = new User();
                }
            }
            catch (Exception ex)
            {
                user = new User();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return user;
        }

        internal static User AddUser(User user)
        {
            try
            {
                string query = "SELECT * FROM UserInfo WHERE UserName = '"+ user.UserName+ "'";
                if (!DBGateway.recordExist(query))
                {
                    query = " INSERT INTO UserInfo (Name, UserName, Password, Date, SuperAdmin, Report) " +
                                                   " VALUES('" + user.Name + "','" + user.UserName + "','" + user.Password + "','" + user.CreateDate.ToString("yyyy/MM/dd") + "', 0,  " + user.Report + ")";
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
                                            i.role.CValue = j.value;
                                        }
                                        else if (j.title == "LibrarySet")
                                        {
                                            i.role.LibrarySet = j.val;
                                            i.role.LValue = j.value;
                                        }
                                        else if (j.title == "Approval")
                                        {
                                            i.role.Approval = j.val;
                                            i.role.AValue = j.value;
                                        }
                                    }
                                    string UserPermissionQuery = "(SELECT Top 1 (Id) FROM UserPermission WHERE UserName = '"+user.UserName+"' order by Id desc)";
                                    query = " INSERT INTO UserRole (UserPermissionID, Crud, Approval, LibrarySet, CValue, LValue, AValue) VALUES(" + UserPermissionQuery + "," + i.role.Crud + ", " + i.role.LibrarySet + ", " + i.role.Approval + ", " + i.role.CValue + ", " + i.role.LValue + ", " + i.role.AValue + ")";
                                    bool result = DBGateway.ExecutionToDB(query, 1);
                                }
                            }
                        }

                        query = "SELECT TOP 1 * FROM UserInfo order by Id desc";
                        SqlDataReader reader = DBGateway.GetFromDB(query);
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                user.Id = Convert.ToInt32(reader["Id"]);
                                user.Name = reader["Name"].ToString();
                                user.UserName = reader["UserName"].ToString();
                                user.Password = reader["Password"].ToString();
                                user.CreateDate = Convert.ToDateTime(reader["Date"]);
                            }
                        }
                    }
                }
                else
                {
                    user = new User();
                }
            }
            catch (Exception ex)
            {
                user = new User();
            }
            finally
            {
                if (DBGateway.connection.State == ConnectionState.Open)
                {
                    DBGateway.connection.Close();
                }
            }
            return user;
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
                string query = "SELECT * FROM UserPermission WHERE UserName = '" + UserName + "' ORDER BY Sector";
                SqlDataReader reader = DBGateway.GetFromDB(query);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        PermissionString = PermissionString == "" ? reader["Sector"].ToString() : PermissionString + "," + reader["Sector"].ToString();
                    }
                }
                else
                {
                    PermissionString = "";
                }

                if(UserName != "SuperAdmin@gmail.com")
                {
                    query = "SELECT * FROM UserInfo WHERE UserName = '" + UserName + "' AND Report = 1";
                    if (DBGateway.recordExist(query))
                    {
                        PermissionString = PermissionString + "," + 0;
                    }
                }
                else
                {
                    PermissionString = PermissionString == "" ? "1,2,3,4,5,6,7,8,9,10,11,12,13,14,0" : PermissionString + "," + "14,0";
                }

            }
            catch (Exception ex)
            {
                return null;
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

        internal static bool DeleteUser(int Id)
        {
            try
            {
                if (DBGateway.recordExist("SELECT * FROM UserInfo WHERE Id = " + Id))
                {
                    int count = 0;
                    SqlCommand cm = new SqlCommand(); SqlConnection cn = new SqlConnection(connectionStr); cm.Connection = cn; cn.Open();
                    cm.CommandText = "DELETE FROM UserRole WHERE UserPermissionID IN (SELECT Id FROM UserPermission WHERE UserName = (SELECT UserName FROM UserInfo WHERE Id = " + Id + "))";
                    cm.ExecuteNonQuery();
                    cm.CommandText = "DELETE FROM UserPermission WHERE UserName = (SELECT UserName FROM UserInfo WHERE Id = " + Id + ")";
                    cm.ExecuteNonQuery();
                    cm.CommandText = "DELETE UserInfo WHERE Id = " + Id;
                    cm.ExecuteNonQuery();
                    cn.Close();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return true;
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
                        user.Name = reader["Name"].ToString();
                        user.UserName = reader["UserName"].ToString();
                        user.Password = reader["Password"].ToString();
                        user.Report = Convert.ToInt32(reader["Report"]);
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

        private static User GetObj(SqlDataReader reader)
        {
            User ua = new User();
            try
            {
                ua.Id = Convert.ToInt32(reader["Id"]);
                ua.Name = reader["Name"].ToString();
                ua.UserName = reader["UserName"].ToString();
                ua.Password = reader["Password"].ToString();
                ua.CreateDate = Convert.ToDateTime(reader["Date"]);
            }

            catch (Exception ex)
            {
                ua = new User();
            }

            return ua;
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
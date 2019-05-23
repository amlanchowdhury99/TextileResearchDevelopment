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
        static string connectionStr = DBGateway.connectionString;

        internal static bool IsUserValid(User user)
        {
            try
            {
                if(DBGateway.recordExist("SELECT * FROM UserInfo WHERE UserName = '"+user.UserName+"' AND Password = '" + user.Password + "'"))
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
        }
    }
}
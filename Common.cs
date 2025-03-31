using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Online_Banking_Transaction
{
   

        public class Common
        {
            public static string GetConnectionString()
            {
                return ConfigurationManager.ConnectionStrings["BankingTransactionDBConnectionString"].ToString();
            }
        }

    public class utils
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;

    


        public int accountBalance(int userId)
        {
            int balanceAmount = 0;
            try
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Select Amount from Account where AccountId = @AccountId", con);
                cmd.Parameters.AddWithValue("@accountId", userId);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                balanceAmount = Convert.ToInt32(dt.Rows[0]["Amount"]) == 0 ? 0 : Convert.ToInt32(dt.Rows[0]["Amount"]);

            }
            catch (Exception ex)
            {

                System.Web.HttpContext.Current.Response.Write("<script>alert('Error - '" + ex.Message + ");<script>");
            }
            return balanceAmount;
        }
    }
    
}
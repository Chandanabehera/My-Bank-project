﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Online_Banking_Transaction
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            if (Session["forgotpassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd=new SqlCommand(@"update Account set Password=@Password where UserName=@UserName",con);
                cmd.Parameters.AddWithValue("@Password",txtNewPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@UserName", Session["forgotpassword"]);
                try
                {
                    con.Open();
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        Response.Redirect("Login.aspx", false);
                    }
                    else
                    {

                        erro.InnerText = "invalid input";
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error - " + ex.Message + " ');<script>");

                }
                finally
                {

                    con.Close();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}
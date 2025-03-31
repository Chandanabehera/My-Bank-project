using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Online_Banking_Transaction
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetuserSecurityQuestion();
            }
        }
        void GetuserSecurityQuestion()
        {
            if(Session["forgotpassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Select a.UserName,s.SecurityQuestionName,a.Answer from Account a 
                            inner join SecurityQuestion s on a.SecurityQuestionId = s.SecurityQuestionId 
                                          where UserName = @UserName", con);
                cmd.Parameters.AddWithValue("@UserName", Session["forgotpassword"]);
                try
                {
                    con.Open();
                    reader= cmd.ExecuteReader();
                    bool isTrue=false;
                    while (reader.Read())
                    {
                       isTrue = true;
                        lblusername.Text = reader["UserName"].ToString();
                        lblSecurityQuestion.Text = reader["SecurityQuestionName"].ToString() ;
                        hdnAnswer.Value = reader["Answer"].ToString();
                    }
                    if (!isTrue)
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
                    reader.Close();
                    con.Close();
                }

            }

        }
       
        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {
            if (txtAnswer.Text.Trim() == hdnAnswer.Value)
            {
                Response.Redirect("ChangePassword.aspx");
            }
            else
            {
                erro.InnerText = "invalid input";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
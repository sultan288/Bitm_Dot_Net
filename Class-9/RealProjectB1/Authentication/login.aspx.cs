using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealProjectB1.Authentication
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }   
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (CheckFieldValue() == false)
            {
                if (txtUsername.Text == "admin" && txtPassword.Text == "123")
                {
                    Session["userId"] = "1";
                    Session["userName"] = "Admin";
                    Response.Redirect("~/AdminHome.aspx");

                }
                else
                {
                    divMsg.Visible = true;
                    lblMsg.Text = "Incorrect Username or Password";
                }
            }

            /*string userName = txtUsername.Text;
            string password = txtPassword.Text;

            if (userName !="" && password !="")
            {               
                if (userName == "admin" && password =="123")
                {
                    
                    Response.Redirect("~/AdminHome.aspx");
                }
            }
            else
            {
                lblMsg.Text = "Incorrect Username or Password";
                divMsg.Visible = true;
            }*/
        }

        private bool CheckFieldValue()
        {
            bool IsReq = false;

            if (txtUsername.Text == "")
            {
                IsReq = true;
                lblMsg.Text = "Username can't be empty";
            }
            else if (txtPassword.Text == "")
            {
                IsReq = true;
                lblMsg.Text = "password can't be empty";
            }
            if (IsReq == true)
            {
                divMsg.Visible = true;
            }
            else
            {
                divMsg.Visible = false;
            }

            return IsReq;
        }

    }
}
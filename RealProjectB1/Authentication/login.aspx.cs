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
                divMsg.Visible = false;
            }   
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text!="" && txtPassword.Text!="")
            {
                string userName = txtUsername.Text;
                string password = txtPassword.Text;
                if (userName == "admin" && password =="123")
                {
                    Response.Redirect("~/AdminHome.aspx");
                }
            }
        }
    }
}
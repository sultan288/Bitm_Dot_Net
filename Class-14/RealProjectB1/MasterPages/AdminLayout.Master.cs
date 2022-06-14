﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealProjectB1.MasterPages
{
    public partial class AdminLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] !=null && Session["UserId"] !=null)
                {
                    lblUserName.Text = Session["UserName"].ToString();
                    string UserId = Session["UserId"].ToString();
                    string userimage = Session["UserImage"].ToString();
                    imgUser.ImageUrl = "~/assets/img/Users/" + userimage;
                }
                else
                {
                    Response.Redirect("~/auth/login.aspx");
                }
                
            }
        }
       

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/auth/login.aspx");
        }
    }
}
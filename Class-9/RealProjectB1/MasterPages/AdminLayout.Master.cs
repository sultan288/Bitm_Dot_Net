using System;
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
                lblUserName.Text = Session["userName"].ToString();
                string userid = Session["userId"].ToString(); 
             
                imgUser.ImageUrl = "~/assets/img/Users/" + userid + ".png";
            }
        }
    }
}
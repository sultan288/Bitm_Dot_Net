using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealProjectB1.auth
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divMsg.Visible = false;
                RememberCookie();
            }           
        }
        private void RememberCookie()
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                txtUsername.Text = Request.Cookies["UserName"].Value;
                txtPassword.Attributes["Value"] = Request.Cookies["Password"].Value;
            }
        }

        protected void btnLogin1_Click(object sender, EventArgs e)
        {
            if (CheckFieldValue()==false)
            {
                DataTable dtUserInfo = CheckLogin(txtUsername.Text.Trim(), txtPassword.Text);

                if (dtUserInfo.Rows.Count>0)
                {
                    Session["UserId"] = dtUserInfo.Rows[0]["UserId"].ToString();
                    Session["UserName"] = dtUserInfo.Rows[0]["FullName"].ToString();
                    Session["UserImage"] = dtUserInfo.Rows[0]["UserImage"].ToString();

                    SetCookie();
                    Response.Redirect("~/AdminHome.aspx");
                }
                else
                {
                    lblMsg.Text = "Incorrect Username or Password";
                    divMsg.Visible = true;
                }
            }
           
        }
        private void SetCookie()
        {
            HttpCookie mycookie = new HttpCookie("mycookie");
            mycookie["UserName"] = txtUsername.Text.Trim();
            mycookie["Password"] = txtPassword.Text.Trim();

            Response.Cookies.Add(mycookie);

            if (chkRememberMe.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(3);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(3);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Cookies["UserName"].Value = txtUsername.Text.Trim();
            Response.Cookies["Password"].Value = txtPassword.Text.Trim();
        }

        /// <summary>
        /// Login Info Check
        /// </summary>
        /// <param name="Username">string field</param>
        /// <param name="UPass">string field</param>
        /// <returns>data table</returns>
        private DataTable CheckLogin(string Username, string UPass)
        {
            DataTable dt = new DataTable();
            string ConnectionStr = @"Data Source = DESKTOP-S1DUBLF; Initial Catalog = DOTNETP1;  Integrated Security=true";
            SqlConnection cnn;
            cnn = new SqlConnection(ConnectionStr);

            SqlCommand cmd;

            string sqlString = @"select UserAuth.UserId,
             (User_Registraion.FirstName + ' ' + isnull(User_Registraion.MiddleName, '') + User_Registraion.LastName)
             as FullName, UserImage

             from UserAuth inner join
            User_Registraion on UserAuth.UserId = User_Registraion.UserId

            where IsActive = 1 and User_Registraion.UserName = '"+Username+"' and UserPassword = '"+UPass+"'";

            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();

            try
            {
                cnn.Open();
                cmd = new SqlCommand(sqlString, cnn);
                sda.SelectCommand = cmd;
                sda.Fill(ds);
                dt = ds.Tables[0];
                cnn.Close();

            }
            catch (Exception)
            {

              
            }

            return dt;
        }

        private bool CheckFieldValue()
        {      
           bool IsReq = false;

            if (txtUsername.Text=="")
            {
                IsReq = true;
                lblMsg.Text = "Username can't be empty";

            }
            else if (txtPassword.Text =="")
            {
                IsReq = true;
                lblMsg.Text = "Password can't be empty";
            }

            if (IsReq==true)
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
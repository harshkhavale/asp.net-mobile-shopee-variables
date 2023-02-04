using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_SignInPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            username.Focus();
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        void clr()
        {
            username.Text = String.Empty;
            password.Text = String.Empty;


        }
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {


            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [UserDataTbl] WHERE UserName=@usn and Password=@psw", conn);
            cmd.Parameters.AddWithValue("@usn", username.Text);
            cmd.Parameters.AddWithValue("@psw", password.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                String Utype;
                Utype = dt.Rows[0][5].ToString().Trim();
                if (Utype == "User")
                {
                    Session["username"] = null;
                    Session["username"] = username.Text;
                    Response.Redirect("~/WebPages/UserHome.aspx");

                }
                if (Utype == "Admin")
                {
                    Session["username"] = null;

                    Session["username"] = username.Text;

                    Response.Redirect("~/WebPages/AdminHome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Data!, You should check in on some of those fields below.')</script>");

            }
            conn.Close();
            clr();




        }
        if (CheckBox1.Checked)
        {
            Response.Cookies["USRNM"].Value = username.Text;
            Response.Cookies["PSW"].Value = password.Text;
            Response.Cookies["USRNM"].Expires = DateTime.Now.AddDays(10);
            Response.Cookies["PSW"].Expires = DateTime.Now.AddDays(10);

        }
        else
        {
            Response.Cookies["USRNM"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["PSW"].Expires = DateTime.Now.AddDays(-1);

        }

    }
}
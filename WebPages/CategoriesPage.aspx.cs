using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_CategoriesPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCategoryRepeater();
    }
    protected void AddCategoryNameBtn_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into CategoriesTbl(CategoryName) VALUES('" + AddCategoryName.Text + "')", con);
            cmd.ExecuteNonQuery();
            AddCategoryName.Text = String.Empty;
            AddCategoryName.Focus();
            con.Close();
            Response.Redirect("~/WebPages/CategoriesPage.aspx");
            Response.Write("<script>alert('Category Added succefully')</script>");

        }


    }
    private void BindCategoryRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand("SELECT * FROM CategoriesTbl", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RepeaterCategory.DataSource = dt;
                    RepeaterCategory.DataBind();
                }


            }
        }

    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_SubCategoryPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AddSubCategoryTextBox.Focus();
        if (!IsPostBack)
        {
            BindSubCatRepeater();
            BindMainCat();
        }


    }
    protected void AddSubCatBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("INSERT INTO SubCatTbl(SubCatName,CategoryId) Values(@subcatname,@catid)", con1);
            cmd1.Parameters.AddWithValue("@subcatname", AddSubCategoryTextBox.Text);
            cmd1.Parameters.AddWithValue("@catid", CategoryIdDDL.SelectedItem.Value);

            cmd1.ExecuteNonQuery();


            CategoryIdDDL.ClearSelection();
            CategoryIdDDL.Items.FindByValue("0").Selected = true;
            Response.Write("<script>alert('Sub-Category added successfully!')</script>");

            AddSubCategoryTextBox.Text = String.Empty;
            con1.Close();
            Response.Redirect("~/WebPages/SubCategoryPage.aspx");

        }

    }
    private void BindMainCat()
    {
        using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {

            con2.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM CategoriesTbl WITH (NOLOCK)", con2);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd2);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            if (dt1.Rows.Count != 0)
            {

                CategoryIdDDL.DataSource = dt1;

                CategoryIdDDL.DataTextField = "CategoryName";
                CategoryIdDDL.DataValueField = "CategoryId";
                CategoryIdDDL.DataBind();
                CategoryIdDDL.Items.Insert(0, new ListItem("SELECT", "0"));



            }
            con2.Close();

        }
    }
    private void BindSubCatRepeater()
    {
        using (SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {

            using (SqlCommand cmd3 = new SqlCommand("SELECT A.*,B.* FROM SubCatTbl A INNER JOIN CategoriesTbl B ON B.CategoryId = A.CategoryId", con3))
            {
                using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd3))
                {
                    DataTable dt2 = new DataTable();
                    sda2.Fill(dt2);
                    RepeaterBrands.DataSource = dt2;
                    RepeaterBrands.DataBind();
                }


            }
        }

    }
}
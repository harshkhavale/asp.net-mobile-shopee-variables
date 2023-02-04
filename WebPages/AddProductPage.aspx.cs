using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_AddProductPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindBrand();
            BindCategory();
            SubCategoryDDL.Enabled = false;
        }

    }
    private void BindBrand()
    {
        using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {

            con1.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM BrandsTbl WITH (NOLOCK)", con1);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            if (dt1.Rows.Count != 0)
            {

                BrandNameDDL.DataSource = dt1;

                BrandNameDDL.DataTextField = "BrandName";
                BrandNameDDL.DataValueField = "BrandId";
                BrandNameDDL.DataBind();
                BrandNameDDL.Items.Insert(0, new ListItem("SELECT", "0"));
            }
            con1.Close();

        }
    }
    private void BindCategory()
    {
        using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {

            con2.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM CategoriesTbl WITH (NOLOCK)", con2);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            if (dt2.Rows.Count != 0)
            {

                CategoryDDL.DataSource = dt2;

                CategoryDDL.DataTextField = "CategoryName";
                CategoryDDL.DataValueField = "CategoryId";
                CategoryDDL.DataBind();
                CategoryDDL.Items.Insert(0, new ListItem("SELECT", "0"));



            }

            con2.Close();

        }
    }


    protected void AddProduct_Click(object sender, EventArgs e)
    {

        using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("InsertProduct", con1);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@ProductName", ProductName.Text);
            cmd1.Parameters.AddWithValue("@ProductPrice", ProductPrice.Text);
            cmd1.Parameters.AddWithValue("@ProductSellingPrice", SellingPrice.Text);
            cmd1.Parameters.AddWithValue("@BrandId", BrandNameDDL.SelectedItem.Value);


            cmd1.Parameters.AddWithValue("@CategoryId", CategoryDDL.SelectedItem.Value);

            if (SubCategoryDDL.SelectedItem != null)
            {
                cmd1.Parameters.AddWithValue("@SubCategoryId", SubCategoryDDL.SelectedItem.Value);
            }
            else
            {
                cmd1.Parameters.AddWithValue("@SubCategoryId", 0);

            }

            cmd1.Parameters.AddWithValue("@ProductDescription", ProductDescription.Text);

            cmd1.Parameters.AddWithValue("@ProductDetails", ProductDetails.Text);




            if (FreeDelivery.Checked == true)
            {
                cmd1.Parameters.AddWithValue("@FreeDelivery", 1.ToString());

            }
            else
            {
                cmd1.Parameters.AddWithValue("@FreeDelivery", 0.ToString());

            }

            if (Return30Day.Checked == true)
            {
                cmd1.Parameters.AddWithValue("@30DaysReturn", 1.ToString());

            }
            else
            {
                cmd1.Parameters.AddWithValue("@30DaysReturn", 0.ToString());

            }
            if (COD.Checked == true)
            {
                cmd1.Parameters.AddWithValue("@CashOnDelivery", 1.ToString());

            }
            else
            {
                cmd1.Parameters.AddWithValue("@CashOnDelivery", 0.ToString());

            }
            cmd1.Parameters.AddWithValue("@ProductStock", Stock.Text);
            cmd1.Parameters.AddWithValue("@ProductHighlight1", ProductHighlight1.Text);
            cmd1.Parameters.AddWithValue("@ProductHighlight2", ProductHighlight2.Text);




            Int64 PID = Convert.ToInt64(cmd1.ExecuteScalar());

            if (ProductImg1.HasFile)
            {
                String SavePath = Server.MapPath("~/variablesImages/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(ProductImg1.PostedFile.FileName);

                ProductImg1.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "01" + Extention);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO ProductImageTbl VALUES('" + PID + "','" + ProductName.Text.ToString().Trim() + "01" + "','" + Extention + "')", con1);
                cmd2.ExecuteNonQuery();
            }


            if (ProductImg2.HasFile)
            {
                String SavePath = Server.MapPath("~/variablesImages/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(ProductImg2.PostedFile.FileName);

                ProductImg2.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "02" + Extention);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO ProductImageTbl VALUES('" + PID + "','" + ProductName.Text.ToString().Trim() + "02" + "','" + Extention + "')", con1);
                cmd2.ExecuteNonQuery();
            }

            if (ProductImg3.HasFile)
            {
                String SavePath = Server.MapPath("~/variablesImages/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(ProductImg3.PostedFile.FileName);

                ProductImg3.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "03" + Extention);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO ProductImageTbl VALUES('" + PID + "','" + ProductName.Text.ToString().Trim() + "03" + "','" + Extention + "')", con1);
                cmd2.ExecuteNonQuery();
            }

            if (ProductImg4.HasFile)
            {
                String SavePath = Server.MapPath("~/variablesImages/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(ProductImg4.PostedFile.FileName);

                ProductImg4.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "04" + Extention);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO ProductImageTbl VALUES('" + PID + "','" + ProductName.Text.ToString().Trim() + "04" + "','" + Extention + "')", con1);
                cmd2.ExecuteNonQuery();
            }

            if (ProductImg5.HasFile)
            {
                String SavePath = Server.MapPath("~/variablesImages/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(ProductImg5.PostedFile.FileName);

                ProductImg5.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "05" + Extention);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO ProductImageTbl VALUES('" + PID + "','" + ProductName.Text.ToString().Trim() + "05" + "','" + Extention + "')", con1);
                cmd2.ExecuteNonQuery();
            }
            if (ProductImg6.HasFile)
            {
                String SavePath = Server.MapPath("~/variablesImages/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(ProductImg6.PostedFile.FileName);

                ProductImg6.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "06" + Extention);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO ProductImageTbl VALUES('" + PID + "','" + ProductName.Text.ToString().Trim() + "06" + "','" + Extention + "')", con1);
                cmd2.ExecuteNonQuery();
            }







            Response.Write("<script>alert('Product added successfully!')</script>");

            con1.Close();


            BrandNameDDL.ClearSelection();
            BrandNameDDL.Items.FindByValue("0").Selected = true;

            CategoryDDL.ClearSelection();
            CategoryDDL.Items.FindByValue("0").Selected = true;

            SubCategoryDDL.ClearSelection();
            SubCategoryDDL.Items.FindByValue("0").Selected = true;


            Response.Redirect("~/WebPages/AddProductPage.aspx");

        }
    }









    protected void CategoryDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (CategoryDDL.SelectedIndex == 0)
        {
            SubCategoryDDL.Enabled = false;

        }
        else
        {
            SubCategoryDDL.Enabled = true;



            int MainId = Convert.ToInt32(CategoryDDL.SelectedItem.Value);
            using (SqlConnection con4 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {

                con4.Open();
                SqlCommand cmd4 = new SqlCommand("SELECT * FROM SubCatTbl WHERE CategoryId = '" + MainId + "'", con4);
                SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
                DataTable dt4 = new DataTable();
                sda4.Fill(dt4);
                if (dt4.Rows.Count != 0)
                {

                    SubCategoryDDL.DataSource = dt4;
                    SubCategoryDDL.DataTextField = "SubCatName";
                    SubCategoryDDL.DataValueField = "SubCatId";
                    SubCategoryDDL.DataBind();
                    SubCategoryDDL.Items.Insert(0, new ListItem("SELECT", "0"));
                }
                else
                {
                    SubCategoryDDL.Enabled = false;


                }
                con4.Close();

            }
        }
    }

}
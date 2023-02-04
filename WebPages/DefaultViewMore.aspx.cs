using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_DefaultViewMore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindProductImgRptr();
        BindProductDetails();
        BindReview();

    }
    private void BindProductImgRptr()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            con1.Open();
            using (SqlCommand cmd1 = new SqlCommand("SELECT * FROM ProductImageTbl WHERE ProductId= '" + PID + "'", con1))
            {
                cmd1.CommandType = CommandType.Text;
                using (SqlDataAdapter sda1 = new SqlDataAdapter(cmd1))
                {
                    DataTable dt1 = new DataTable();
                    sda1.Fill(dt1);
                    ImgRptr.DataSource = dt1;
                    ImgRptr.DataBind();
                }
            }
        }
    }
    private void BindProductDetails()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            con2.Open();
            using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM ProductDataTbl WHERE ProductId= '" + PID + "'", con2))
            {
                cmd2.CommandType = CommandType.Text;
                using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd2))
                {
                    DataTable dt2 = new DataTable();
                    sda2.Fill(dt2);
                    ProductDetailsRptr.DataSource = dt2;
                    ProductDetailsRptr.DataBind();
                }
            }
        }
    }
    private void BindReview()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            con2.Open();
            using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM ProductReviewTbl WHERE ProductID= '" + PID + "'", con2))
            {
                cmd2.CommandType = CommandType.Text;
                using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd2))
                {
                    DataTable dt2 = new DataTable();
                    sda2.Fill(dt2);
                    if (dt2.Rows.Count != 0)
                    {
                        ReviewRptr.DataSource = dt2;
                        ReviewRptr.DataBind();
                    }
                    else
                    {
                        ReviewRptr.DataSource = null;
                        reviewlbl.InnerText = "no review's yet";
                    }

                }
            }
        }
    }
    protected String GetActiveImgClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";

        }
    }
}
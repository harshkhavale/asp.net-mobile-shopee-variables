using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_BindCategoryPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindProductRptr();
        }
    }
    private void BindProductRptr()
    {
        using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            String category = Request.QueryString["catname"].ToString();
            PageNameLbl.InnerText = category.ToUpperInvariant();
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("EXEC BindCategoryPages @categoryname = '" + category + "'", con1);
            
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    SmartphonesRptr.DataSource = dt;
                    SmartphonesRptr.DataBind();
                }
            
        }
    }
}
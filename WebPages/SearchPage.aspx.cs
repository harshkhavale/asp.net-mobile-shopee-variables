using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_SearchPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindProductRptr();
        }
    }
    private void BindProductRptr()
    {
        String query = Request.QueryString["findquery"].ToString();

        using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("EXEC SearchFunction @find = "+query+"", con1);

            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    searchProductrptr.DataSource = dt;
                    searchProductrptr.DataBind();
                }
            }
        }

    }
}
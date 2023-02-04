using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_DeliveryDataPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindDeliveriesRepeater();
    }
    private void BindDeliveriesRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand("SELECT * FROM ProductDeliveryTbl", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Repeater.DataSource = dt;
                    Repeater.DataBind();
                }


            }
        }

    }

}
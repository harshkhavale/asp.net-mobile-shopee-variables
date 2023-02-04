using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_UserAccountPage : System.Web.UI.Page
{
    DataTable dt50 = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {   userinfobox.Visible = true;
            purchasebox.Visible = false;
            changepasswordbox.Visible = false;
            BindUser();
            BindPurchase();
        }

    }
    private void BindPurchase()
    {
        using (SqlConnection con5 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            SqlCommand cmd5 = new SqlCommand("SELECT DISTINCT * FROM ProductDeliveryTbl P\r\ninner join ProductDataTbl PD on PD.ProductId=P.ProductId\r\ninner join BrandsTbl B on PD.BrandId=B.BrandId\r\nCROSS APPLY(SELECT TOP 1 * FROM ProductImageTbl I WHERE I.ProductId = P.ProductId ORDER BY I.ProductId DESC)I\r\nWHERE UserName='" + Session["username"] + "'", con5);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd5))
            {
                DataTable dt2 = new DataTable();
                sda.Fill(dt2);
                if (dt2.Rows.Count != 0)
                {
                    H1.Visible = true;

                    purchasebox.Disabled = false;
                    PurchaseRptr.DataSource = dt2;
                    PurchaseRptr.DataBind();
                }
                else
                {
                    msg2.Text = "EMPTY";
                    purchasebox.Disabled = true;

                    H1.Visible = false;
                    PurchaseRptr.DataSource = null;

                }
            }
            con5.Close();
        }

    }
    private void BindUser()
    {

        using (SqlConnection con7 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            SqlCommand cmd5 = new SqlCommand("SELECT * FROM UserDataTbl WHERE UserName='" + Session["username"] + "'", con7);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd5))
            {

                sda.Fill(dt50);


            }
            if (dt50.Rows.Count != 0)
            {
                UserNameLbl.Text = dt50.Rows[0][1].ToString();
                FullNameLbl.Text = dt50.Rows[0][4].ToString();
                EmailLbl.Text = dt50.Rows[0][6].ToString();
                MobileNo.Text = dt50.Rows[0][7].ToString();
                PassLbl.Text = dt50.Rows[0][2].ToString();

            }
            else
            {
                Response.Redirect("~/WebPages/SignInPage.aspx");
            }


            con7.Close();
        }
    }
    protected void CancelOrderBtn_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
    }

    protected void PurchaseRptr_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        using (SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            SqlCommand cmd5 = new SqlCommand("DELETE FROM ProductDeliveryTbl WHERE ProductId = '" + index + "'AND UserName='" + Session["username"] + "'", con3);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd5))
            {
                DataTable dt2 = new DataTable();
                sda.Fill(dt2);
                PurchaseRptr.DataSource = dt2;
                PurchaseRptr.DataBind();

            }

            Response.Redirect("~/WebPages/UserAccountPage.aspx");
            con3.Close();
        }
    }


    protected void ChangePasswordBtn_Click(object sender, EventArgs e)
    {
        if (oldpassword.Text == PassLbl.Text)
        {
            if (newpassword.Text == confirmpassword.Text)
            {

                using (SqlConnection con5 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con5.Open();
                    SqlCommand cmd5 = new SqlCommand("UPDATE UserDataTbl SET Password='" + newpassword.Text + "',ConfirmPassword='" + confirmpassword.Text + "' where UserName='" + Session["username"].ToString() + "'", con5);
                    cmd5.ExecuteNonQuery();


                    con5.Close();

                }
                newpassword.Text = String.Empty;
                confirmpassword.Text = String.Empty;
            }
            else
            {
                msg.Text = "new password and confirm password are not same";

                newpassword.Focus();
            }
        }
        else
        {
            msg.Text = "wrong password 1";
            oldpassword.Focus();
        }


    }

    protected void UserInfo_Click(object sender, EventArgs e)
    {
        userinfobox.Visible = true;
        purchasebox.Visible = false;
        changepasswordbox.Visible = false;
    }

    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        userinfobox.Visible = false;
        purchasebox.Visible = false;
        changepasswordbox.Visible = true;
    }

    protected void Orders_Click(object sender, EventArgs e)
    {
        userinfobox.Visible = false;
        purchasebox.Visible = true;
        changepasswordbox.Visible = false;
    }
}
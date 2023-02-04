using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPages_PreSignUpPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            postcontent.Visible = false;
            email.Focus();
        }

    }

    protected void SendOtpBtn_Click(object sender, EventArgs e)
    {
        if (!(email.Text.Contains('@')))
        {
            Response.Write("<script>alert('Email should contain @')</script>");
            email.Focus();

        }
        if (email.Text.Contains('@'))
        {
            string otp = GetOTP(4);
            Response.Cookies["OTP"].Value = otp;

            String EmailBody = "Hi,USER ,<br/><br/>Your OTP is " + otp + ".To open a new Variables Account!";

            SendMail(email.Text, EmailBody);
            Response.Write("<script>alert('OTP sended to your Email')</script>");
            otpstat.Text = "OTP has been successfully sended to "+ email.Text +" ,<br>check the gmail";
            postcontent.Visible = true;
            precontent.Visible = false;
            OTP.Focus();


        }
        else
        {
            Response.Write("<script>alert('Check your Email')</script>");


        }
    }


    private string GetOTP(int iOTPLength)
    {
        string[] saAllowedCharacters = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };


        string sOTP = String.Empty;

        string sTempChars = String.Empty;

        Random rand = new Random();

        for (int i = 0; i < iOTPLength; i++)
        {

            int p = rand.Next(0, saAllowedCharacters.Length);

            sTempChars = saAllowedCharacters[rand.Next(0, saAllowedCharacters.Length)];

            sOTP += sTempChars;

        }

        return sOTP;

    }
    private void SendMail(String Email, String EmailBody)
    {
        // email send process -
        String ToEmailAddress = Email;
        MailMessage PassRecMail = new MailMessage("variables.pvt.lmt@gmail.com", ToEmailAddress);
        PassRecMail.Body = EmailBody;
        PassRecMail.IsBodyHtml = true;
        PassRecMail.Subject = "OTP";

        using (SmtpClient client = new SmtpClient())
        {
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("variables.pvt.lmt@gmail.com", "fmzrswkdeymytrpr");
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Send(PassRecMail);

        }



       
    }
    protected void SubmitOtpbtn_Click(object sender, EventArgs e)
    {
        if (OTP.Text == Request.Cookies["OTP"].Value)
        {
            Response.Redirect("~/WebPages/SignUpPage.aspx?email="+email.Text+"");
        }
        else
        {
            Response.Write("<script>alert('OTP is incorrect')</script>");


        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {           
          
    }

    protected void Reprint_Click(object sender, EventArgs e)
    {        
        RegularExpressionValidator1.Enabled = reprint.Checked;
        RequiredFieldValidator1.Enabled = reprint.Checked;
        RequiredFieldValidator7.Enabled = reprint.Checked;
    }

    protected void Order_Submit(object sender, EventArgs e)
    {
        Validate();

        if (IsValid)
        {
            HttpContext.Current.Session["order_id"] = String.Format("{0:d9}", (DateTime.Now.Ticks / 10000000));
            
            string template =
            @"
            <strong>Order details</strong>,<br/> 
            Ordered By: ##ORDERED_BY##<br/>
            Email: ##DETAILS_EMAIL##<br/>
            Quantity: ##QUANTITY##<br/>
            Ship To: ##SHIP_TO##<br/>
            <br/>    
            <strong>Card front information</strong>,<br/>
            Name: ##NAME##<br/>
            Email: ##EMAIL##<br/>
            Phone: ##PHONE##<br/>
            Fax: ##FAX##<br/>
            Address: ##ADDRESS##<br/>
            City: ##CITY##<br/>
            State: ##STATE##<br/>
            Zip: ##ZIP##<br/>
            OrderID: ##ORDER_ID##";             

            string quantity = "";
            bool isChecked = RadioButton1.Checked;
            if(isChecked )
              quantity=RadioButton1.Text;
            else
              quantity=RadioButton2.Text;

            string body = template
                .Replace("##ORDERED_BY##", ordered_by.Text)
                .Replace("##DETAILS_EMAIL##", email.Text)
                .Replace("##QUANTITY##", quantity)
                .Replace("##SHIP_TO##", DropDownList1.SelectedItem.Text)
                .Replace("##NAME##", name.Text)
                .Replace("##PHONE##", phone_part_one.Text + "-" + phone_part_two.Text + "-" + phone_part_three.Text)
                .Replace("##FAX##", fax_part_one.Text + "-" + fax_part_two.Text + "-" + fax_part_three.Text)
                .Replace("##ADDRESS##", address.Text)
                .Replace("##EMAIL##", card_email.Text)
                .Replace("##CITY##", city.Text)
                .Replace("##STATE##", DropDownListState.SelectedItem.Text)
                .Replace("##ZIP##", zip.Text)
                .Replace("##ORDER_ID##", HttpContext.Current.Session["order_id"].ToString());

            this.SendEmail("support@graphinity.com", "Carite Order", body);

            Response.Redirect("thank_you.aspx", true);
        }
    }

    public void SendEmail(string address, string subject, string message)
    {
        string email = "FROM_EMAIL";
        string password = "FROM_PASSWORD";

        var loginInfo = new NetworkCredential(email, password);
        var msg = new MailMessage();
        var smtpClient = new SmtpClient("smtp.gmail.com", 587); // SMTP SETTINGS

        msg.From = new MailAddress(email);
        msg.To.Add(new MailAddress(address));
        msg.Subject = subject;
        msg.Body = message;
        msg.IsBodyHtml = true;

        smtpClient.EnableSsl = true;
        smtpClient.UseDefaultCredentials = false;
        smtpClient.Credentials = loginInfo;
        smtpClient.Send(msg);
    }
}
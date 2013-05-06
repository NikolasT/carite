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

            var fromAddress = new MailAddress("carite@graphinity.com", "Carite");
            //var toAddress = new MailAddress("support@graphinity.com", "Support");            
            var toAddress = new MailAddress("nikolas.toloknov@gmail.com", "Support");
            const string fromPassword = "fromPassword";
            const string subject = "Subject";
            string template =
            @"
            Order details, 
            Ordered By: ##ORDERED_BY##
            Email: ##DETAILS_EMAIL##
            Quantity: ##QUANTITY##
            Ship To: ##SHIP_TO##

            Card front information,
            Name: ##NAME##
            Email: ##EMAIL##
            Phone: ##PHONE##
            Fax: ##FAX##
            Address: ##ADDRESS##
            City: ##CITY##
            State: ##STATE##
            Zip: ##ZIP##
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

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = false,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = true,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }

            Response.Redirect("thank_you.aspx", true);
        }
    }
}
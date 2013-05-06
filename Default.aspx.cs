using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            Response.Redirect("thank_you.aspx", true);
        }
    }
}
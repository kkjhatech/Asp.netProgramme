using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Part5_Session1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Clicks"] == null)
            {
                Session["Clicks"] = 0;
            }
            TextBox1.Text = Session["Clicks"].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            int ClicksCount = (int)Session["Clicks"] + 1;
            TextBox1.Text = ClicksCount.ToString();
            Session["Clicks"] = ClicksCount;



        }
    }
}
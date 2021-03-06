using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Part5_applicationState2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Application["Clicks"] == null)
                {
                    Application["Clicks"] = 0;
                }
                TextBox1.Text = Application["Clicks"].ToString();
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int ClicksCount = (int)Application["Clicks"] + 1;
            TextBox1.Text = ClicksCount.ToString();
            Application["Clicks"] = ClicksCount;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Part5_ViewState2 : System.Web.UI.Page
    {
        int ClicksCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = "0";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (ViewState["Clicks"] != null)
            {
                ClicksCount = (int)ViewState["Clicks"] + 1;
            }
            TextBox1.Text = ClicksCount.ToString(); ;
            ViewState["Clicks"] = ClicksCount;



        }
    }
}
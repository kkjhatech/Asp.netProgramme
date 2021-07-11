using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Part3_ViewStateExample : System.Web.UI.Page
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
            //ClicksCount = ClicksCount + 1;
            //TextBox1.Text = ClicksCount.ToString();

            //  With this code in place, run the application, and click the Button. We expect the count to be increased 
            //every time we click the button.When you click it the first time, it gets incremented to 1.After that,
            //no matter how many times you click it, the value stays at 1.This is because of the stateless nature of 
            //the web applications that work on HTTP protocol.

            //if (ViewState["Clicks"] != null)
            //{
            //    ClicksCount = (int)ViewState["Clicks"] + 1;
            //}
            //TextBox1.Text = ClicksCount.ToString(); ;
            //ViewState["Clicks"] = ClicksCount;

            // Now, let's try to achieve the same behaviour, without explicitly storing data in a ViewState variable. Modify the WebForm1 code as shown below.
            int ClicksCount = Convert.ToInt32(TextBox1.Text) + 1;
            TextBox1.Text = ClicksCount.ToString();

            // Upon clicking the Button, the value gets incremented correctly 
            //as expected.This is possible because, TextBox1 is an asp.net server control,
            //that uses viewstate internally, to preserve data across postbacks.
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            ViewState["Name"] = txtname.Text;
            ViewState["Age"] = txtage.Text;
            txtname.Text = "";
            txtage.Text = "";
        }

        protected void btnRestore_Click(object sender, EventArgs e)
        {
            txtname.Text = ViewState["Name"].ToString ();
            txtage.Text = ViewState["Age"].ToString();
        }
    }
}
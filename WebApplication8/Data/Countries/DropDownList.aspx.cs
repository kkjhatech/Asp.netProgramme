using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace WebApplication8.Data.Countries
{
    public partial class DropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("Countries.xml"));
                ddlCountry.DataSource = ds.Tables[0];
                ddlCountry.DataTextField = "CountryName";
                ddlCountry.DataValueField = "CountryId";
                ddlCountry.DataBind();
            }

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            if (ddlCountry.SelectedValue != "-1")
            {
                Response.Write("Selected Item Text = " + ddlCountry.SelectedItem.Text + "<br/>");
                Response.Write("Selected Item Value = " + ddlCountry.SelectedItem.Value + "<br/>");
                Response.Write("Selected Item Index = " + ddlCountry.SelectedIndex.ToString());
            }
            else
            {
                Response.Write("Please select the country");
            }
        }
    }
}
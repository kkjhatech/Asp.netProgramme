using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.Country.State.City
{
    public partial class City : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("one directory back"+Server.MapPath("./"));
            Response.Write("Two directory back"+Server.MapPath("../"));
          //  Response.Write("Three diectory back"+Server.MapPath(".../"));
            Response.Write("Parent directory back"+ Server.MapPath("~/"));
            // Image1.ImageUrl = "~/WelcomeScan.jpg";

            DataSet ds = new DataSet();
            // ds.ReadXml(Server.MapPath("../../../Data/Countries/Countries.xml"));
            ds.ReadXml(Server.MapPath("~/Data/Countries/Countries.xml"));
            ddlCountry.DataSource = ds.Tables[0];
            ddlCountry.DataTextField = "CountryName";
            ddlCountry.DataValueField = "CountryId";
            ddlCountry.DataBind();
        }
    }
}
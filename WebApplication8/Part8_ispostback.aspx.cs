using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Part8_ispostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    LoadCityDropDownList();
            //}
            ddlCity.Items.Clear();
            LoadCityDropDownList();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }


        public void LoadCityDropDownList()
        {
            bindata();
            //ListItem li1 = new ListItem("London");
            //ddlCity.Items.Add(li1);

            //ListItem li2 = new ListItem("Sydney");
            //ddlCity.Items.Add(li2);

            //ListItem li3 = new ListItem("Mumbai");
            //ddlCity.Items.Add(li3);
        }

        public void bindata()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select city_id,city_name from tblcity", ConfigurationManager.ConnectionStrings["mytest"].ConnectionString);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ddlCity.DataSource = dt;
                ddlCity.DataTextField = "city_name";
                ddlCity.DataValueField = "city_id";
                ddlCity.DataBind();
                //  ddlCity.Items.Add("--select--");
                ddlCity.Items.Insert(0, "Select");
            }
        }

    }
}
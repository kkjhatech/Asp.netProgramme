using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Part23_CheckboxList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem li in CheckBoxList1.Items)
            {
                // If the list item is selected
                if (li.Selected)
                {
                    // Retrieve the text of the selected list item

                    
                    Response.Write("Text = " + li.Text + ", ");
                    // Retrieve the value of the selected list item
                    Response.Write("Value = " + li.Value + ", ");
                    // Retrieve the index of the selected list item
                    Response.Write("Index = " + CheckBoxList1.Items.IndexOf(li).ToString());
                    Response.Write("<br/>");
                }
            }
        }
    }
}

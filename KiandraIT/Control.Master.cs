using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KiandraIT
{
    public partial class Control : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"]!= null) { }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }


        protected void ButtonML_Click(object sender, EventArgs e)
        {
            Response.Redirect("memberlist.aspx");
        }

        protected void ButtonAddNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void ButtonHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void ButtonNamelist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Namelist.aspx");
        }
    }
}
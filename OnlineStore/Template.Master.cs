using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineStore.Forms
{
    public partial class Template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["logged"] != null && Session["logged"].Equals(true))
            {
                Link1.Visible = false;
                Link2.Visible = false;
                Link3.Visible = true;
            }
            else 
            {
                Link1.Visible = true;
                Link2.Visible = true;
                Link3.Visible = false;
            }

        }
        protected void login_Click(object sender, EventArgs e)
        {
            Session["logged"] = null;

            Link1.Visible = true;
            Link2.Visible = true;
            Link3.Visible = false;
        }
    }
}
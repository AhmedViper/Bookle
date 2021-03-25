using System;
using System.Web.UI.WebControls;

using System.Data;
using System.Collections;
using System.Web.UI;

namespace OnlineStore.Forms
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
                
            }
            else
            {
                LinkButton1.Visible = true;

                DataTable Table = new DataTable();
                Table.Columns.AddRange(new DataColumn[] { new DataColumn("ID"), new DataColumn("Title"), new DataColumn("Author"), new DataColumn("Price") });
                Table.Rows.Add(1, "The Sun In His Eyes<br>&nbsp", "Unknown", "100");
                Table.Rows.Add(2, "Warhammer <br> Orcs & Goblins", "Unknown", "200");

                DataTable Table2 = new DataTable();
                Table2.Columns.AddRange(new DataColumn[] { new DataColumn("ID"), new DataColumn("Title"), new DataColumn("Author"), new DataColumn("Price") });

                foreach (var i in (ArrayList)Session["cart"]) Table2.ImportRow(Table.Rows[(int)i - 1]);
                ListView.DataSource = Table2;
                ListView.DataBind();

                Table.Dispose();
                Table2.Dispose();
            }

            if (ListView.Items.Count == 0) LinkButton1.Visible = false;
        }
        protected void SrvButton_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["cart"] != null)
            {
                ImageButton myButton = (ImageButton)sender;
                ArrayList list = (ArrayList)Session["cart"];

                list.Remove(Convert.ToInt32(myButton.CommandArgument.ToString()));
                Session["cart"] = list;

                Response.Redirect(Request.RawUrl);
            }
            else Response.Write("Error");
        }
    }
}
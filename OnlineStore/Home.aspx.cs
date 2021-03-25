using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.IO;

using Newtonsoft.Json;

namespace OnlineStore.Forms
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable Table = new DataTable();
            
            Table.Columns.AddRange(new DataColumn[] { new DataColumn("ID"), new DataColumn("Title"), new DataColumn("Author"), new DataColumn("Price") });

            Table.Rows.Add(1, "The Sun In His Eyes", "Unknown", "100");
            Table.Rows.Add(2, "Warhammer - Orcs & Goblins", "Unknown", "200");

            ListView.DataSource = Table;
            ListView.DataBind();

            Table.Dispose();


            /*
            //Read calendar info from JSON file    
            JObject jObject = ReadJSONData(jsonFilename);
            for (int i = 0; i < jObject["employee"].Count(); i++)
            {
                //Your logic goes here...    
            }*/
        }
        protected void srvButton_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton myButton = (ImageButton)sender;
            int i = Convert.ToInt32(myButton.CommandArgument.ToString());
            
            ArrayList list = new ArrayList();
            if (Session["cart"] != null) list = (ArrayList)Session["cart"];
            list.Add(i);
            Session["cart"] = list;

            Response.Redirect("/Bookle/Forms/cart.aspx");
        }
        /*
        public Rootobject ReadJSONData(string jsonFilename)
        {
            try
            {
                Book jObject;
                // Read JSON directly from a file    
                using (StreamReader file = System.IO.File.OpenText(jsonFilename))
                using (JsonTextReader reader = new JsonTextReader(file))
                {
                    jObject = (JObject)JToken.ReadFrom(reader);
                }
                return jObject;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Occurred : " + ex.Message);
                return null;
            }
        }
 */
    }
}
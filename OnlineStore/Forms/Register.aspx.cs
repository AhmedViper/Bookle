using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;


namespace OnlineStore.Forms
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i<=90; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=.; Initial Catalog=OnlineStore;Integrated Security=true");
            connection.Open();

            SqlCommand command = new SqlCommand("SELECT * FROM [UserData] WHERE Email='" + TextBox1.Text + "'", connection);
            SqlDataReader DR = command.ExecuteReader();

            
            if (DR.Read())
            {
                Label1.Visible = true;
            }
            else
            {
                DR.Close();
                Label1.Visible = false;
                command.CommandText = "INSERT INTO [UserData] VALUES('"+TextBox1.Text+"','"+TextBox2.Text+ "','" + TextBox4.Text + "','" + TextBox5.Text + "'," + DropDownList1.SelectedValue + ", " + DropDownList2.SelectedIndex + ")";
                command.ExecuteNonQuery();

                Response.Redirect("Login.aspx");
            }

            DR.Close();
            command.Dispose();
            connection.Close();
        }
    }
}
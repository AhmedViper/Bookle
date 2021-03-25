using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineStore.Forms
{
    public partial class User : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack) Page.Validate("Group2");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=.; Initial Catalog=OnlineStore;Integrated Security=true");
            connection.Open();

            SqlCommand command = new SqlCommand("SELECT Password FROM [UserData] WHERE Email='" + TextBox1.Text + "'", connection);
            SqlDataReader DR = command.ExecuteReader();
            
            Label1.Visible = true;
            if (DR.Read())
            {
                if (TextBox2.Text == DR.GetString(0))
                {
                    Session["logged"] = true;
                    Response.Redirect("home.aspx");
                }   
            else Label1.Text = "Wrong Password";
            }
            else Label1.Text = "This email address is not registerd on our website";

            DR.Close();
            command.Dispose();
            connection.Close();
        }

        protected void OnTextChange(object sender, EventArgs e)
        {
            Page.Validate("Group1");
            if (!Page.IsValid) Label1.Visible = false;
        }
    }
}
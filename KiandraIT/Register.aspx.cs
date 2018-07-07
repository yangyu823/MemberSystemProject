using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace KiandraIT
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MembListConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from [Table] where Username = '" + TextBoxUN.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if(temp == 1)
                {
                    Response.Write("User already Exists");
                }


                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MembListConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into [Table] (Username,Password,Fullname,Phone,Email) values (@Uname,@password,@fname,@phone,@email)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@password", TextBoxPW.Text);
                com.Parameters.AddWithValue("@fname", TextBoxFN.Text);
                com.Parameters.AddWithValue("@phone", TextBoxPhone.Text);
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text);

                com.ExecuteNonQuery();
                Response.Redirect("memberlist.aspx");
                Response.Write("Your registration is successful!");

                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error !" + ex.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBoxEmail.Text = string.Empty;
            TextBoxPhone.Text = string.Empty;
            TextBoxCPW.Text = string.Empty;
            TextBoxFN.Text = string.Empty;
            TextBoxPW.Text = string.Empty;
            TextBoxUN.Text = string.Empty;

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;




namespace KiandraIT
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
         
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MembListConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [Table] where Username = '" + TextBoxInputUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();
                string checkPassworkQuery = "select Password from [Table] where Username = '" + TextBoxInputUN.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPassworkQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");
                if(password == TextBoxInputPW.Text)
                {
                    Session["New"] = TextBoxInputUN.Text;
                    MessageBox.Show("Great!!! Login successfully.");
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    MessageBox.Show("Warning ! Incorrect Password!");
                    //M("Incorrect Password!");
                }
            }
            else
            {
                MessageBox.Show("Warning ! User does not exist!");
            }


                

           
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {

                TextBoxInputPW.Text = string.Empty;
                TextBoxInputUN.Text = string.Empty;
            
        }
    }
}
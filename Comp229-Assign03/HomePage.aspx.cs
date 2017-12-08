using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace comp
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command;
            SqlConnection connection;

            string connectionString =
                ConfigurationManager.ConnectionStrings[
                "Comp229Assign03ConnectionString"].ConnectionString;
            //** Reference was missing. Added'using System.Configuration' 



            connection = new SqlConnection(connectionString); connection = new SqlConnection(connectionString);
            command = new SqlCommand("InsertStudent", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;

            command.Parameters.Add("@lname", System.Data.SqlDbType.VarChar);
            command.Parameters["@lname"].Value = txtLastName.Text;

            command.Parameters.Add("@fname", System.Data.SqlDbType.VarChar);
            command.Parameters["@fname"].Value = txtFirstMidName.Text;

            command.Parameters.Add("@enrolldate", System.Data.SqlDbType.Date);
            command.Parameters["@enrolldate"].Value = txtEnrollmentDate.Text;



            try
            {
                connection.Open();
                command.ExecuteNonQuery();
                Response.Redirect("HomePage.aspx");
            }
            catch(Exception ex)
            { 
                Response.Write("<script> Alert('error: " + ex.Message + "'); </script>");
            }
            finally
            {
                connection.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtEnrollmentDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
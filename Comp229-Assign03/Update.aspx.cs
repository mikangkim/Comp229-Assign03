using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace comp
{
    public partial class Update_Page : System.Web.UI.Page
    {
        private const string databaseConnection = "Server=(LocalDb)\\MSSQLLocalDB;Database=Comp229Assign03;Integrated Security=True";

        public void UpdateItem(int employeeId, string newName, string newUsername)
        {
            SqlConnection connection = new SqlConnection(databaseConnection);
            SqlCommand sCommand = new SqlCommand("Update Student", connection);
            sCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sCommand.Parameters.Add("@StudentID", SqlDbType.Int);
            sCommand.Parameters["@StudentID"].Value = employeeId;

            sCommand.Parameters.Add("@FirstMidName", SqlDbType.NVarChar, 50);
            sCommand.Parameters["@FirstMidName"].Value = newName;

            sCommand.Parameters.Add("@LastName", SqlDbType.NVarChar, 50);
            sCommand.Parameters["@LastName"].Value = newUsername;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ListOfStudent();
        }
        protected void StudentsList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "MoreDetailsPlease")
            {
                Literal li = (Literal)e.Item.FindControl("extraDetailsLiteral");
                li.Text = "Student Name: " + e.CommandArgument + "<br/>";
            }
            else if (e.CommandName == "EditItem")
            {
                studentsList.EditItemIndex = e.Item.ItemIndex;
                ListOfStudent();
            }
            else if (e.CommandName == "CancelEditing")
            {
                studentsList.EditItemIndex = -1;
                ListOfStudent();
            }
            else if (e.CommandName == "UpdateItem")
            {

                int employeeId = Convert.ToInt32(e.CommandArgument);
                TextBox nameTextBox = (TextBox)e.Item.FindControl("Name TextBox");

                string newName = nameTextBox.Text;
                TextBox usernameTextBox = (TextBox)e.Item.FindControl("Username TextBox");

                string newUsername = usernameTextBox.Text;
                UpdateItem(employeeId, newName, newUsername);
                studentsList.EditItemIndex = -1;
                ListOfStudent();

            }

        }

        protected void ListOfStudent()
        {
            SqlConnection connection = new SqlConnection(databaseConnection);
            try
            {
                string sql = "SELECT LastName, FirstMidName,EnrollmentDate FROM Students";
                SqlCommand sCommand = new SqlCommand(sql, connection);

                connection.Open();
                SqlDataReader reader = sCommand.ExecuteReader();

                reader.Close();

            }

            finally
            {
                connection.Close();
            }
        }



    }
}
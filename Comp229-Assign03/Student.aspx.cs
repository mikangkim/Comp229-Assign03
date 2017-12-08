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
    public partial class Student : System.Web.UI.Page
    {
        private const string databaseConnection = "Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                StudentList();
            }

        }
        protected void StudentList()
        {
            SqlConnection connection = new SqlConnection(databaseConnection);
            try
            {
                string sql = "Select Student ID, First Middlle Name, Last Name, and Enrollment Date from Student";
                SqlCommand sCommand = new SqlCommand(sql, connection);

                connection.Open();
                SqlDataReader reader = sCommand.ExecuteReader();

            }

            finally
            {
                connection.Close();
            }
        }
    }
}
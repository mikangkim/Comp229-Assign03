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
        private const string connectionPath = "Server=(LocalDb)\\MSSQLLocalDB;Database=Comp229Assign03;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();
            }

        }
        protected void BindList()
        {
            SqlConnection connection = new SqlConnection(connectionPath);
            try
            {
                string sql = "SELECT LastName, FirstMidName,EnrollmentDate FROM Students";
                SqlCommand aCommand = new SqlCommand(sql, connection);

                connection.Open();
                SqlDataReader reader = aCommand.ExecuteReader();

            }

            finally
            {
                connection.Close();
            }
        }
    }
}
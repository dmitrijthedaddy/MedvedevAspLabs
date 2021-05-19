using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace Lab6_Auth
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection(
                @"Data Source=(LocalDB)\MSSQLLocalDB;
                  AttachDbFilename=|DataDirectory|\Database.mdf;
                  Integrated Security=True");
        SqlCommand command = new SqlCommand();
        DataSet data = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoginBox.ToolTip = "Введите логин";
            PasswordBox.ToolTip = "Введите пароль";
            MessageLabel.Text = "";
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (LoginBox.Text == "Admin" && PasswordBox.Text == "Admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                command.CommandText = $"SELECT * FROM Items " +
                    $"WHERE Login = '{LoginBox.Text}' AND Password = '{PasswordBox.Text}'";
                command.Connection = sqlConnection;
                sqlConnection.Open();
                var adapter = new SqlDataAdapter(command.CommandText, sqlConnection);
                adapter.Fill(data, "Items");

                var rowCount = data.Tables["Items"].Rows.Count;
                if (rowCount > 0)
                {
                    LoginBox.Text = "";
                    PasswordBox.Text = "";
                    Response.Redirect("WebForm.aspx");
                }
                else
                {
                    LoginBox.Text = "";
                    PasswordBox.Text = "";
                    MessageLabel.Text = "Неверный логин или пароль";
                }
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            command.CommandText = "";
            var adapter = new SqlDataAdapter(command.CommandText, sqlConnection);
            var random = new Random();
            data.EnforceConstraints = false;

            try
            {
                command.CommandText = "INSERT INTO Items (Login, Password) " +
                    $"VALUES('{LoginBox.Text}', '{PasswordBox.Text}')";
                command.Connection = sqlConnection;
                sqlConnection.Open();
                command.ExecuteNonQuery();
                MessageLabel.Text = "Пользователь успешно зарегистрирован";
                LoginBox.Text = "";
                PasswordBox.Text = "";
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8_LinqToSql
{
    public partial class WebForm : System.Web.UI.Page
    {
        DataClassesDataContext data = new DataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddUserButton_Click(object sender, EventArgs e)
        {
            try
            {
                var user1 = new User();
                user1.Login = LoginAddBox.Text;
                user1.Password = PasswordAddBox.Text;

                data.GetTable<User>().InsertOnSubmit(user1);
                data.SubmitChanges();
                AddUserStatusLabel.Text = $"User '{user1.Login}' was successfully added to DB";
                GridView1.DataBind();
            }
            catch (Exception err)
            {
                AddUserStatusLabel.Text = err.Message;
            }
        }

        protected void DeleteUserButton_Click(object sender, EventArgs e)
        {
            try
            {
                var user1 = (from u in data.User
                             where u.Login.Equals(LoginDeleteBox.Text)
                             select u).Single();

                data.GetTable<User>().DeleteOnSubmit(user1);
                data.SubmitChanges();
                DeleteUserStatusLabel.Text = $"User '{user1.Login}' was removed from DB";
                GridView1.DataBind();
            }
            catch (Exception err)
            {
                DeleteUserStatusLabel.Text = err.Message;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5_Ajax
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string script = "return confirm('Вы уверены?')";
            //Button.Attributes.Add("onclick", script);
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToLongTimeString();
            TextBox2.Text = DateTime.Now.ToLongTimeString();
        }
    }
}
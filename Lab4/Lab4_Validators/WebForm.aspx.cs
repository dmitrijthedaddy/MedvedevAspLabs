using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4_Validators
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            SummaryLabel.Text = String.Join(" ", new[] { 
                NameTextBox.Text, 
                PhoneTextBox.Text, 
                EmailTextBox.Text });
        }
    }
}
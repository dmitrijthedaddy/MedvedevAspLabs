using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7_Calculator
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            var amount = double.Parse(SalaryBox.Text);
            var time = double.Parse(HoursBox.Text);
            var totalSalary = amount * time;
            TotalSalaryLabel.Text = totalSalary.ToString();
            YourSalaryIsLabel.Visible = true;
            TotalSalaryLabel.Visible = true;
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            SalaryBox.Text = "";
            HoursBox.Text = "";
            YourSalaryIsLabel.Visible = false;
            TotalSalaryLabel.Visible = false;
        }
    }
}
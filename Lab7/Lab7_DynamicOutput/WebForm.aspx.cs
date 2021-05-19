using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7_DynamicOutput
{
    public partial class WebForm : System.Web.UI.Page
    {
        DataClassesDataContext dataContext = new DataClassesDataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected IEnumerable<Good> GetGoods()
        {
            var row = (from line in dataContext.Good
                       select line).ToArray();
            return row;
        }
    }
}
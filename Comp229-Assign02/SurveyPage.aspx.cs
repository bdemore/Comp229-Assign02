using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class SurveyPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirmButton_click(Object s, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            else
            {
                Response.Redirect("ThankYouPage.aspx");
            }
        }


    }
}
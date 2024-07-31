using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtHub
{
    public partial class artistCA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("~/artistCA1.aspx");
        }
    }
}
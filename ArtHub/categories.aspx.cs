using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtHub
{
    public partial class categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLearnStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/learn.aspx");
        }

        protected void btnSellArtwork_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sell.aspx");
        }

        protected void btnCustomizeArtwork_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customize.aspx");
        }
    }
} 
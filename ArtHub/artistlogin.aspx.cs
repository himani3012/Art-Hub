using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ArtHub
{

    public partial class artistlogin : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            fnConnectDb();
        }
        protected void fnConnectDb()
        {
            try
            {
                String con = ConfigurationManager.ConnectionStrings["myConStr"].ConnectionString;
                conn = new SqlConnection(con);

                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();

                }
                else
                {
                    Response.Write("Connection fail!");
                }
            }
            catch (Exception e)
            {
                Response.Write(e.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                fnConnectDb();
                string qry = "SELECT COUNT(*) FROM ArtistAcc WHERE EmailAddress=@em AND Password=@pa";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("em", Email.Text);
                cmd.Parameters.AddWithValue("pa", Password.Text);

                int cnt = (int)cmd.ExecuteScalar();

                if (cnt > 0)
                {
                    Session["S_eml"] = Email.Text;
                    Response.Redirect("~/sell.aspx");
                }
                else
                {
                    lblMsg.Text = "incorrect email or password*";
                }

                conn.Close();

            }
            catch (Exception x)
            {
                Response.Write(x.ToString());

            }
        }
    }
}
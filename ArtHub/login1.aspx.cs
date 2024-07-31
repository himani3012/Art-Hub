using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtHub
{
    public partial class login1 : System.Web.UI.Page
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
                string qry = "SELECT COUNT(*) FROM CreateAcc WHERE Email=@em AND Password=@pa"; 
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("em",Email.Text);
                cmd.Parameters.AddWithValue("pa",Password.Text);

                int cnt = (int)cmd.ExecuteScalar();

                if (cnt > 0)
                {
                    Session["S_eml"] = Email.Text;
                    Response.Redirect("~/masterpage.aspx");
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
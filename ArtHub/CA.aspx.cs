using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtHub
{
    public partial class CA : System.Web.UI.Page
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
                String qry = "Insert into CreateAcc (Email,Password,FirstName,LastName)VALUES (@em,@pa,@fn,@ln)";
                cmd= new SqlCommand(qry,conn);
                cmd.Parameters.AddWithValue("em",Email.Text);
                cmd.Parameters.AddWithValue("pa", Password.Text);
                cmd.Parameters.AddWithValue("fn", FirstName.Text);
                cmd.Parameters.AddWithValue("ln", LastName.Text);

                int res=cmd.ExecuteNonQuery();
                if(res>0)
                {
                    Response.Redirect("~/masterpage.aspx");
                }
                else
                {
                    Response.Write("not inserted");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}



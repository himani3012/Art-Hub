using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace ArtHub
{
    
    public partial class buyart : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            fnConnectDb();
            fnBindGrid();
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
        public void fnBindGrid()
        {
            try
            {
                fnConnectDb();
                String query = "SELECT * FROM ArtistInfo";
                cmd = new SqlCommand(query, conn);
                adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                ds = new DataSet();
                adapter.Fill(ds);
                dlart.DataSource = ds;
                dlart.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            conn.Close();
        }
    }
}
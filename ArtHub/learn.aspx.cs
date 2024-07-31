using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ArtHub
{
    public partial class learn : System.Web.UI.Page
    {
        //public static string eml = string.Empty;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!Page.IsPostBack)
            {
                fnConnectDb();
                fnBindGrid();
            }
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
        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                fnConnectDb();
                String qry = "Insert into learnart(l_name,category,medium,country,state,city,p_no,description)VALUES (@name,@ca,@me,@co,@st,@ci,@pno,@des)";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("name", name.Text);
                cmd.Parameters.AddWithValue("ca", cat.Text);
                cmd.Parameters.AddWithValue("me", sou.Text);
                cmd.Parameters.AddWithValue("co", cou.Text);
                cmd.Parameters.AddWithValue("st", sta.Text);
                cmd.Parameters.AddWithValue("ci", city.Text);
                cmd.Parameters.AddWithValue("pno", pnoo.Text);
                cmd.Parameters.AddWithValue("des", desc.Text);


                int res = cmd.ExecuteNonQuery();

                if (res > 0)
                {
                    Response.Write("inserted");
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
        //SqlDataAdapter adapter;
        //DataSet ds;
        public void fnBindGrid()
        {
            try
            {
                fnConnectDb();
                String query = "SELECT * FROM learnart";
                cmd = new SqlCommand(query, conn);

                sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            conn.Close();
        }

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    GridViewRow rw = GridView1.Rows[e.RowIndex];
        //    int del_id = Convert.ToInt32(rw.Cells[1].Text);
        //    try
        //    {
        //        fnConnectDb();
        //        string qry = "DELETE FROM learnart WHERE l_id=@id";
        //        cmd = new SqlCommand(qry, conn);
        //        cmd.Parameters.AddWithValue("@id", del_id);
        //        int res = cmd.ExecuteNonQuery();
        //        if (res > 0)
        //            Response.Write("Data Removed");
        //        else
        //            Response.Write("<script>alert('Delete operation failed')</script>");
        //        conn.Close();
        //        fnBindGrid();
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write(ex.ToString());
        //    }

        //}

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Response.Write("hii");
            GridViewRow rw = GridView1.Rows[e.RowIndex];
            int del_id = Convert.ToInt32(rw.Cells[1].Text);
            try
            {
                fnConnectDb();
                string qry = "DELETE FROM learnart WHERE l_id=@id";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("@id", del_id);
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("Data Removed");
                }

                else
                {

                    Response.Write("<script>alert('Delete operation failed')</script>");
                }
                conn.Close();
                fnBindGrid();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

    }
}
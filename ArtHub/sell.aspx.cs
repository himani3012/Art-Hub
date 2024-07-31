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
    public partial class sell : System.Web.UI.Page
    {
        public static string eml = string.Empty;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        public static int up_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            fnConnectDb();
            
            if (Session["s_eml"] != null)
            {
                eml = Session["s_eml"].ToString();
                //Response.Write("WELCOME! " + eml);
            }
            else
            {
                Response.Redirect("~/artistlogin.aspx");
            }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "~/Upload/" + Uimg.FileName;
            try
            {
                fnConnectDb();
                String qry = "Insert into ArtistInfo(Artist_name,Upload_img,Art_Description,Art_Price,EmailAddress)VALUES (@an,@ui,@ad,@ap,@em)";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("an", Aname.Text);
                cmd.Parameters.AddWithValue("ui", img);
                cmd.Parameters.AddWithValue("ad", Ades.Text);
                cmd.Parameters.AddWithValue("ap", Aprice.Text);
                cmd.Parameters.AddWithValue("em", eml);
                Uimg.SaveAs(Server.MapPath(img));
                int res = cmd.ExecuteNonQuery();
                
                if (res > 0)
                {
                    Response.Redirect("~/sell.aspx");
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
        SqlDataAdapter adapter;
        DataSet ds;
        public void fnBindGrid()
        {
            try
            {
                fnConnectDb();
                String query = "SELECT * FROM ArtistInfo WHERE EmailAddress=@email";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@email", eml);
                adapter = new SqlDataAdapter(cmd);
                ds = new DataSet();
                adapter.Fill(ds);
                gvSell.DataSource = ds;
                gvSell.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            conn.Close();
        }

        protected void gvSell_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow rw = gvSell.SelectedRow;

            Aname.Text = rw.Cells[3].Text;
            Ades.Text = rw.Cells[5].Text;
            Aprice.Text = rw.Cells[6].Text;
            up_id = Convert.ToInt32(rw.Cells[2].Text);
            
            
        }

        protected void gvSell_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rw = gvSell.Rows[e.RowIndex];
            int del_id = Convert.ToInt32(rw.Cells[2].Text);
            try
            {
                fnConnectDb();
                string qry = "DELETE FROM ArtistInfo WHERE Id=@id";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("@id", del_id);
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                    Response.Write("Data Removed");
                else
                    Response.Write("<script>alert('Delete operation failed')</script>");
                conn.Close();
                fnBindGrid();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        
    }

        protected void editinfo_Click(object sender, EventArgs e)
        {
            string img = "~/Upload/" + Uimg.FileName;
            try
            {
                //Response.Write("HUNNY");
                fnConnectDb();
                string qry = "UPDATE ArtistInfo SET Artist_name=@aname,Upload_img=@img,Art_Description=@ad,Art_Price=@ap WHERE id=@up_id";
                cmd = new SqlCommand(qry, conn);
                //cmd.Parameters.AddWithValue("@bid", ddlbrand.SelectedValue);
                cmd.Parameters.AddWithValue("aname", Aname.Text);
                cmd.Parameters.AddWithValue("img", img);
                cmd.Parameters.AddWithValue("@ad", Ades.Text);
                cmd.Parameters.AddWithValue("@ap", Aprice.Text);
                cmd.Parameters.AddWithValue("up_id", up_id);
                int res = cmd.ExecuteNonQuery();
                Uimg.SaveAs(Server.MapPath(img));
                if (res > 0)
                    Response.Write("Updated Succesfully");
                else
                    Response.Write(up_id);
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

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace ArtHub
{
    public partial class artistCA1 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            fnConnectDb();
            if (!Page.IsPostBack)
                fnddlcountry();
        }
        protected void fnddlcountry()
        {
            ddlcountry.Items.Add("India");
            ddlcountry.Items.Add("Russia");
            ddlcountry.Items.Add("England");
            ddlcountry.Items.Add("Australia");
            ddlcountry.Items.Add("Nepal");
            ddlcountry.Items.Add("Japan");

            ddlcountry.Items.Insert(0, new ListItem("Select Country"));
        }

        protected void fnddlstate()
        {
            
                DataSet ds = new DataSet();
                try
                {
                    fnConnectDb();
                    String qry = "SELECT * FROM country WHERE country=@c";
                    cmd = new SqlCommand(qry, conn);
                    cmd.Parameters.AddWithValue("@c", ddlcountry.SelectedValue);
                    adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);
                    ddlstate.DataSource = ds;
                    ddlstate.DataTextField = "state"; //bhejna ho woh
                    ddlstate.DataValueField = "state"; //show
                    ddlstate.DataBind();
                    ddlstate.Items.Insert(0, new ListItem("--SELECT--"));
                    conn.Close();
                }
                catch (Exception ex)
                {

                    Response.Write(ex.ToString());
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
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "/Upload/" + Artist_image.FileName;
            try
            {
                fnConnectDb();
                String qry = "Insert into ArtistAcc (FirstName,LastName,Country,Address,City,State,ZipCode,EmailAddress,Telephone,Password,C_Password,Image)VALUES (@fn,@ln,@country,@add,@city,@state,@zcode,@em,@pn,@pwd,@cpwd,@aimg)";
                cmd = new SqlCommand(qry, conn);
                
                cmd.Parameters.AddWithValue("fn", tbfname.Text);
                cmd.Parameters.AddWithValue("ln", tblname.Text);
                cmd.Parameters.AddWithValue("country", ddlcountry.Text);
                cmd.Parameters.AddWithValue("add", tbaddress.Text);
                cmd.Parameters.AddWithValue("city", tbcity.Text);
                cmd.Parameters.AddWithValue("state", ddlstate.Text);
                cmd.Parameters.AddWithValue("zcode", tbzcode.Text);
                cmd.Parameters.AddWithValue("em", tbemail.Text);
                cmd.Parameters.AddWithValue("pn", tbtelephone.Text);
                cmd.Parameters.AddWithValue("pwd", tbpwd.Text);
                cmd.Parameters.AddWithValue("cpwd", tbcpwd.Text);
                cmd.Parameters.AddWithValue("aimg", img);

                int res = cmd.ExecuteNonQuery();
                Artist_image.SaveAs(Server.MapPath(img));
                if (res > 0)
                {
                    Response.Redirect("~/categories.aspx");
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

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            fnddlstate();
        }
    }
}
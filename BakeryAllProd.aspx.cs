using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class BakeryAllProd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] != null && Session["password"] != null)
            {
                //lblmsg.Text = Session["email"].ToString();
                //lblmsg.Text = Session["password"].ToString();
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = true;
                //LinkButton5.Visible = true;
                LinkButton6.Visible = true;
            }
            else
            {
                LinkButton2.Visible = true;
                LinkButton3.Visible = true;
                LinkButton4.Visible = false;
                //LinkButton5.Visible = false;
                LinkButton6.Visible = false;
                //Session.Clear();
                //Response.Redirect("BakeryLogin.aspx");
            }
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("BakeryIndex.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("BakeryLogin.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("BakerySign.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("BakeryUserAllOrder.aspx");
    }
    protected void Unnamed_Click1(object sender, EventArgs e)
    {
        try
        {

            if (txtSearch.Text.Trim().Length > 0)
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("Select * from BakeryAddProd Where Name like '%" + txtSearch.Text.Trim() + "%' ", con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        Repeater2.DataSource = dt;
                        Repeater2.DataBind();
                    }
                    else
                    {
                        lblmsg.Text = "No Data Found";
                    }
                }

            }
            else
            {
                lblmsg.Text = "Please Enter Values";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}

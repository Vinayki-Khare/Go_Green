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

public partial class BakeryAdmin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminName"] != null && Session["AdminPass"] != null)
            {
                lblmsg.Text = Session["AdminName"].ToString();
            }
            else
            {
                Session.Clear();
                Response.Redirect("BakeryAdminLogin.aspx");
            }
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("BakeryAdminLogin.aspx");
    }
}
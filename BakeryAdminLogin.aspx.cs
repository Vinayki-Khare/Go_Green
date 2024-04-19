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

public partial class BakeryAdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uname.Text.Length > 0 && uname.Text == "Vinayki_7" && pwd.Text.Length > 0 && pwd.Text == "@vinayki@")
        {
            Session["AdminName"] = uname.Text;
            Session["AdminPass"] = pwd.Text;
            Response.Redirect("BakeryAdmin.aspx");
        }
        else
        {
            Label1.Text = "Invalid User";
        }


    }
}
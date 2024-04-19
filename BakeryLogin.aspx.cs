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

public partial class BakeryLogin : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        if (uname.Text.Trim().Length > 0 && pwd.Text.Trim().Length > 0)
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("Select UserId,email,password from Bakerysign Where email = '" + uname.Text.Trim() + "' and password ='" + pwd.Text.Trim() + "' ", con))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    
                    Session["UserId"] = dt.Rows[0]["UserId"].ToString();
                    Session["password"] = dt.Rows[0]["password"].ToString();
                    Session["email"] = dt.Rows[0]["email"].ToString();
                    Response.Redirect("BakeryAllProd.aspx");
                    //uname.Text = dt.Rows[0]["email"].ToString();
                    //pwd.Text = dt.Rows[0]["password"].ToString();
                    //Response.Redirect("BakeryGuestUserAllProd.aspx");
                }
                else
                {
                    Label1.Text = "Invalid User";
                    Label1.ForeColor = System.Drawing.Color.Red; 
                }
            }

            //ViewState["IDs"] =IDs;
            //Session["email"] = uname.Text;
            //Session["password"] = pwd.Text;
            //Response.Redirect("BakeryAllProd.aspx");
        }
        else
        {
            Label1.Text = "Please Enter Data";   
        }


    }

   
}

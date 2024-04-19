using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BakeryUserAllOrder : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["email"] != null && Session["password"] != null)
            {
                FillGrid();
            }
            else
            {
                Response.Redirect("BakeryLogin.aspx");
            }
        }
    }
    public void FillGrid()
    {
        try
        {
            //string UserId = Session["UserId"].ToString();
            using (SqlDataAdapter sd = new SqlDataAdapter("select * from VwSelectOrderList where UserId = '" + Session["UserId"] + "'", con))
            {
                DataTable dt = new DataTable();
                sd.Fill(dt);
                gvlist.DataSource = dt;
                gvlist.DataBind();
            }
        }
        catch
        {
            //lblmsg.text= "something went wrong in fetching";
        }
    }
    
}
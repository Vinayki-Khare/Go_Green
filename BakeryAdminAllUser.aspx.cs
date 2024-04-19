using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BakeryAdminAllUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();   
        }
    }
    public void FillGrid()
    {
        using (SqlDataAdapter sd = new SqlDataAdapter("select * from BakerySign", con))
        {
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();

        }
    }
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dr = (DataRowView)e.Row.DataItem;
            // string imageurl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["ProductImage"]);
            // (e.Row.FindControl("img1") as Image).ImageUrl = imageurl;

        }
    }
}
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


public partial class BakeryAdminAllProd : System.Web.UI.Page
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
        try
        {

            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM BakeryAddProd", con))
            {

                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView.DataSource = dt;
                GridView.DataBind();

            }
        }
        catch (Exception ex)
        {
            Label1.Text = "Something Went Wrong in Fetching";
        }
    }

    protected void GridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dr = (DataRowView)e.Row.DataItem;
            string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Image"]);

            (e.Row.FindControl("proImage") as Image).ImageUrl = imageUrl;
        }

    }

    protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DEL")
        {
            int ID = Convert.ToInt32(e.CommandArgument.ToString());
            using (SqlCommand cmd = new SqlCommand("DELETE FROM BakeryAddProd where Id=@PID ", con))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@PID", ID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                FillGrid();
                Label1.Text = "Data Deleted";
            }
        }
    }
}
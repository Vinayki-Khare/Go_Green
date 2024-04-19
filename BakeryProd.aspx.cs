using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BakeryProd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string IDs = Request.QueryString["ID"].ToString();
            ViewState["IDs"] = IDs;
            FillGrid(IDs);
        }

    }

    private void FillGrid(string Id)
    {
        try
        {
            using (SqlDataAdapter sd = new SqlDataAdapter("select * from BakeryAddProd where Id = '" + Id + "'", con))
            {
                DataTable dt = new DataTable();
                sd.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Name.Text = dt.Rows[0]["Name"].ToString();
                    Price.Text = "Price - " + dt.Rows[0]["Price"].ToString();

                    string imageurl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dt.Rows[0]["Image"]);
                    Image.ImageUrl = imageurl;

                }
                else
                {
                    lblmsg.Text = "No data found";
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "There is some problem";
        }
    }

    //public string IDs { get; set; }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (Session["UserId"] != null && !string.IsNullOrEmpty(ViewState["IDs"].ToString()))
         {
             string UserId = Session["UserId"].ToString();
             string ProductId = ViewState["IDs"].ToString();

             using (SqlCommand cmd = new SqlCommand("INSERT INTO BakeryOrder (ProductId, UserId) VALUES (@ProductId, @UserID)", con))
             {
                 cmd.CommandType = CommandType.Text;
                 cmd.Parameters.AddWithValue("@ProductId", ProductId);
                 cmd.Parameters.AddWithValue("@UserId", UserId);
                 con.Open();
                 cmd.ExecuteNonQuery();
                 con.Close();
                 buylbl.Text = "Order Placed";
                 buylbl.ForeColor = System.Drawing.Color.Green;
             }

         }
         else
         {
             lblmsg.Text = "Something Went Wrong";
         }
    }
}
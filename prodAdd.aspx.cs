using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prodAdd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox2.Text.Trim().Length > 0 && TextBox1.Text.Trim().Length > 0)
            {
                string Name = TextBox1.Text;
                string Email = TextBox2.Text;
                string Mobile = TextBox4.Text;


                using (SqlCommand cmd = new SqlCommand("INSERT INTO Producttbl (PrdoName,ProdPrice,ProdDetail)VALUES(@Name,@Email,@Mobile)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Mobile", Mobile);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblmsg.Text = "Data Added Successsfully";
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
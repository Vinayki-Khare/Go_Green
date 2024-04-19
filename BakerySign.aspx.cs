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

public partial class BakerySign : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Uname.Text.Trim().Length > 0 && Umail.Text.Trim().Length > 0)
        {

            using (SqlCommand cmd = new SqlCommand("INSERT INTO Bakerysign (name,email,password) VALUES (@name,@email,@password)", con))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@name", Uname.Text);
                cmd.Parameters.AddWithValue("@email", Umail.Text);
                cmd.Parameters.AddWithValue("@password", Upassword.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "Registered Successsfully";
            }
        }
        else
        {
            lblmsg.Text = "Please Enter Values";
        }
    }
}
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1(object sender, EventArgs e)
    {
        string name = f3c1.Text;
        string email = f3c2.Text;
        string password = f3c3.Text;
        string city = "";
        string programming = "", ID, drdtext = "";

        if (DropDownList1.SelectedIndex > 0)
        {
            ID = DropDownList1.SelectedValue;
            drdtext = DropDownList1.SelectedItem.Text;
        }

        if (r1.Checked)
        {
            city = "Satna";
        }
        else if (r2.Checked)
        {
            city = "Rewa";
        }
        else if (r3.Checked)
        {
            city = "Maihar";
        }
        else
        {
            city = "jabalpur";
        }

        if (b1.Checked)
        {
            programming = "Java";
        }

        else if (b2.Checked)
        {
            programming = "Python";
        }
        else
        {
            programming = "Perl";
        }

        using (SqlCommand cmd = new SqlCommand("INSERT Into Usertbl (name,email,password,state,city,programming)VALUES(@name,@email,@password,@state,@city,@programming)", con))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@drdtext", drdtext);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@programming", programming);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Data Added Successsfully";
        }

    }
    
}
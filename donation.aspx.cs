using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class donation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            byte[] bytes;
            if (Pimage.HasFile)
            {

                using (BinaryReader br = new BinaryReader(Pimage.PostedFile.InputStream))
                {
                    bytes = br.ReadBytes(Pimage.PostedFile.ContentLength);
                }
            }

            else
            {
                lblmsg.Text = "Please Select Image";
                return;
            }


            if (Uname.Text.Trim().Length > 0 && Umail.Text.Trim().Length > 0)
            {

                using (SqlCommand cmd = new SqlCommand("INSERT INTO donation (name,email,phone,address,bookname) VALUES (@name,@email,@phone,@address,@bookname)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@name", Uname.Text);
                    cmd.Parameters.AddWithValue("@email", Umail.Text);
                    cmd.Parameters.AddWithValue("@phone", Upn.Text);
                    cmd.Parameters.AddWithValue("@address", Add.Text);
                    cmd.Parameters.AddWithValue("@bookname", BookName.Text);
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
            lblmsg.Text = "something went wrong";
        }
    }
}
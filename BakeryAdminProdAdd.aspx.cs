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

public partial class BakeryProdAdd : System.Web.UI.Page
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
            if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0)
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO BakeryAddProd (Name,Price,Image,CategoryId) VALUES (@Name,@Price,@Image,@CategoryId)", con))
                {
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Price", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@CategoryId", drd1.SelectedValue);
                    cmd.Parameters.AddWithValue("@Image", bytes);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblmsg.Text = "Data Saved Successfully";
                }
            }
            else
            {
                lblmsg.Text = "Please enter data";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "something went wrong";
        }
    }
}
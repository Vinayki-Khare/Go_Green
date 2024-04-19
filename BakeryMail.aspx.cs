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

public partial class BakeryMail : System.WebUI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Mail ml = new Mail();
            Connection cs = new Connection();
            string body = "Name :- " + TextBox1.Text.Trim() + "\n";
            body += "Email :- " + TextBox2.Text.Trim() + "\n";
            body += "Query :- " + TextQuery.Text + "\n";

            cs.InsertUserQuery(TextBox1.Text.Trim(), TextBox2.Text.Trim(), TextQuery.Text,);
            lblerror.Text = "Request Sent Successfuly";

            ml.SendMail(body);
            lblerror.Visible = true;
            lblerror.Text += "<span style ='color:Black'> " + "Mail Sent Successfuly ";
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextQuery.Text = "";
        }
    }
}
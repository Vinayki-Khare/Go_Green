using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dropdown : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string course = "";
        string branch = "";
        string fd = "";

        if (drd1.SelectedIndex > 0)
        {
            course = drd1.SelectedItem.ToString();
            bel1.Text = course;
        }
        else
        {
            bel1.Text = "Enter Choice";
        }
        if (drd2.SelectedIndex > 0)
        {
            course = drd2.SelectedItem.ToString();
            bel1.Text = course;
        }
        else
        {
            bel3.Text = "Enter Choice";
        }
        if (drd3.SelectedIndex > 0)
        {
            course = drd3.SelectedItem.ToString();
            bel3.Text = course;
        }
        else
        {
            bel3.Text = "Enter Choice";
        }
    }
}
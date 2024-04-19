<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryMail.aspx.cs" Inherits="BakeryMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/BakeryMail.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <img src="Content/bakery.jpg" width="80px" height="40px" alt="#" float="right" />
            <!-- <a class="navbar-brand" href="#">Bakery</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>-->

            <div class="collapse navbar-collapse" id="navbarSupportedContent" float="right">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="BakeryAllProd.aspx">All Cakes <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="BakerySign.aspx">Signup <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="BakeryLogin.aspx">Login</a>
                    </li>
                </ul>
            </div>
            <a class="navbar-brand" href="BakeryAdminLogin.aspx">Admin Login</a>
        </nav>
   <div class="main">
        <br />
        <div class="container">
            <!-- BEGIN SIDEBAR & CONTENT -->
            <div class="row margin-bottom-40 ">
                <!-- BEGIN CONTENT -->
                <div class="col-md-12">
                    <div class="content-page">
                        <div class="row">
                            <div class="col-md-9 col-sm-9">
                                <h2>Contact US</h2>
                                <!-- BEGIN FORM-->
                                <%--<form action="#" role="form" method="POST">--%>
                                <div class="form-group">
                                    <label for="contacts-name">Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="contacts-name" name="name" required>--%>
                                </div>
                                <div class="form-group">
                                    <label for="contacts-email">Email</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" required></asp:TextBox>
                                    <%--<input type="email" class="form-control" id="contacts-email" name="email" required>--%>
                                </div>
                                <div class="form-group">
                                    <label for="contacts-message">Message</label>
                                    <%--<asp:TextBox ID="TextBox3" class="form-control" runat="server" rows="5" required></asp:TextBox>--%>
                                    <textarea class="form-control" rows="5" id="TextQuery" name="message" required></textarea>
                                </div>
<%--                                <button type="submit" class="btn btn-primary"><i class="icon-ok"></i>Send</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="SEND" class="btn btn-primary" OnClick="Button1_Click"/>
                             <asp:Label ID="lblerror" runat="server" ></asp:Label>
                                
                                <%--<button type="button" class="btn btn-default">Cancel</button>--%>
                                <%--</form>--%>
                                <!-- END FORM-->
                            </div>

                            <div class="col-md-3 col-sm-3 sidebar2">
                                <h2>Our Contacts</h2>
                                <address>
                                    <h4>kharevinayki7@gmail.com.com</h4>
                                    <strong>#1218</strong><br />
                                    Sector-15, Satna,<br />
                                    485001-Madhya Pradesh<br />
                                    <abbr title="Phone">P:</abbr>
                                    (+91) 9826857126
                                </address>
                                <address>
                                    <strong>Email</strong><br />
                                    <a href="mailto:abhishekmishra8632@gmail.com">kharevinayki7@gmail.com</a>
                                </address>
                                <%--<ul class="social-icons margin-bottom-40">
                    <li><a href="https://www.facebook.com/bookchor" data-original-title="facebook" class="facebook"></a></li>
                  </ul>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END CONTENT -->
            </div>
    </form>
</body>
</html>

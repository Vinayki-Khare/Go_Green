<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryAdminProdAdd.aspx.cs" Inherits="BakeryProdAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">

    <title></title>
    <style>
        span {
            align-items: center;
            font-size: larger;
            font-weight: bolder;
        }

        TextBox {
            align-items: center;
            font-size: larger;
            font-weight: bolder;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <img src="Content/bakery.jpg" width="80px" height="40px" alt="#" float="right" />
                <a class="navbar-brand" href="BakeryAdmin.aspx">Admin Page</a>
                <!--  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>-->

                <div class="collapse navbar-collapse" id="navbarSupportedContent" float="right">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="BakeryAdminProdAdd.aspx">Add Plants  <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="BakeryAdminAllProd.aspx">View Plants <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="BakeryAdminAllOrder">View Orders <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="BakeryAdminAllUser.aspx">View Users <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div style="box-shadow: 3px 3px 3px 3px #d6d4d4; background-color: white; margin: 2%; padding: 5%; align-content: center;">
            <div class="container">
                <h1 style="color: Black;">Add Plant</h1>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Enter Plant Name</span>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Plant Name" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Enter Plant Price</span>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Price" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <!-- <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Enter Cake Quantity</span>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Number Of Cake" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>-->
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Select Category</span>
                            <asp:DropDownList ID="drd1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryId">
                                <asp:ListItem Value="1"> Select Category</asp:ListItem>
                                <asp:ListItem Value="2"> Ornamental Plants</asp:ListItem>
                                <asp:ListItem Value="3"> Non-Ornamental Plants</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CategoryId], [CategoryName] FROM [BakeryCategory]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Choose File</span>
                            <asp:FileUpload ID="Pimage" runat="server" />
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Save" class="form-control" CssClass="danger" OnClick="Button1_Click" Width="80px" Height="25px" />
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryAllProd.aspx.cs" Inherits="BakeryAllProd" %>

<!DOCTYPE html>
<script runat="server">

    protected void LinkButton7_Click(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet' />


</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="BakeryIndex.aspx">
                <img src="Content/igs_gogreen.jpg" width="80px" height="40px" alt="#" float="right" /></a>
<%--            <a class="navbar-brand" href="#">Bakery</a>--%>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent" float="right">
                <ul class="navbar-nav mr-auto">
       <%--             <li class="nav-item active">
                        <asp:LinkButton ID="LinkButton1" class="nav-link" runat="server" OnClick="LinkButton1_Click">All Cakes</asp:LinkButton>

                    </li>--%>
                    <li class="nav-item active">
                        <asp:LinkButton ID="LinkButton2" class="nav-link" runat="server" OnClick="LinkButton2_Click">Sign-up</asp:LinkButton>
                    </li>
                    <li class="nav-item active">

                        <asp:LinkButton ID="LinkButton3" class="nav-link" runat="server" OnClick="LinkButton3_Click">Login</asp:LinkButton>
                    </li>
                    <li class="nav-item active">
                        <%--<a href="#">--%>
<%--                        <asp:LinkButton ID="LinkButton5" class="nav-link" runat="server" OnClick="LinkButton5_Click">View Order</asp:LinkButton>--%>
                        <%--</a>--%>
                    </li>
                    <li class="nav-item active">
                        <asp:LinkButton ID="LinkButton6" class="nav-link" runat="server" OnClick="LinkButton6_Click">View Orders</asp:LinkButton>
                    </li>

                    <li class="nav-item active">
                        <asp:LinkButton runat="server" class="nav-link" ID="LinkButton4" OnClick="Unnamed_Click">Log-Out</asp:LinkButton>
                                                                                                         </ul>

            </div>
            <%--<div class="container" >
                <div class="row">
                    <asp:TextBox ID="txtSearch" runat="server" Placeholder="Search Here" Width="200px" Height="30px" CssClass="form-control"></asp:TextBox>
                    <asp:Button Text="Search" runat="server" OnClick="Unnamed_Click1" Width="60px" Height="28px" CssClass="btn btn-block" />
                </div>
            </div>--%>
        </nav>

        <hr />
        <div class="responsive">
            <h1 align="center">HELLO USER HERE ARE ALL THE PRODUCTS</h1>
        </div>
        <hr />

        <asp:Label ID="lblmsg" runat="server"></asp:Label>

        <div class="container">
            <div class="row">
                <div class="col-sm col-lg-offset-0"  style="margin-top: 10px;">
                    <asp:TextBox ID="txtSearch" runat="server" Placeholder="Search Here" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm"  style="margin-top: 10px;">
                    <asp:Button Text="Search" runat="server" OnClick="Unnamed_Click1" CssClass="btn btn-block btn-success" />
                </div>
            </div>
        </div>
        <br />

        <div class="jumbotron text-center bg-white">
            <div class="box-container text-success" style="margin-top:" -10%">
                <div class="row"  style="margin-left:20px; margin-right:20px;">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <div class="col-md-4">
                                <asp:Image ID="Image1" runat="server" alt="" Visible='<%# Eval("Image").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("Image").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' Class="img-responsive" Style="max-width: 300px;" />
                                <hr />
                                <%# Eval("Name") %>
                                <br />₹
                                <%# Eval("Price") %>
                                <br />
                                <a href="BakeryProd.aspx?ID=<%# Eval("Id") %>" class="btn btn-default bg-success text-white">View</a>
                                <br />
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>

        <div>
            <div class="box-container text-success" style="margin-top:" -10%">
                <div class="row" style="margin-left:20px; margin-right:20px;">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="col-md-4">
                                <asp:Image ID="Image1" runat="server" alt="" Visible='<%# Eval("Image").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("Image").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' Class="img-responsive" Style="max-width: 300px;" />
                                <hr />
                                <%# Eval("Name") %>
                                <br />₹
                                <%# Eval("Price") %>
                                <br />
                                <a href="BakeryProd.aspx?ID=<%# Eval("Id") %>" class="btn btn-default bg-success  text-white">View</a>
                                <br />
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BakeryAddProd]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

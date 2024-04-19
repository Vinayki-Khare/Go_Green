<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryAdminAllOrder.aspx.cs" Inherits="BakeryAdminAllOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">
</head>
<body>
    <hr />
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
                            <a class="nav-link" href="BakeryAdminAllOrder.aspx">View Orders <span class="sr-only">(current)</span></a>
                        </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="BakeryAdminAllUser.aspx">View Users <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <hr />
    <form id="form1" runat="server">

        <div class="container">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderId"  ForeColor="#333333" GridLines="None" AutoGenrateColumns="False" OnRowDataBound="GridView1_RowDataBound" AllowPaging="True" Width="1326px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                    <asp:CheckBoxField DataField="IsDone" HeaderText="IsDone" SortExpression="IsDone" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
           <asp:sqldatasource id="sqldatasource1" runat="server" connectionstring="<%$ connectionstrings:defaultconnection %>" selectcommand="select * from [bakeryorder]"></asp:sqldatasource>
        </div>
    </form>
</body>
</html>

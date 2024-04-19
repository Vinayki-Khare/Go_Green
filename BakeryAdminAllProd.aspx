<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryAdminAllProd.aspx.cs" Inherits="BakeryAdminAllProd" %>

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
        <div class="jumbotron  bg-white" >
            <div class="box-container text-success">
                <div class="row" style="margin-left: 20%;">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                 <%--   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" OnRowCommand="GridView1_RowCommand" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Visible='<%# Eval("Image").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("Image").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' Class="img-responsive" Style="max-width:300px;"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" Text="Delete" CommandName="DEL" CommandArgument='<%# Eval("Id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BakeryAddProd]"></asp:SqlDataSource>--%>

                    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" Width="100%" OnRowCommand="GridView_RowCommand" OnRowDataBound="GridView_RowDataBound"  >
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="&nbsp;&nbsp;ID&nbsp;&nbsp;" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Price" HeaderText="&nbsp;&nbsp;Price&nbsp;&nbsp;" />
            
           
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="proImage" runat="server" Width="200" />
                </ItemTemplate>  
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            
                            <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="DEL" CommandArgument='<%# Eval("Id") %>' cssclass="btn btn-danger"/>
                        </ItemTemplate>
                    </asp:TemplateField>
        </Columns>
    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BakeryAddProd]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

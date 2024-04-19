<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryUserAllOrder.aspx.cs" Inherits="BakeryUserAllOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="jumbotron">
             <div class="responsive">
            <h1 align="center">HELLO USER HERE ARE ALL YOUR ORDERS</h1>
        </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <%# Container.DisplayIndex +1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField DataField="Id" HeaderText="Id" />--%>

                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" />
                            <%--<asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" alt="" Visible='<%# Eval("Image").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("Image").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' Class="img-responsive" />
                                </ItemTemplate>
                            </asp:TemplateField>--%>
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
                </div>


            </div>
        </div>

    </form>
</body>
</html>

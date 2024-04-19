<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dropdown.aspx.cs" Inherits="dropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="drd1" runat="server">
            <asp:ListItem runat="server" Value="0">Select Course</asp:ListItem>
            <asp:ListItem Value="1"> BTech</asp:ListItem>
            <asp:ListItem Value="2">MCA</asp:ListItem>
            <asp:ListItem Value="2">MBA</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="drd2" runat="server">
             <asp:ListItem runat="server" Value="0">Select Branch</asp:ListItem>
            <asp:ListItem Value="1"> CS</asp:ListItem>
            <asp:ListItem Value="2">IT</asp:ListItem>
            <asp:ListItem Value="2">ME</asp:ListItem>
            <asp:ListItem Value="2">EC</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="drd3" runat="server">
             <asp:ListItem runat="server" Value="0">Fee Duration</asp:ListItem>
            <asp:ListItem Value="1"> 40 K 4 year</asp:ListItem>
            <asp:ListItem Value="2">50 k 4year</asp:ListItem>
            <asp:ListItem Value="2">60 k 4 year</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
        <div>
            <h4>Course Details</h4>
             <span>Course name:</span>
            <asp:Label ID="bel1" runat="server" ></asp:Label>
            <br />
            <span>Branch name:</span>
            <asp:Label ID="bel2" runat="server" ></asp:Label><br />
            <span>Fee:</span>
            <asp:Label ID="bel3" runat="server" ></asp:Label>

        </div>
    </form>
</body>
</html>

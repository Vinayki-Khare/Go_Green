<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryAdminLogin.aspx.cs" Inherits="BakeryAdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="css/BakeryLogin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="popup">
        <div class="form">
          <br><br>
          
          <div class="header">
            Admin Login
          </div>
          <div class="element">
            <label for="username">Username</label>
            <asp:TextBox type="text" id="uname" name="uname" runat="server" placeholder="Enter username" ErrorMessage="Please Enter Your Username"></asp:TextBox>
          </div>
          <div class="element">
            <label for="password">Password</label>
            <asp:TextBox type="password" id="pwd" name="pwd" runat="server" placeholder="Enter password" ErrorMessage="Please Enter Your Password"></asp:TextBox>
          </div>
          <div class="element">
            <asp:Button ID="Button1" Text="Log In" runat="server" Onclick="Button1_Click" />
        
              <asp:Label ID="Label1" runat="server"></asp:Label>
          </div>
       
        </div>
      </div>
    </form>
</body>
</html>

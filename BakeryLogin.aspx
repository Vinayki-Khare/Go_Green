<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryLogin.aspx.cs" Inherits="BakeryLogin" %>

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
                <br>
                <br>

                <div class="header">
                    Member Login
         
                </div>
                <div class="element">
                    <label for="username">Email</label>
                    <asp:TextBox type="text" ID="uname" name="uname" runat="server" placeholder="Enter username" ErrorMessage="Please Enter Your Username"></asp:TextBox>
                </div>
                <div class="element">
                    <label for="password">Password</label>

                    <asp:TextBox type="password" ID="pwd" name="pwd" runat="server" placeholder="Enter password" ErrorMessage="Please Enter Your Password"></asp:TextBox>

                </div>
                <div class="element">
                    <asp:Button ID="Button1" runat="server" name="submit" OnClick="btn" Text="Login" />

                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
                <br /><br />
                <div align="Center">
                <label>IF YOU ARE A NEW MEMBER THAN</label>
                <a href="BakerySign.aspx" style="color:black; font-size:large;"> SIGN-UP </a>
                    </div>
            </div>
        </div>
    </form>
</body>
</html>

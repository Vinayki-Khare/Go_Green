<%@ Page Language="VB" AutoEventWireup="false" CodeFile="about.aspx.vb" Inherits="Training_project_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            background-color:aliceblue;
            font-style:oblique;
        }
        .table{
            width:100%;
            border:double 2px;
        }
        
    </style>
</head>
<body><!--<body style="background:grey;">-->
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server"></asp:Table>
        <table class="table">
            <tr>
                <td>
                    <a href="Default.aspx">
                      <img src="Content/logo.png" />
                    </a>
                </td>
                <td>home</td>
                <td>login</td>
                <td>register</td>
                <td>about </td>
            </tr>
            <tr>
                <td colspan="5">
                    <div style=" padding:3px">
                       <img src="Content/webstep.jpg"/>
                    </div>
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac2.aspx.cs" Inherits="prac2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <!-- <style>
        img{
            width:300px;
            height:300px;
        }
        h1{
            align: center;
        }
    </style>-->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; border:double">
            <tr>
                <td>
                    <img class="img1" src="Content/icon.jpg" style="width:100px; height:100px;"/>
                </td>
                <td><h1>MENU<br /></h1></td>
            </tr>
        </table>
        <table style="width: 100%; border:double">
            <tr colspan="5">
                
                <td><marquee scrollamount="20" ><H1>THANDA  THANDA  JUICE  CENTER</H1></marquee></td>
                
            </tr>
      
        </table>
        <table style="width: 100%; border:double">
            <tr>
                <td><h1>SERIAL NUMBER</h1></td>
                <td><H1>JUICES</H1></td>
                <td><h1>SMALL GLASS</h1></td>
                <td><h1>MEDIUM GLASS</h1></td>
                <td><h1>LARGE GLASS</h1></td>
            </tr>
            <tr>
                <td><h1>&nbsp;&nbsp;&nbsp;1</h1></td>
                <td><img class="img" src="Content/orange.jpg" /></td>
                <td><h1>50</h1></td>
                <td><h1>70</h1></td>
                <td><h1>100</h1></td>
            </tr>
            <tr>
                <td><h1>&nbsp;&nbsp;&nbsp;2</h1></td>
                <td><img class="img" src="Content/pomegranet.jpg" /></td>
                <td><h1>50</h1></td>
                <td><h1>70</h1></td>
                <td><h1>100</h1></td>
            </tr>
            <tr>
                <td><h1>&nbsp;&nbsp;&nbsp;3</h1></td>
                <td><img class="img" src="Content/gavava.jpg" /></td>
                <td><h1>50</h1></td>
                <td><h1>70</h1></td>
                <td><h1>100</h1></td>
            </tr>
            <tr>
                <td><h1>&nbsp;&nbsp;&nbsp;4</h1></td>
                <td><img class="img" src="Content/banana.jpg" /></td>
                <td><h1>50</h1></td>
                <td><h1>70</h1></td>
                <td><h1>100</h1></td>
            </tr>
        </table><!--
        <asp:Button ID="Button1" runat="server" Text="Button" class="btn" Height="67px" Width="208px"/>
    </div>-->
    </form>
</body>
</html>

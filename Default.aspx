<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server"></asp:Table>
        <table style="width: 100%; border:'2' ">
            <tr>
                <td>
                    <a href="Default.aspx">
                      <img src="Content/logo.png" />
                    </a>
                </td>
                <td>home</td>
                <td>login</td>
                <td>regirster</td>
                <td>about
                    <a href="about.aspx">about</a>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <img src="Content/webstep.jpg" width="100%"/>
                </td>
                
            </tr>
            <tr>
                <td></td>
                <td>
                    <div style="width: 150px" border="2" height="500px">
                        <img src="Content/logo.png" />
                        <h1>logo</h1>
                    </div>
                </td>
                <td>
                    <div style="width: 150px" border="2" height="500px">
                        <img src="Content/logo.png" />
                        <h1>logo</h1>
                    </div>
                </td>
                <td>
                    <div style="width: 150px" border="2" height="500px" background="#ecd8bb">
                        <img src="Content/logo.png" />
                        <h1>logo</h1>
                    </div>
                </td>
                <td></td>
            </tr><!--
            <tr>
                <td colspan="2" >
                    
                    <p>Integrated development environments (IDE) </p>
                        <p> facilitates the development of other applications. </p>
                        <p>encompass all programming tasks in one application</p>
                        
                  
                </td>
                <td colspan="3">
                    <img src="Content/logo.png" />
                </td>
            </tr>-->
            <tr  style padding="15px">
               
                 <td colspan="3">
                    
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label> &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" placeholder ="enter first name"></asp:TextBox><br />
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label> &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" placeholder ="enter last name"></asp:TextBox><br />
                        <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" placeholder ="enter mobile number"></asp:TextBox><br />
                        <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" placeholder ="enter course"></asp:TextBox><br />
                        <asp:Label ID="Label5" runat="server" Text="Satna"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox1" runat="server" /><br />
                        <asp:Label ID="Label6" runat="server" Text="Rewa"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox2" runat="server" /><br />
                          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Button" />
        
                    
                    
                 </td>
       
            </tr>
        </table>
        <br>
        <hr>
        <br>
    </div>  
    </form>
</body>
</html>

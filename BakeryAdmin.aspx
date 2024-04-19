<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryAdmin.aspx.cs" Inherits="BakeryAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/BakeryAdmin.css" rel="stylesheet" />
    <title></title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet' />

</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar" style="background-color: #c4c4c4;">
            <div class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="logo-details">
                    <span class="logo_name">&nbsp;&nbsp;&nbsp; GO GREEN</span>  
                </div>
                <ul class="nav-links">
                  <!--  <li>
                        <a href="#" class="">
                            <i class='bx bx-grid-alt'></i>
                            <span class="links_name">Dashboard</span>
                        </a>
                    </li>-->
                    <li>
                        <a href="BakeryAdminProdAdd.aspx">
                            <i class='bx bx-box'></i>
                            <span class="links_name">Add Plants</span>
                        </a>
                    </li>
                    <li>
                        <a href="BakeryAdminAllProd.aspx">
                            <i class='bx bx-coin-stack'></i>
                            <span class="links_name">View Plants</span>
                        </a>
                    </li>
                    <li>
                        <a href="BakeryAdminAllOrder.aspx">
                            <i class='bx bx-list-ul'></i>
                            <span class="links_name">View Orders</span>
                        </a>
                    </li>
                    <li>
                        <a href="BakeryAdminAllUser.aspx">
                            <i class='bx bx-pie-chart-alt-2'></i>
                            <span class="links_name">View Users</span>
                        </a>
                    </li>&nbsp;&nbsp;
                    <li >
                        <%--<a href="BakeryIndex.aspx">
                            <i class='bx bx-log-out log_outs'></i>--%>

                            <asp:LinkButton runat="server"  OnClick="Unnamed_Click" ForeColor="Black" Font-Size="Larger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Logout</asp:LinkButton>
                            
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <asp:Label ID="lblmsg" runat="server" Text="Hi Vinayki"></asp:Label>
        <div style="margin-left: 30%;">
            <img src="Content/igs_gogreen.jpg"  width="800px" height="550px"  />
        </div>
    </form>
</body>
</html>

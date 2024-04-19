<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryProd.aspx.cs" Inherits="BakeryProd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <hr />
            <div class="responsive">
            <h1 align="center">Product Details</h1>
        </div>
    <hr />
    <form id="form1" runat="server">
        <div class="container" style="padding-top: 10px; margin-top: 10px;">
            <div class="row">
                <div class="col-md-12 text-center">
                    <asp:HiddenField ID="hfid" runat="server" />
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="true"></asp:Label>
                </div>
            </div>
            <div class="container" style="margin-left:480px;">
              <div class="row">
                <div class="col-md-4">
                    <asp:Image ID="Image" runat="server" CssClass="img-responsive" Width="300px" />
                </div>
                <div class="col-md-12"  style="align-content:center">
                    <div class="row">
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="Name" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <br />

                            <asp:Label ID="Price" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <br />

                            <asp:Button ID="Button1" runat="server" Text="Buy Now" cssClass="btn btn-sucess" style="background-color:green; color:white; border-radius:4px;" OnClick="Button1_Click"/>
                                        <asp:Label ID="buylbl" runat="server" ></asp:Label>

                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </form>
</body>;
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BootstrapDemo.aspx.cs" Inherits="BootstrapDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron">
        <div class="container text-center">
            <div class="row">
                <div class="col-md-4">
                    <img src="Content/icon.jpg" class="img-responsive img-rounded"/>
                </div>
                <div class="col-md-4">
                    <img src="Content/icon.jpg" class="img-responsive img-rounded"/>
                </div>
                <div class="col-md-4">
                    <img src="Content/icon.jpg" class="img-responsive img-rounded"/>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script src="Scripts/bootstrap.js"></script>
</body>
</html>

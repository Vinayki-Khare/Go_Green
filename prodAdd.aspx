<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prodAdd.aspx.cs" Inherits="prodAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div style="box-shadow: 2px 3px 3px 0px #4cff00; background-color: aliceblue;">
            <div class="container">
                <h1>Add Product</h1>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Enter Product Name</span>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Product Name" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Enter Product Price</span>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Price" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Choose File</span>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Description</span>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Description" class="form-control" TextMode="MultiLine" Rows="4" BorderColor="blue"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Save" class="form-control" CssClass="danger" OnClick="Button1_Click" />
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  <div class="row">
            <div class="col-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound" CssClass="table table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="ProductName" HeaderText="Algo" />
                        <asp:BoundField DataField="ProductPrice" HeaderText="5" />
                        <asp:BoundField DataField="Description" HeaderText="Description of Product" />

                        <asp:TemplateField HeaderText="Image">

                            <ItemTemplate>

                                <asp:Image ID="Image1" runat="server" Width="200" />

                            </ItemTemplate>


                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>-->
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admission Form.aspx.cs" Inherits="Admission_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<style>
    .grad {
        background-image: linear-gradient(to right, #167fb1, #030929);
        text-align: center;
        color: white;
    }

    #hr {
        color: green;
        font-weight: bolder;
    }
</style>
<body>

    <form id="form1" runat="server">
        <div class="grad">
            <br />
            <h1>VINDHYA GROUP OF INSTITUTIONS</h1>
            <h3>APPROVED BY AICTE, NEW DELHI, MP GOVT. BHOPAL & RGPV, APSU REWA</h3>
            <h5>RegistrationForm For Admission (2022-23)</h5>
            <br />
        </div>
        <div class="jumbotron">
            <div class="container">



                <div class="row">
                    <div class="col-md-6">
                        <h3>Course Detail</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="Label1" runat="server" Text="Admission Session"></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                    <asp:ListItem>2022</asp:ListItem>
                                    <asp:ListItem>2021</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="Label2" runat="server" Text="Course"></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>B.Tech</asp:ListItem>
                                    <asp:ListItem>MBA</asp:ListItem>
                                    <asp:ListItem>BSC</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="Label3" runat="server" Text="Branch"></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>CS</asp:ListItem>
                                    <asp:ListItem>ME</asp:ListItem>
                                    <asp:ListItem>EE</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="Label4" runat="server" Text="Enter"></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="enter course (optional)" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>


                    </div>

                    <div class="col-md-6">
                        <h3>Personal Detail</h3>
                        <div class="row">
                            <div class="col-md-4">

                                <asp:Label ID="Label5" runat="server" Text="First Name:"></asp:Label>

                                <asp:TextBox ID="TextBox2" runat="server" placeholder="enter first name" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="col-md-4">

                                <asp:Label ID="Label6" runat="server" Text="Middle Name:"></asp:Label>

                                <asp:TextBox ID="TextBox3" runat="server" placeholder="enter middle name" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="col-md-4">

                                <asp:Label ID="Label7" runat="server" Text="Last Name:"></asp:Label>

                                <asp:TextBox ID="TextBox4" runat="server" placeholder="enter last name" CssClass="form-control"></asp:TextBox>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-3">

                                <asp:Label ID="Label8" runat="server" Text="Category"></asp:Label>
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>General</asp:ListItem>
                                    <asp:ListItem>OBC</asp:ListItem>
                                    <asp:ListItem>SC/ST</asp:ListItem>
                                </asp:DropDownList>

                            </div>

                            <div class="col-md-3">

                                <asp:Label ID="Label9" runat="server" Text="DOB"></asp:Label>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            </div>

                            <div class="col-md-3">

                                <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="col-md-3">

                                <asp:Label ID="Label11" runat="server" Text="Photo Upload"></asp:Label>

                                <asp:FileUpload ID="PFileUpload" runat="server" />
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">

                                <asp:Label ID="Label12" runat="server" Text="Student Mobile"></asp:Label>
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Enter Mobile No."></asp:TextBox>
                            </div>
                            <div class="col-md-6">

                                <asp:Label ID="Label13" runat="server" Text="Adhar Linked Mobile"></asp:Label>
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="Enter Mobile No."></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">

                                <asp:Label ID="Label14" runat="server" Text="Adhar No."></asp:Label>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="XXXXXXXXXXXX"></asp:TextBox>
                            </div>
                            <div class="col-md-4">

                                <asp:Label ID="Label15" runat="server" Text="Clild ID"></asp:Label>
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" placeholder="Enter clild ID (optional)"></asp:TextBox>
                            </div>
                            <div class="col-md-4">

                                <asp:Label ID="Label16" runat="server" Text="Domicile"></asp:Label>
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" placeholder="Enter Domicile(MP/Other)"></asp:TextBox>
                            </div>
                        </div>


                    </div>
                </div>
                <br />
                <br />

                <div class="row">
                    <div class="col-md-12">
                        <h3>Family Detail</h3>
                        <div class="row">
                            <div class="col-md-3">

                                <asp:Label ID="Label21" runat="server" Text="Father's Name"></asp:Label>

                                <asp:TextBox ID="TextBox15" runat="server" placeholder="enter Father's name" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label22" runat="server" Text="Father's Occupation"></asp:Label>

                                <asp:TextBox ID="TextBox16" runat="server" placeholder="enter Father's Occupation" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label23" runat="server" Text="Father's Annual Income"></asp:Label>

                                <asp:TextBox ID="TextBox17" runat="server" placeholder="enter Father's Annual Income" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label24" runat="server" Text="Father's Mobile"></asp:Label>

                                <asp:TextBox ID="TextBox18" runat="server" placeholder="enter Father's Mobile No." CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">

                                <asp:Label ID="Label25" runat="server" Text="Mother's Name"></asp:Label>

                                <asp:TextBox ID="TextBox19" runat="server" placeholder="enter Mother's name" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label26" runat="server" Text="Mother's Occupation"></asp:Label>

                                <asp:TextBox ID="TextBox20" runat="server" placeholder="enter Mother's Occupation" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label27" runat="server" Text="Mother's Annual Income"></asp:Label>

                                <asp:TextBox ID="TextBox21" runat="server" placeholder="enter Mother's Annual Income" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label28" runat="server" Text="Mother's Mobile"></asp:Label>

                                <asp:TextBox ID="TextBox22" runat="server" placeholder="enter Mother's Mobile No." CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>


                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <h3>Contact/Address Detail</h3>
                        <div class="row">
                            <div class="col-md-3">

                                <asp:Label ID="Label17" runat="server" Text="Country"></asp:Label>
                                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>India</asp:ListItem>
                                    <asp:ListItem>China</asp:ListItem>
                                    <asp:ListItem>America</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label18" runat="server" Text="State"></asp:Label>

                                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select State</asp:ListItem>
                                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                    <asp:ListItem>Utter Pradesh</asp:ListItem>
                                    <asp:ListItem>Panjab</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="col-md-3">

                                <asp:Label ID="Label19" runat="server" Text="City"></asp:Label>

                                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Satna</asp:ListItem>
                                    <asp:ListItem>Rewa</asp:ListItem>
                                    <asp:ListItem>Sidhi</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="col-md-3">

                                <asp:Label ID="Label20" runat="server" Text="PinCode"></asp:Label>

                                <asp:TextBox ID="TextBox14" runat="server" placeholder="enter PinCode" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">

                                <asp:Label ID="Label29" runat="server" Text="Land Mark/Colony/Village"></asp:Label>

                                <asp:TextBox ID="TextBox23" runat="server" placeholder="enter Land Mark/Colony/Village" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label30" runat="server" Text="Complete Address"></asp:Label>

                                <asp:TextBox ID="TextBox24" runat="server" placeholder="enter Complete Address" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label31" runat="server" Text="District"></asp:Label>

                                <asp:TextBox ID="TextBox25" runat="server" placeholder="enter District" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">

                                <asp:Label ID="Label32" runat="server" Text="Email"></asp:Label>

                                <asp:TextBox ID="TextBox26" runat="server" placeholder="enter Email" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>


                    </div>
                    
                    <div class="col-md-12" style="align-items:center; width:200px;">
                        <br /><br />
                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-block btn-success"/>
                    </div>
                </div>

            </div>
        </div>



    </form>
</body>
</html>

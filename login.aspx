<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                        <form class="mx-1 mx-md-4">

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="f3c1" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <label class="form-label" for="form3Example1c">Your Name</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="f3c2" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <label class="form-label" for="form3Example3c">Your Email</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="f3c3" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <label class="form-label" for="form3Example4c">Password</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="password" id="form3Example4cd" class="form-control" />
                                                    <label class="form-label" for="form3Example4cd">Repeat your password</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-6">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">

                                                    <label class="form-label" for="form3Example4cd">Enter Your city</label>

                                                    <asp:RadioButton ID="r1" GroupName="f4" runat="server" value="Satna" Text="Satna" />
                                                    <asp:RadioButton ID="r2" GroupName="f4" runat="server" value="Rewa" Text="Rewa" />
                                                    <asp:RadioButton ID="r3" GroupName="f4" runat="server" value="Maihar" Text="Maihar" />
                                                    <asp:RadioButton ID="r4" GroupName="f4" runat="server" value="Jabalpur" Text="Jabalpur" />
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-6">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">

                                                    <label class="form-label" for="form3Example4cd">Select state</label>
                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Uttar Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="2">Asam</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-6">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">

                                                    <label class="form-label" for="form3Example4cd">Select state</label>
                                                    <asp:CheckBox ID="b1" runat="server" Text="Java" />
                                                    <asp:CheckBox ID="b2" runat="server" Text="Python" />
                                                    <asp:CheckBox ID="b3" runat="server" Text="perl" />

                                                </div>
                                            </div>

                                            <div class="form-check d-flex justify-content-center mb-5">
                                                <!--  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />-->
                                                <label class="form-check-label" for="form2Example3">
                                                    I agree all statements in <a href="#!">Terms of service</a>
                                                </label>
                                            </div>

                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <button type="button" class="btn btn-primary btn-lg" onclick="btn1">Register</button>
                                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                            </div>

                                        </form>

                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                            class="img-fluid" alt="Sample image">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BakeryIndex.aspx.cs" Inherits="BakeryIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/BakeryIndex.css" rel="stylesheet" />
    <style>
        
    </style>
</head>
<body>
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <img src="Content/igs_gogreen.jpg" width="80px" height="40px" alt="#" float="right" />
            <!-- <a class="navbar-brand" href="#">Bakery</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>-->

            <div class="collapse navbar-collapse" id="navbarSupportedContent" float="right">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="BakeryAllProd.aspx">All Categories <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="BakerySign.aspx">Signup <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="BakeryLogin.aspx">Login</a>
                    </li>
                </ul>
            </div>
            <a class="navbar-brand" href="BakeryAdminLogin.aspx">Admin Login</a>
        </nav>
    </div>

    <br>
    <br>

    <div id="slider">
        <figure>
            <img src="Content/sl1.jpg" width="600" height="442" alt="#">
            <img src="Content/sl5.jpg" width="600" height="442" alt="#">
            <img src="Content/sl3.jpg" width="600" height="442" alt="#">
            <img src="Content/sl4.jpg" width="600" height="442" alt="#">
            <img src="Content/sl2.png" width="600" height="442" alt="#">
        </figure>
    </div>

    <br>
    <br>

    <div class="navbar navbar-expand-lg navbar-light bg-light " height="200px">
        <div class="responsive">
            <h3 align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Best for the Environment</h3>
        </div>
        <%--<h4  align="center" >
                       </h4>--%>
    </div>
    <br>
    <form id="form1" runat="server">
        <div class="container">

            <table>
                <tr>
                    <td>
                        <h4>Ficus Religiosa</h4>

                    </td>
                    <td>
                        <img src="Content/ppl.jpg" width="200px" length="200px" />
                    </td>
                    <td>
                        <p>
 The tree is a great source of carbon sequestration, making it an important part of any effort to reduce global warming.                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Milkweed</h4>
                    </td>
                    <td>
                        <img src="Content/milkweed.jpg" width="150px" length="150px" />
                    </td>
                    <td>
                       Milkweed is a natural air purifier, as it absorbs pollutants like sulfur dioxide, nitrogen dioxide, and ozone from the air.
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Sunflowers</h4>
                    </td>
                    <td>
                        <img src="Content/sunflower.jpg" width="150px" length="150px" />
                    </td>
                    <td>
                         Sunflowers are excellent for air purification, as they absorb toxic pollutants like ammonia, benzene, and formaldehyde.
                    </td>
                </tr>

            </table>
        </div>
    </form>
    <br />
    <br />
    <br />
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div display="flex">
            <h4>About Us</h4>
            <p> We are dedicated to providing our customers with a wide variety of high-quality plants for any and all of their needs.

We understand the importance of plants in our daily lives, whether it be for their beauty, air-purifying qualities, or even just for the therapeutic benefits of caring for them. That is why we are committed to sourcing and selling only the best plants for our customers.

Our collection includes everything from indoor plants, outdoor plants, succulents, and even rare and exotic plants for the avid collector. We strive to provide a range of options for every level of gardening expertise, from beginners to experienced green thumbs.</p>
        </div>
        <!--<div display="flex">
            <h4>Links</h4>
            <ul>
                <li>
                    <a href="BakerSignup.aspx">
                        <h7>Sign-Up</h7>
                    </a>
                </li>
                <li>
                    <a href="BakeryLogin.aspx">
                        <h7>Login</h7>
                    </a>
                </li>
            </ul>
        </div>-->
        <div display="flex">
            <h4>Contact Us</h4>
            <ul>
                <li>
                    <a href="mail to:kharevinayki7@gmail.com">kharevinayki7@gmail.com</a>
<%--                    <a href="BakeryMail.aspx">MAIL</a>--%>
                </li>
                <li>
                    <a href="#">9826857126</a>
                </li>

            </ul>
        </div>
    </nav>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cafe_Managment_system.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css"/>
    <style type="text/css">
        .auto-style3 {
            width: 92px;
            height: 86px;
        }
        .auto-style4 {
            width: 94px;
            height: 95px;
        }
    </style>
</head>
<%-- Code for colour of the background --%>
<body style= "background-image:url('../Assets/Images/background.jpg'); background-repeat:no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">  
    <div class="container-fluid">

        <div class="row mb-5 mt-5">

        </div>
    <form id="form1" runat="server">

            <div class="row mt-5 pb-3">

                <div class ="col-md-3">
                    
                </div>
                <%-- Code for position and colour of the login background --%>
                  <div class ="col-md-3 "style="background-color:#996633;">
                     <div class="row">
                        <div class="col-md-4">&nbsp;</div>
                        <div class="col-md-4 pt-2">
                            <%-- Code for image in the brown background --%>
                            <img alt="" class="auto-style3" src="../Assets/Images/png-transparent-java-logo-coffee-cafe-coffee-cup-latte-tea-mug-coffee-bean-teacup-caffeine-removebg-preview.png" /></div>
                        <div class="col-md-4"></div>
                    </div>
                      <div class="row">
                          <div class="col-2">

                          </div>
                          <div class="col-8 pt-3 mt-2">
                              <h2 class="text-white text-center">Smooth Brew</h2>
                              <h5 class="text-white text-center">Yummy coffee</h5>
                              <h5 class="text-white text-center">Delicous pastries</h5>
                          </div>
                          <div class="col-2">

                          </div>

                      </div>
                  </div>
                <%-- Code for image in the white background --%>
                    <div class ="col-md-3 bg-white">
                    <div class="row">
                        <div class="col-md-4">&nbsp;</div>
                        <div class="col-md-4 pt-2">               
                            <img alt="" class="auto-style4" src="../Assets/Images/png-transparent-java-logo-coffee-cafe-coffee-cup-latte-tea-mug-coffee-bean-teacup-caffeine-removebg-preview.png" /></div>
                        <div class="col-md-4"></div>
                        <%-- bootstrap code for username, email and login button --%>    
                    </div>
                         <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                       <input type="email" class="form-control" id="EmailTb" runat="server"/>
                      </div>
                      <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" class="form-control" id="PasswordTb" runat="server"/>
                      </div>
                      <div class="d-grid">
                          <label id="ErrMsg" class="text-danger" runat="server"></label>
                          <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" BackColor="green" ForeColor="White" />
                         &nbsp;&nbsp;&nbsp;
                          <asp:LinkButton ID="SignupLnkBtn" runat="server" OnClick="SignupLnkBtn_Click">Sign up here</asp:LinkButton>
                          &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="ForgotPasslnkBtn" runat="server" OnClick="ForgotPasslnkBtn_Click" >Forgot password?</asp:LinkButton>
                          <br />
                          <br />
                        
                      </div>
                        
                  </div>
                    <div class ="col-md-3">

                  </div>

        </div>
    <div>
    

    </div>
    </form>
    </div>

</body>
</html>

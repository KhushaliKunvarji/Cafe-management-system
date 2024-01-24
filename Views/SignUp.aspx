<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Cafe_Managment_system.Views.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css"/>
    <style type="text/css">
        .auto-style5 {
            width: 49px;
            height: 45px;
        }
    </style>
</head>
<body style= "background-image:url('../Assets/Images/coffee.jpg'); background-repeat:no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">  

    <div class="container-fluid">
        <form id="form2" runat="server">
           
            <div class="row" style="background-color:darkslategray;">
               
               <div class="col-md-2">

                </div>
                 <div class="col-md-8">
                      <h3 class="text-white text-center">Smooth Brew Sign Up</h3>
                </div>
                 <div class="col-md-2">

                </div>
            </div>
           
             
       <div class="row">

           <div class ="col-1">

           </div>
            
            
           <div class ="col-6">
               
               <div class="mb-3"></div>
                       <div class="mb-3">
                        <label for="seller_name" class="form-label text-light">Name</label>&nbsp;
                             <input type="text" class="form-control" pattern="^[A-Za-z ]+$" title="Must contain only letters and white space" runat="server" id="selNameTb" required/>
                       </div>

                      <div class="mb-3">
                        <label for="email" class="form-label text-light">Email</label>
                       <input type="email" class="form-control" runat="server" required id="SelEmailTb" />
                      </div>

                      <div class="mb-3">
                        <label for="Seller_Contact" class="form-label text-light">Contact Info </label>
                       <input type="text" class="form-control" pattern="^[0-9]+$" title="Must contain numbers only" runat="server" id="SelContactTb" required/>
                      </div>
                      <div class="mb-3">
                        <label for="Seller_Passwprd" class="form-label text-light">Password </label>
                       <input type="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*?[#?!@$%^&*-])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase,one special symbol and lowercase letter, and at least 8 or more characters" runat="server" id="PasswordTb" required/>
                      </div>

                      <div class="mb-3">
                        <label for="comfirm_Passwprd" class="form-label text-light">confirm Password </label>
                       <input type="password" class="form-control" id="ConPassTb" pattern="(?=.*\d)(?=.*[a-z])(?=.*?[#?!@$%^&*-])(?=.*[A-Z]).{8,}" title="Must contain at least one number,one special symbol and one uppercase and lowercase letter, and at least 8 or more characters" runat="server" required/>
                      </div>
               
                      <div class="mb-3">
                        <label for="SecQues" class="form-label text-light">Security Question </label>
                       <input type="text" class="form-control" id="SecQuesTb" title="Enter a security question" runat="server" required/>
                      </div>
               
                      <div class="mb-3">
                        <label for="SecAns" class="form-label text-light">Security Question Answer </label>
                       <input type="text" class="form-control" id="SecAnsTb"  title="Enter answer to security question" runat="server" required/>
                      </div>

                     <label id="ErrMsg" class="text-danger" runat="server"></label>
                      <div class="row">
                          
                          <div class="col d-grid">
                              <asp:Button ID="RegisterBtn" runat="server" Text="Register" CssClass="btn btn-success btn-block " OnClick="RegisterBtn_Click"/>
                          </div>
                           
                           <div class="col d-grid">
                               <asp:LinkButton ID="GotologinBtn" runat="server" OnClick="GotologinBtn_Click">Go to login</asp:LinkButton>
                          </div>
                     </div>
           </div>
           <div class ="col-5">

           </div>
       </div>
    
    </form>
    </div>
    
</body>
</html>

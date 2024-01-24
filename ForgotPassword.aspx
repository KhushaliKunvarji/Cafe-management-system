<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Cafe_Managment_system.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css"/>
    </head>
<body style= "background-image:url('../Assets/Images/coffee.jpg'); background-repeat:no-repeat; background-attachment: fixed; background-position: center center; background-size: cover;">  
<div class="container-fluid">
    <form id="form1" runat="server">
        
            <div class="row" style="background-color:darkslategray;">
               
               <div class="col-md-2">

                </div>
                 <div class="col-md-8">
                      <h3 class="text-white text-center">Forgot Password</h3>
                </div>
                 <div class="col-md-2">

                </div>
            </div>

         <div class="row">

            
           <div class ="col-1">

           </div>
            
            
           <div class ="col-6">
               
               <div class="mb-3">
                   
                   <label for="seller_name" class="form-label text-light">Name</label>&nbsp;
                             <input type="text" class="form-control" runat="server" id="NameTb" required/> 

               </div>

                      <div class="mb-3">
                        <label for="email" class="form-label text-light">Email</label>
                       <input type="email" class="form-control" runat="server" id="EmailTb" required/>
                      </div>
                <label id="ErrMsg" class="text-danger" runat="server"></label>
                      <div class="row">
                          
                          <div class="col d-grid">
                              <asp:Button ID="ForgotBtn" runat="server" Text="Submit" CssClass="btn btn-success btn-block " OnClick="ForgotBtn_Click" />
                          </div>
                           
                           <div class="col d-grid">
                               <asp:LinkButton ID="GotologinBtn" runat="server" OnClick="GotologinBtn_Click" >Go to login</asp:LinkButton>
                          </div>
                     </div>
               <asp:Panel ID="SecurityPnl" runat="server">
               <div class="mb-3">
                        <label for="SecQues" id="SecQueslbl" class="form-label text-light">Security Question </label>
                       <input type="text" class="form-control" id="SecQuesTb"  runat="server" />
                      </div>
               
                      <div class="mb-3">
                        <label for="SecAns" class="form-label text-light">Security Question Answer </label>
                       <input type="text" class="form-control" id="SecAnsTb"  title="Enter answer to security question" runat="server" required/>
                      </div>
                    <label id="Label1" class="text-danger" runat="server"></label>
                      <div class="row">
                          
                          <div class="col d-grid">
                              <asp:Button ID="btnsec" runat="server" Text="Submit" CssClass="btn btn-success btn-block " OnClick="btnsec_Click"  />
                          </div>
                           
                          
                     </div>
               </asp:Panel>
               <asp:Panel ID="PasswordPnl" runat="server">
                   <div class="mb-3">
                        <label for="Passwprd" class="form-label text-light">Password </label>
                       <input type="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*?[#?!@$%^&*-])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase,one special symbol and lowercase letter, and at least 8 or more characters" runat="server" id="PasswordTb" required/>
                      </div>

                      <div class="mb-3">
                        <label for="comfirm_Passwprd" class="form-label text-light">confirm Password </label>
                       <input type="password" class="form-control" id="ConPassTb" pattern="(?=.*\d)(?=.*[a-z])(?=.*?[#?!@$%^&*-])(?=.*[A-Z]).{8,}" title="Must contain at least one number,one special symbol and one uppercase and lowercase letter, and at least 8 or more characters" runat="server" required/>
                      </div>
                    <label id="Label2" class="text-danger" runat="server"></label>
                      <div class="row">
                          
                          <div class="col d-grid">
                              <asp:Button ID="Btnpass" runat="server" Text="Submit" CssClass="btn btn-success btn-block " OnClick="Btnpass_Click"  />
                          </div>
                          
                     </div>
               </asp:Panel>
                    
           </div>
           <div class ="col-5">

           </div>
             
       </div>
    </form>
 </div>

</body>
</html>

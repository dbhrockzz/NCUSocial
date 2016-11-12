<%-- 
    Document   : index
    Created on : 9 Nov, 2016, 10:41:34 PM
    Author     : dbhrockzz
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>

<head>
    <title>Welcome to NCUSocial</title>
    <link rel="stylesheet" type="text/css" href="css/materialize.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    
    <style>
        @media only screen and (max-width: 500px) {
            .welcome {
                height: 453.22px;
            }
            .login {
                height: 453.22px;
            }
            
            
        }
        
        .login {
            height: 100%;
        }
        
        .welcome {
            background-color: #01c7b6;
            color: white;
            height: 100%;
            
        }
        #Sign_up{         
            background-color: #01c7b6;
        }
        #Sign_up .input-field input[type=text]:focus {
            border-bottom: 1px solid #757575;
            
        }
        #Sign_up .input-field input[type=password]:focus {
            border-bottom: 1px solid #757575;
            
        }
        #Sign_up .input-field label {
            color: white;
        }
        #Sign_up .input-field input{
            border-bottom: 1px solid white;
        }
        
          /* label focus color */
        #Sign_up .input-field input[type=text]:focus + label{
            color: #757575;
        }
        #Sign_up .input-field input[type=password]:focus + label{
            color: #757575;
        }
        #login_form .input-field label{
            color: #757575;
        }
        #login_form .input-field input{
            border-bottom: 1px solid #757575;
        }
        
    </style>
</head>

<body style="height:100%;">
    <div class="row flow-text" style="margin-bottom:0px;">
        <!--container is added -->
        <div id="welcome" class="welcome col s12 m8 l8" style="padding:0px 50px 0px 50px;">
            <!--Welcome column-->
            <h2 class="wel_head" style="padding:30px 0px 0px 0px;">Welcome to our community</h2>
            <h4>New here? Why not register yourself</h4>
            <div id="Sign_up" class="row">
                <form id="signup" action="signup" method="POST">
                    <div class="col s8 m8 l6">
                   
                        <div class="input-field">
                            <input type="text" name="name" value="" id="name" required>
                            <label  for="name">Name</label>
                        </div>
                        <div class="input-field">
                            <input type="text" name="email" value="" id="email" required>
                            <label  for="Email_id">Email id </label>
                        </div>

                        <div class="input-field">
                            <input type="password" name="pass" value="" id="password" required>
                            <label  for="Password">Password</label>
                        </div>
                    <br>
                     <%  
                        if(request.getAttribute("signupResult")!=null && request.getAttribute("signupResult")=="false"){
                        %>     
                    <div>
                        <span style="color:white">Registered Successfully</span>
                    </div>
                    <br>
                    <%
                        }
                    %>
                    <%  
                        if(request.getAttribute("signupResult")!=null && request.getAttribute("signupResult")=="true"){
                        %>     
                    <div>
                        <span style="color:white">User Already Exists or Problem in Registration</span>
                    </div>
                    <br>
                    <%
                        }
                    %>
                    <a href="javascript:{}" style="font-size:18px;" onClick="document.getElementById('signup').submit();" class=" waves-effect waves-light btn-large white teal-text waves-teal">Sign Up</a>
                </div>
                </form>
            </div>
            
        </div>
        <div class="login col s12 m4 l4" style="padding:0px 50px 0px 50px;">
            <!--login column-->
            <h4 class="grey-text text-darken-1" style="padding:130px 0px 20px 0px;">Or let's resume</h4>
            <form action="login" method="POST" id="login_form">
                <!--login form -->
                <div class="input-field">
                    <input type="text" name="Username" value="" id="Username" required>
                    <label for="Username">Username</label>
                </div>
                <div class="input-field">
                    <input type="password" name="Password" value="" id="Password" required>
                    <label for="Password">Password</label>
                </div>
                <%  
                    if(request.getAttribute("loginResult")!=null && request.getAttribute("loginResult")=="true"){
                %>     
                    <div>
                    	<span style="color:red">Wrong Username or Password</span>
                    </div>
                <%
                    }
                %>
                <br>
                <a href="javascript:{}" style="font-size:18px;" onclick="document.getElementById('login_form').submit();" class="waves-effect waves-light btn-large">Log in</a>
                <a  style="padding-left:20px;font-size:18px; " href="" class="tooltipped grey-text text-darken-1" data-position="bottom" data-delay="10" data-tooltip="Happens often" >Forgot Password ?</a>
            </form>
            
        </div>
    </div>
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
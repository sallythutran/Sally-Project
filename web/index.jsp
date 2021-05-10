<%-- 
    Sally Thu Tran
Period 6
This is the first page prompt the user about the website and what to do
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Css/AurevoirCss.css" type="text/css" rel="stylesheet">
    <title>Welcome</title>
  </head>
  <body>

    <%-- Title and logo of The page--%>
    <div id="title">

      <a href="index.jsp" id="logoLink">
        <img id="logoImage"  src="Images/AurevoirRectangle.png" alt="Au Revoir">
      </a>

      <a href="#popUpRequest"class="userRequest" id="logIn">
        Log In
      </a>

      <a href="#popUpRequest" class="userRequest" id="signUp">
        Sign Up
      </a>

    </div>


    <%--Log In and Sign Up pop up request--%>
    <div id="popUpRequest">

      <%-- Log In Section--%>
      <div id="requestBox">
        <a href="#" id="closeLogIn">&times;</a>
        <div id="logInBox" class="inLineRequest">
          <form action="Welcome" method="Post">
            <h3> Log In</h3> 

            User Name<input type="text" class="userInput" name="userLogIn">
            <br>
            Password<input type="password" class="userInput" name="passwordLogIn">
            <br>

            <a href="#popUpRenewPassword">Forgot Password --></a>
            <input class="buttonRequest" id="logInButton" type="submit" value="Log In"> 

          </form>
        </div>
        <%--Vertical line seperate log in and sign up --%>
        <div id="verticalLine"></div>

        <%-- Sign Up Pop Up --%>
        <div id="signUpBox" class="inLineRequest">
          <form action="SignUp" method="Post">
            <h3>Sign Up</h3>

            User Name<input type="text" class="userInput" name="userSignUp"><br>
            Password<input type="password" class="userInput" name="passwordSignUp"><br>
            Confirm Password <input type="password" class="userInput" name="passwordConfirmSignUp">

            <br>

            <input class="buttonRequest" id="signUpButton" type="submit" value="Sign Up">
          </form>
        </div>

      </div>
    </div>

    <%-- Pop Up Request new Password --%>
    <div id="popUpRenewPassword">
      <div id="requestRenew">
        <a href="#" id="closeRenewPassword">&times;</a>
        <form action="NewPass" method="Post">
          <h3>Forgot Password</h3>

          User Name<input type="text" class="userInput" name="userForgot"><br>
          New Password<input type="password" class="userInput" name="passwordForgot"><br>
          Confirm Password <input type="password" class="userInput" name="passwordConfirmForgot">
          <br>
          <a href="#popUpRequest" class="buttonRequest" id="backNewPassButton">Back</a>
          <input class="buttonRequest" id="newPassButton" type="submit" value="Renew Password">

        </form>
      </div>
    </div>

    <%-- Manu Bar --%>
    <div id="menuBar">
      <a href="index.jsp">
        Main Page
      </a>
      <a href="index.jsp">
        Men
      </a>
      <a href="index.jsp">
        Women
      </a>
    </div>

    <%-- Warning for user about their log in, sign up or password change --%>
    <div id="warningRequest">
      <br>

      <span id="warningSuccess">${warningSuccess}</span> <span id="warningFail">${warningFail}</span><br>
      Please Log In or Sign Up ${requestAgain}               

    </div>
      
      <a href="Welcome" >
        Let's go
        
      </a>
  </body>
</html>

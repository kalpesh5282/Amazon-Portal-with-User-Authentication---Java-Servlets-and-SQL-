<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>amazon-login</title>
 <link rel="stylesheet" href="Login.css">
</head>
<body>
 <div class="main-container">
        <div class="logo">
            <img class="img-logo" src="./amazonin.svg" alt="">
        </div>
        <div class="box">
            <div class="box-heading">
                <p>Sign in</p>
            </div>
            <form method="post" action="http://localhost:8080/Amazon_Login/Login_servlet">
                <label for="">Email or mobile phone number</label>
                <input type="text" name="email"><br><br>
                <label for="">password</label><br>

                <input type="password" name="password">
                <input class="btn" type="submit" value="Sign in">
            </form>


            <div class="new-amz">

                <div class="line"></div>
                <h6>New to Amazon?</h6>
                <div class="line"></div>
            </div>
          
          	<button onclick="location.href='./Register.jsp'">Create your Amazon account</button>

        </div>
    </div>

</body>
</html>
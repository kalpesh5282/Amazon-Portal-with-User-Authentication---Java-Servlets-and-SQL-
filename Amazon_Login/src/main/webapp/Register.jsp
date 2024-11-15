<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register-amazon</title>
 <link rel="stylesheet" href="Register.css">
</head>
<body>
 <div class="main-container">
        <div class="logo">
            <img class="img-logo" src="./amazonin.svg" alt="">
        </div>
        <div class="box">
            <div class="box-heading">
                <p>Create account</p>
            </div>
            <form method="post" action="http://localhost:8080/Amazon_Login/Create_account_servlet">
                <label for="">Your name</label>
                <input type="text" name="name" placeholder="name"><br><br>
                <label for="">Email</label><br>
                <input type="email" name="email"><br><br>

                <label for="">Phone</label><br>
                <input type="phone" name="phone"><br><br>
                
                <label for="">Password</label><br>
                <input type="password" name="password">
                <input class="btn" type="submit" value="Create your Amazon account">
            </form>


            <div class="new-amz">

        
                <h6>
                   
                     <button class="btn-sign" onclick="location.href='./Login.jsp'">Sign in</button>
                    
                    
                </h6>
           
            </div>
            
          

        </div>
    </div>
    
</body>
</html>
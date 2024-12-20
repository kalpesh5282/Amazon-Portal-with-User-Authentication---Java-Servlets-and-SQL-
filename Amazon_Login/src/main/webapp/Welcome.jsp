<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="javax.servlet.http.HttpSession" %>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to amazon</title>
 <link rel="icon" href="./img/favicon.png" />
    <link rel="stylesheet" href="index.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
</head>
<body>

<%
HttpSession session2=request.getSession(false);
if(session2 !=null && session2.getAttribute("username")!=null){
	String user=(String)session2.getAttribute("username");
	String name="";
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flipkart","root","admin");
			String q="select name from user where email=?";
			PreparedStatement prt=conn.prepareStatement(q);
			prt.setString(1, user);
			
			System.out.println("This is the name "+prt);
			ResultSet rs=prt.executeQuery();
			
			if(rs.next()){
				 name=rs.getString("name");
				System.out.println("name is "+name);
			}
		    rs.close();
	        prt.close();
	        conn.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

%>


 <header>
      <div class="navbar">
        <div class="navlogo border">
          <div class="logo"></div>
        </div>
        <div class="navadd">
          <p class="box1">Deliver to</p>
          <div class="add-icon">
            <p class="box2" style="margin-left: 13px">
              <b>India</b> <br />&nbsp;&nbsp;<i
                class="fas fa-crosshairs"
                style="font-size: 15px; color: white"
              ></i>
            </p>
          </div>
        </div>
        <div class="search">
          <select class="all">
            <option>All</option>
            <option>All Departments</option>
            <option>Arts & Crafts</option>
            <option>Automotive</option>
            <option>Baby</option>
            <option>Beauty & Personal Care</option>
            <option>Books</option>
            <option>Boy's Fashion</option>
            <option>Computers</option>
            <option>Deals</option>
            <option>Digital Music</option>
            <option>Electronics</option>
            <option>Girls Fashion</option>
            <option>Health & Household</option>
          </select>
          <input class="search_input" placeholder="&nbsp; Search Amazon" />
          <div class="search-icon">
            <i class="fa-solid fa-magnifying-glass"></i>
          </div>
        </div>
        <div class="box4">
          <img
            src="./img/flag.webp"
            alt="flag"
            height="12px"
            width="25px"
            class="image"
          />
          <select class="lang">
            <option>EN</option>
            <option>Hindhi</option>
            <option>मराठी</option>
          </select>
        </div>
        <div class="box5">
            <p class="hello"><span>Hello,<%=name %></span></p>
            <p class="account"><span><b>Account & Lists</b></span>
              <select class="sign_inoption">
                <option></option>
              </select>
            
            </p>

        </div>

        <div class="box6">
          <p class="return"><span>Returns</span></p>
          <p class="order"><span><b>& Orders</b></span>
          </p>
        </div>

        <div class="box7">
                  <a href="./index.html"><p class="Logout">Logout</p></a> 
         
          </p>
        </div>
      </div>
      <div class="nav2">
        
        <div class="b1">
          <i class="fa-solid fa-bars" style="margin-top: 10px;"></i>
          <p class="all1"><span><b>All</b></span>
          </p>
        </div>
        <div class="today_deal">
          <p class="deal">Today's Deals</p>
        </div>
        <div class="b3">
          <p class="regi">Registry</p>
        </div>
        <div class="b4">
          <p class="customer">Customer Service</p>
        </div>
        <div class="b5">
          <p class="gift">Gift Cards</p>
        </div>
        <div class="b6">
          <p class="sell">Sell</p>
        </div>
      </div><!-- nav2 end point -->   
    </header>
    <div class="img">
     <!-- <img src="./img/banner.jpg" alt="banner" height="100%" width="100%"> -->
     <div class="txt">
      <p> You are on amazon.com. You Can also shop on Amazon india for millions of product with fast local delivery <a href="https://www.amazon.in/" class="amazon_in">Click here to go to amazon.in</a></p>
     </div>
      </div> 
   </div>

   <div class="products">
    <div class="p1">
      <h3 align="center" style="margin-top: 25px;">Gaming accessories</h3>
      <img src="./img/accessories.jpg" alt="headphone" class="headphone">
      <img src="./img/keybord.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Headset</p>
     <p>Keybord</p>
      </div>
      <img src="./img/mouse.jpg" alt="headphone" class="headphone">
      <img src="./img/chair.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Mouse</p>
     <p>Chairs</p>

      </div>
      <div class="see">
        <a href="amazon.com" style="text-decoration: none;">see more </a>
      </div>
      

    </div>
    <div class="p2">   <h3 align="center" style="margin-top: 25px;">Fashion trends you like</h3>
      <img src="./img/dresses.jpg" alt="headphone" class="headphone">
      <img src="./img/knits.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Dresses</p>
     <p>Knits</p>
      </div>
      <img src="./img/jackets.jpg" alt="headphone" class="headphone">
      <img src="./img/jewlry.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Jackets</p>
     <p>Jewlry</p>

      </div>
      <div class="see">
        <a href="amazon.com" style="text-decoration: none;">explore more </a>
      </div></div>
    <div class="p1"> <h3 align="center" style="margin-top: 25px;">Gaming accessories</h3>
      <img src="./img/accessories.jpg" alt="headphone" class="headphone">
      <img src="./img/keybord.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Headset</p>
     <p>Keybord</p>
      </div>
      <img src="./img/mouse.jpg" alt="headphone" class="headphone">
      <img src="./img/chair.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Mouse</p>
     <p>Chairs</p>

      </div>
      <div class="see">
        <a href="amazon.com" style="text-decoration: none;">see more </a>
      </div>
      </div>
    <div class="p2"><h3 align="center" style="margin-top: 25px;">Fashion trends you like</h3>
      <img src="./img/dresses.jpg" alt="headphone" class="headphone">
      <img src="./img/knits.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Dresses</p>
     <p>Knits</p>
      </div>
      <img src="./img/jackets.jpg" alt="headphone" class="headphone">
      <img src="./img/jewlry.jpg" alt="keybord" class="keybord">
      <div class="name">
     <p>Jackets</p>
     <p>Jewlry</p>

      </div>
      <div class="see">
        <a href="amazon.com" style="text-decoration: none;">explore more </a>
      </div></div>

   </div>
   <footer>
  <div class="footer-container">
    <div class="footer-column">
      <h3>Get to Know Us</h3>
      <ul>
        <li><a href="#">About Amazon</a></li>
        <li><a href="#">Careers</a></li>
        <li><a href="#">Press Releases</a></li>
        <li><a href="#">Amazon Science</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h3>Connect with Us</h3>
      <ul>
        <li><a href="#">Facebook</a></li>
        <li><a href="#">Twitter</a></li>
        <li><a href="#">Instagram</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h3>Make Money with Us</h3>
      <ul>
        <li><a href="#">Sell on Amazon</a></li>
        <li><a href="#">Sell under Amazon Accelerator</a></li>
        <li><a href="#">Protect and Build Your Brand</a></li>
        <li><a href="#">Amazon Global Selling</a></li>
        <li><a href="#">Supply to Amazon</a></li>
        <li><a href="#">Become an Affiliate</a></li>
        <li><a href="#">Fulfillment by Amazon</a></li>
        <li><a href="#">Advertise Your Products</a></li>
        <li><a href="#">Amazon Pay on Merchants</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h3>Let Us Help You</h3>
      <ul>
        <li><a href="#">Your Account</a></li>
        <li><a href="#">Returns Centre</a></li>
        <li><a href="#">Recalls and Product Safety Alerts</a></li>
        <li><a href="#">100% Purchase Protection</a></li>
        <li><a href="#">Amazon App Download</a></li>
        <li><a href="#">Help</a></li>
      </ul>
    </div>
  </div>
  
  <div class="footer-bottom">
    <div class="footer-language">
      <img src="./img/logo.png" alt="Amazon logo">
      <select>
        <option>English</option>
        <option>Hindi</option>
        <option>Marathi</option>
      </select>
      <select>
        <option>India</option>
        <option>US</option>
      </select>
    </div>
    
    <div class="footer-links">
      <ul>
        <li><a href="#">AbeBooks</a></li>
        <li><a href="#">Amazon Web Services</a></li>
        <li><a href="#">Audible</a></li>
        <li><a href="#">Prime Now</a></li>
        <li><a href="#">IMDb</a></li>
        <li><a href="#">Amazon Prime Music</a></li>
      </ul>
    </div>
    
    <div class="footer-legal">
      <p>&copy; 1996-2024, Amazon.com, Inc. or its affiliates</p>
      <p><a href="#">Conditions of Use & Sale</a> | <a href="#">Privacy Notice</a> | <a href="#">Interest-Based Ads</a></p>
    </div>
  </div>
</footer>
   
   <% 
  }
    else{
    	response.sendRedirect("Login.jsp");
    }
    
    %>
   
</body>
</html>
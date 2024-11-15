package amazon_login_details;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login_servlet")
public class Login_servlet extends HttpServlet {
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/flipkart","root","admin");
			String q="select * from user where email= ? and password= ?";
			PreparedStatement prt=conn.prepareStatement(q);
			prt.setString(1, email);
			prt.setString(2, pass);
			System.out.println(prt);
			ResultSet rs=prt.executeQuery();
		
			if (rs.next()) {
				System.out.println("welcome");
				HttpSession session=request.getSession();
				session.setAttribute("username", email);
				RequestDispatcher rd=request.getRequestDispatcher("/Welcome.jsp");
				rd.include(request, response);
				out.print("Login Sucessfull");
				
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
				rd.include(request, response);
				out.print("<div style='color: red; position: absolute;  bottom: 85%; left: 35%;font-size: 20px;'> We cannot find an account with that email address</div>");
			
			}
		}
		 
		 catch (ClassNotFoundException e) {
			out.println("error"+e.getMessage());
			e.printStackTrace();
		}
		 
		 
		 catch (SQLException e) {
			out.println("error"+e.getMessage());
			e.printStackTrace();
		}
		
	}
	}



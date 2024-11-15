package amazon_login_details;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Create_account_servlet")
public class Create_account_servlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String pass=request.getParameter("password");
		
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flipkart","root","admin");
			String q="insert into user (name,email,phone,password) values(?,?,?,?)";
			PreparedStatement prt=con.prepareStatement(q);
			
			prt.setString(1,name );
			prt.setString(2,email);
			prt.setString(3,phone);
			prt.setString(4,pass );
			
			int count=prt.executeUpdate();
			if(count>0) {
				System.out.println("okokok");
				RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
				rd.include(request, response);
//				out.print("user Register sucessfully....");
			}
			
		} catch (SQLException e) {
		    out.print("Error: " + e.getMessage());
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			 out.print("Error: " + e.getMessage());
			e.printStackTrace();
			System.out.println("yuuuuu");
		}
	}

}

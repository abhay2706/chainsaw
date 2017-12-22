

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		String Email = request.getParameter("uname");
		String Password = request.getParameter("password");
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection conn;
		conn = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
		PreparedStatement ps = conn.prepareStatement("select * from SignupData where email = ? and password = ?");
		ps.setString(1,Email);
		ps.setString(2,Password);
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			response.sendRedirect("welcome.jsp");
			}
		else {
			writer.println("Invalid Credentials");
			writer.println("<br>");
			writer.println("<a href = 'Mainpage.jsp'>Go Back</a>");
		}
		}
		
		catch(Exception e)
		{
			System.out.println(e);
			}
		}
	}




import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SavingLoginServlet
 */
public class SavingLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String Aadhar = request.getParameter("aadhar");
			int Pin = Integer.parseInt(request.getParameter("pin"));
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection conn;
			conn = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
			PreparedStatement ps = conn.prepareStatement("select * from SavingData where aadhar = ? and pin =?");
			
			PrintWriter writer = response.getWriter();
			ps.setString(1,Aadhar);
			ps.setInt(2,Pin);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				response.sendRedirect("welcome.jsp");
				}
			else {
				writer.println("Invalid Credentials");
			}
			ps.close();
			System.out.println(ps);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	}


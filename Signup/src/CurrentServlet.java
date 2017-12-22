

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class CurrentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
	String FirstName = request.getParameter("firstname");
	String FatherName = request.getParameter("fathername");
	String LastName = request.getParameter("lastname");
	String BussinessName = request.getParameter("business");
	int Date = Integer.parseInt(request.getParameter("date"));
	int Month = Integer.parseInt(request.getParameter("month"));
	int Year = Integer.parseInt(request.getParameter("year"));
	int Age = Integer.parseInt(request.getParameter("age"));
	String Address = request.getParameter("address");
	String Aadhar = request.getParameter("aadhar");
	int Pin = Integer.parseInt(request.getParameter("pin"));
	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection conn;
	conn = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
	PreparedStatement ps = conn.prepareStatement("insert into CurrentData values(?,?,?,?,?,?,?,?,?,?,?)");
	
	ps.setString(1,FirstName);
	ps.setString(2,FatherName);
	ps.setString(3,LastName);
	ps.setString(4,BussinessName);
	ps.setInt(5,Date);
	ps.setInt(6, Month);
	ps.setInt(7,Year);
	ps.setInt(8,Age);
	ps.setString(9,Address);
	ps.setString(10,Aadhar);
	ps.setInt(11,Pin);
	ps.execute();
	conn.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	
	System.out.println("successfully saved");
	}

}

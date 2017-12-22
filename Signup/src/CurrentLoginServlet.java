

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CurrentLoginServlet extends HttpServlet {
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
		PreparedStatement ps = conn.prepareStatement("select * from CurrentData where aadhar = ? and pin =?");
		
		PrintWriter writer = response.getWriter();
		ps.setString(1,Aadhar);
		ps.setInt(2,Pin);
		ResultSet rs = ps.executeQuery();

        writer.println("<center><h1>Result:</h1></center>");
        while(rs.next())

        {
        	writer.print("<style>body{ background-image:url('C:/Users/E5/Desktop/Bgs for project/welcomepage.jpg');}</style>");
        	writer.print("<tr>");
        	writer.println("<h1 style = 'color:red'> Hello");
        	writer.print(" "+rs.getString(1));
        	writer.print(" "+rs.getString(2));
        	writer.print(" "+rs.getString(3));               
        	writer.println("</h1>");
     }
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

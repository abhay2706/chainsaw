

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String FirsName = request.getParameter("firstname");
		String FatherName = request.getParameter("fathername");
		String LastName = request.getParameter("surname");
		String Gender = request.getParameter("gender");
		String Email = request.getParameter("email");
		String MobileNum = request.getParameter("mobile");
		String Aadhar = request.getParameter("aadhar");
		String Password = request.getParameter("password");
		
		SignupData sud = new SignupData();
		sud.setFirstName(FirsName);
		sud.setFatherName(FatherName);
		sud.setLastName(LastName);
		sud.setGender(Gender);
		sud.setEmail(Email);
		sud.setMobileNum(MobileNum);
		sud.setAadhar(Aadhar);
		sud.setPassword(Password);
		SessionFactory sf = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.save(sud);
		session.getTransaction().commit();
		session.close();
		System.out.println("successfully saved");
		response.sendRedirect("welcome.jsp");
	}

}

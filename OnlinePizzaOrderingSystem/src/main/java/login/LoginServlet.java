package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("email");
		String password = request.getParameter("pass");
		
		
//		if(uname.equals("amit")&& password.equals("amit")) {
//			response.sendRedirect("index.jsp");
//		}else {
//			response.sendRedirect("NewUser.jsp#login");
//		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/capstoneproject","root","root");
			PreparedStatement pst = con.prepareStatement("select * from registerinfo where uemail = ? and upwd = ? ");
			pst.setString(1,uname);
			pst.setString(2,password);
			ResultSet rs =  pst.executeQuery();
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("username",uname);
				response.sendRedirect("index.jsp");
			}else {
				request.setAttribute("status","failed");
				response.sendRedirect("NewUser.jsp#login");
			}
			//dispatcher.forward(request,response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	
	

}

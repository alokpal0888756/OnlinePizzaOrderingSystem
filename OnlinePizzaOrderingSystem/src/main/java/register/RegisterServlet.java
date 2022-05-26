package register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ufname = request.getParameter("first name");
		String ulname = request.getParameter("last name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String uaddress = request.getParameter("address");
		String umobile = request.getParameter("mobile");
		
		RequestDispatcher dispatcher = null;
		
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/capstoneproject","root","root");
			PreparedStatement pst = con.prepareStatement("insert into registerinfo(ufname,ulname,uemail,upwd,uaddress,umobile) value(?,?,?,?,?,?)");
			pst.setString(1,ufname);
			pst.setString(2,ulname);
			pst.setString(3,uemail);
			pst.setString(4,upwd); 
			pst.setString(5,uaddress);
			pst.setString(6,umobile);
			int rowAffected = pst.executeUpdate();
			
			if(rowAffected>0) {
				
//				PrintWriter outPrintWriter = response.getWriter();
//				outPrintWriter.print("successfully registered");
				request.setAttribute("status","success");
				response.sendRedirect("NewUser.jsp#login");
			}else {
				
				request.setAttribute("status","failed");
				response.sendRedirect("NewUser.jsp#register");
			}
			dispatcher.forward(request,response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

}

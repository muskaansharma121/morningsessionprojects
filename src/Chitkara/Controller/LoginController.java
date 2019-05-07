package Chitkara.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Chitkara.Dao.UserDao;
import Chitkara.operation.UserOperation;

public class LoginController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 UserDao user=new UserDao();
		 user.setUid(request.getParameter("username"));
		 user.setPassword(request.getParameter("password"));
		 user=UserOperation.login(user);
		 PrintWriter out=response.getWriter();
		 if(user.getUser_type().equalsIgnoreCase("Admin")) {
			//request.getRequestDispatcher("Dashboard.html").include(request, response);
			 response.sendRedirect("Dashboard.html");
		 }
		 else if(user.getUser_type().equalsIgnoreCase("user")) {
			 HttpSession session=request.getSession(true);
			 session.setAttribute("user", user);
            response.sendRedirect("Dashboard.jsp?id="+session.getId());
		 }
		 else {
			 response.sendRedirect("Login.html");
		 }
	}

}

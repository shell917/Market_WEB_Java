package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.UserDaoImpl;

public class loginServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
			response.setContentType("text/html");
			String name = request.getParameter("email");
			String password = request.getParameter("password");
			UserDao userDao = new UserDaoImpl();
			if(userDao.login(name, password)){		
				response.sendRedirect("http://localhost:8080/two_success/homepage_1.html");
			}else{			
				response.sendRedirect("http://localhost:8080/two_success/login.jsp");
			}
	}
}

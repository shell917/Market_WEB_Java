package web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.UserDaoImpl;

public class updateServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String new_password = request.getParameter("new_password");
		String _password = request.getParameter("_password");
		UserDao userDao = new UserDaoImpl();
		if(new_password.equals(_password)){
			if(userDao.update(email, password, new_password, _password)){
				response.sendRedirect("http://localhost:8080/two_success/right.html");
			}
			else
				response.sendRedirect("http://localhost:8080/two_success/right1.html");
		}else
			response.sendRedirect("http://localhost:8080/two_success/right1.html");
	}
}

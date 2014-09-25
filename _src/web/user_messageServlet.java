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

public class user_messageServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		response.setContentType("text/html");
		String email = request.getParameter("email");
		UserDao userDao = new UserDaoImpl();	
		ArrayList USER = new ArrayList();
		USER = userDao.query_user(email);
		HttpSession session = request.getSession();
		session.setAttribute("user",USER);
		response.sendRedirect("http://localhost:8080/two_success/user.jsp");
	}
}

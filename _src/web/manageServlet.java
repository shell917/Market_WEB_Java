package web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GoodsDao;
import dao.GoodsDaoImpl;

public class manageServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
			response.setContentType("text/html");
			String email = request.getParameter("email");
			GoodsDao goodsDao = new GoodsDaoImpl();	
			ArrayList GOODS = new ArrayList();
			GOODS = goodsDao.query_by_user(email);
			
	
			HttpSession session = request.getSession();
			session.setAttribute("goods",GOODS);
			
			response.sendRedirect("http://localhost:8080/two_success/manage.jsp");
	}
}

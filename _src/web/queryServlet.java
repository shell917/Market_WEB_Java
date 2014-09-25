package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;

import dao.GoodsDao;
import dao.GoodsDaoImpl;
import entity.Goods;

public class queryServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
			response.setContentType("text/html");
			String query = request.getParameter("query");
			GoodsDao goodsDao = new GoodsDaoImpl();	
			ArrayList GOODS = new ArrayList();
			GOODS = goodsDao.query(query);
			

			HttpSession session = request.getSession();
			session.setAttribute("goods",GOODS);
			
			response.sendRedirect("http://localhost:8080/two_success/query.jsp");
	}
}

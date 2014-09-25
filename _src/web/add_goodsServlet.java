package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GoodsDao;
import dao.GoodsDaoImpl;

public class add_goodsServlet extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String goodsname = request.getParameter("goodsname");
		String fuser = request.getParameter("fuser");
		String price = request.getParameter("price");
		String intro = request.getParameter("intro");
		String xx = request.getParameter("xx");
		String tel = request.getParameter("tel");
		String fenlei = request.getParameter("fenlei");
		GoodsDao goodsDao = new GoodsDaoImpl();
		if(goodsname!=""&&fuser!=""&&price!=""&&intro!=""&&fenlei!=""&&tel!=""){
			goodsDao.add_goods(goodsname,fuser,price,intro,xx,fenlei,tel);
			response.sendRedirect("http://localhost:8080/two_success/right2.html");
		}
		else
			response.sendRedirect("http://localhost:8080/two_success/right1.html");
		}
}

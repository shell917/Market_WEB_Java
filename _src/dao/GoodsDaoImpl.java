package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.JDBCutil;
import entity.Goods;

public class GoodsDaoImpl implements GoodsDao{
	static String QUERY_SQL_BY_FENLEI= "select * from goods where fenlei = ?";
	static String QUERY_SQL_BY_USER= "select * from goods where user = ?";
	static String ADD_GOODS_SQL = "insert into goods(goodsname,user,price,intro,xx,fenlei,tel) values(?,?,?,?,?,?,?)";
	
	static Connection conn = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	static Statement st = null;
	
	
	//通过商品分类查询商品
	ArrayList GOODS = new ArrayList();
	public ArrayList query(String fenlei) {
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(QUERY_SQL_BY_FENLEI);
			ps.setString(1, fenlei);
			rs = ps.executeQuery();
			while(rs.next()){	
				Goods goods = new Goods();
				goods.setGoodsname(rs.getString(1));
				goods.setFuser(rs.getString(2));
				goods.setPrice(rs.getInt(3)); 
				goods.setIntro(rs.getString(4));
				goods.setXx(rs.getString(5));
				goods.setFenlei(rs.getString(6));				
				GOODS.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return GOODS;
	}
	
	//通过发布用户查询商品
	public ArrayList query_by_user(String email){
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(QUERY_SQL_BY_USER);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while(rs.next()){	
				Goods goods = new Goods();
				goods.setGoodsname(rs.getString(1));
				goods.setFuser(rs.getString(2));
				goods.setPrice(rs.getInt(3)); 
				goods.setIntro(rs.getString(4));
				goods.setXx(rs.getString(5));
				goods.setFenlei(rs.getString(6));				
				GOODS.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return GOODS;
	}
	//用户添加商品信息
	public void add_goods(String goodsname,String fuser,String price,String intro,String xx,String fenlei,String tel){
		try {	
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(ADD_GOODS_SQL);
			ps.setString(1, goodsname);
			ps.setString(2, fuser);
			ps.setString(3, price);
			ps.setString(4,	intro);	
			ps.setString(5,	xx);	
			ps.setString(6,	fenlei);	
			ps.setString(7,	tel);	
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
	}
	
}

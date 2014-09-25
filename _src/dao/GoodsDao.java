package dao;

import java.util.ArrayList;

public interface GoodsDao {
	//通过商品分类查询商品
	public ArrayList query(String fenlei);
	//通过发布用户查询商品
	public ArrayList query_by_user(String email);
	//用户添加商品信息
	public void add_goods(String goodsname,String fuser,String price,String intro,String xx,String fenlei,String tel);
}

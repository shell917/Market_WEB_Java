package dao;

import java.util.ArrayList;

public interface GoodsDao {
	//ͨ����Ʒ�����ѯ��Ʒ
	public ArrayList query(String fenlei);
	//ͨ�������û���ѯ��Ʒ
	public ArrayList query_by_user(String email);
	//�û������Ʒ��Ϣ
	public void add_goods(String goodsname,String fuser,String price,String intro,String xx,String fenlei,String tel);
}

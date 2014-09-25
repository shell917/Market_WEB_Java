package dao;

import java.util.ArrayList;

public interface UserDao {
	//通过邮箱注册用户
	public void addUser(String name,String email,String password,String tel);
	//登陆会员
	public boolean login(String email,String password);
	//修改密码
	public boolean update(String email,String password,String new_password,String _password);
	//查询用户信息
	public ArrayList query_user(String email);
}

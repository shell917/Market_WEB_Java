package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entity.Goods;
import entity.User;

import util.JDBCutil;

public class UserDaoImpl implements UserDao{
	static String ADD_USER_SQL = "insert into User(name,email,password,tel) values(?,?,?,?)";
	static String QUERY_SQL = "select * from User where email = ?";
	static String UPDATE_SQL = "update user set password = ? where email = ?;";

	
	static Connection conn = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	static Statement st = null;
	
	
	
//	通过邮箱注册用户
	public void addUser(String name,String email,String password,String tel) {
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(ADD_USER_SQL);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4,	tel);	
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
	}
	
//	通过邮箱登陆
	public boolean login(String email,String password){
		boolean bool = false;
		try{
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(QUERY_SQL);
			ps.setString(1, email);
			rs = ps.executeQuery();
			String password_=null;
			while(rs.next()){
				password_ = rs.getString(3);
				if(password_.equals(password)){
						bool = true;
				}else{
					bool = false;
				}
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
		return bool;
	}
	
	//修改密码
	public boolean update(String email,String password,String new_password,String _password)
	{
		boolean bool = false;
		try{
			if(login(email,password)){
				conn = JDBCutil.getConnection();
				ps = conn.prepareStatement(UPDATE_SQL);
				ps.setString(2, email);
				ps.setString(1, new_password);
				ps.executeUpdate();
				bool = true;
			}
					
		}catch(SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
		return bool;	
	}
	
	//查询用户信息
	ArrayList USER = new ArrayList();
	public ArrayList query_user(String email){
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(QUERY_SQL);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while(rs.next()){	
				User user = new User();
				user.setEmail(rs.getString(2));
				user.setTel(rs.getString(3));
				USER.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return USER;
	}
	
}

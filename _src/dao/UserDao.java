package dao;

import java.util.ArrayList;

public interface UserDao {
	//ͨ������ע���û�
	public void addUser(String name,String email,String password,String tel);
	//��½��Ա
	public boolean login(String email,String password);
	//�޸�����
	public boolean update(String email,String password,String new_password,String _password);
	//��ѯ�û���Ϣ
	public ArrayList query_user(String email);
}

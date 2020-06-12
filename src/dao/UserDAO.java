package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.User;
/**
* 登録者を探すと入れるDAO
* @author プンヒマル
* @version 1.0.0
*/
public class UserDAO extends DAO {
	 /**
	 * searachメソッド
	 * 検索された登録者を返すメソッド
	 * @param　keyword,disp1,disp2
	 * @return User
	 */
	public List<User> search(String keyword,int disp1, int disp2) throws Exception {
		List<User> list=new ArrayList<>();

		Connection con=getConnection();
//		PreparedStatement st=null;
		PreparedStatement st=con.prepareStatement("select * from user where user_name like ?");
		st.setString(1, "%"+keyword+"%");

//		if(disp1==1){
//			if(disp2==1){
//				st=con.prepareStatement(
//					"select * from user where user_name like ? and staff_check=false");
//
//			}else if(disp2==2){
//				st=con.prepareStatement(
//						"select * from user where user_created like ?");
//			}else if(disp2==3){
//				st=con.prepareStatement(
//						"select u.* ,r.deadline from user u,rent_history r where user_name like ?"
//						+ " and deadline==1 or deadline==2 ");
//			}
//		}
//		else if(disp1==2){
//			if(disp2==1){
//				st=con.prepareStatement(
//						"select * from user where user_name like ? and valid_user=false");
//			}else if(disp2==2){
//				st=con.prepareStatement(
//						"select * from user where user_name like ? and valid_user=false");
//			}else{
//				st=con.prepareStatement(
//						"select * from user where user_name like ? and valid_user=false");
//			}
//
//		}else if(disp1==3){
//			if(disp2==1){
//				st=con.prepareStatement(
//						"select * from user where user_name like ? and valid_user=false");
//			}else if(disp2==2){
//				st=con.prepareStatement(
//						"select * from user where user_name like ? and valid_user=false");
//			}else{
//				st=con.prepareStatement(
//						"select * from user where user_name like ? and valid_user=false");
//			}
//		}

		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			User u=new User();
			u.setUser_id(rs.getInt("user_id"));
			u.setUser_name(rs.getString("user_name"));
			u.setUser_pass(rs.getString("user_pass"));
			u.setUser_birth(rs.getString("user_birth"));
			u.setSex(rs.getString("sex"));
			u.setUser_address(rs.getString("user_address"));
			u.setUser_mail(rs.getString("user_mail"));
			u.setUser_tel(rs.getString("user_tel"));
			u.setValid_user(rs.getBoolean("valid_user"));
			u.setUser_auth(rs.getBoolean("user_auth"));
			list.add(u);
		}
		st.close();
		con.close();

		return list;
	}
}

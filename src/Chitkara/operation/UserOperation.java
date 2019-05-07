/**
 * 
 */
/**
 * @author Muskan
 *
 */
package Chitkara.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Chitkara.Dao.UserDao;
import db.connection;

public class UserOperation{
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs= null;
	public static UserDao login(UserDao user){
		try {
			con=connection.getCon();
			stmt=con.prepareStatement("select * from user where uid=? and password=?");
			stmt.setString(1, user.getUid());
			stmt.setString(2,user.getPassword());
			rs=stmt.executeQuery();
			if(rs.next()) {
				user.setFirst_name(rs.getString("first_name"));
				user.setLast_name(rs.getString("last_name"));
				user.setId(rs.getInt("id"));
				user.setUser_type(rs.getString("user_type"));
			}
		 }catch(Exception e) {
			 e.printStackTrace();
		 }	
		return user;
	}
}
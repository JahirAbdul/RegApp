package com.javatpoint;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {

	public static boolean validate(String username,String password){
		boolean status=false;
		try{
			Class.forName("org.postgresql.Driver");
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/employee_details","postgres", "123");
			PreparedStatement ps=conn.prepareStatement("select * from v_usr_name where user_name=? and pass=?");
			ps.setString(1,username);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		}catch(Exception e){e.printStackTrace();}
		return status;
	}
}

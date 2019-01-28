package com.admin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.javatpoint.Product;

public class Admin {
	public static Connection conn() throws Exception {
		Class.forName("org.postgresql.Driver");
		return DriverManager.getConnection("jdbc:postgresql://localhost:5432/employee_details","postgres", "123");
	}

	public static int register(Product pa) {
		int flag = 0;
		try {
			PreparedStatement ps = conn().prepareStatement("INSERT INTO DETAILS(name,mail_Id,phone,organisation,city,date_of_creation) VALUES(?,?,?,?,?,current_date);");
			ps.setString(1, pa.getName());
			ps.setString(2, pa.getMail_Id());
			ps.setString(3, pa.getPhone());
			ps.setString(4, pa.getOrganisation());
			ps.setString(5, pa.getCity());
			flag = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}  
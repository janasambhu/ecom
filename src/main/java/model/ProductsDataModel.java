package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ProductsDataModel {

	static final String jdbc_driver = "com.mysql.jdbc.Driver";
	static final String db_url = "jdbc:mysql://localhost:3306/ecom";
	static final String user = "root";
	static final String pass = "";

	public boolean InsertProducts(Products p2) {
		Connection conn = null;
		Statement stmt = null;
		// Statement st = null;
		boolean b1 = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "insert into products(productname,productprice,productquantity,productdetails,productimage1,productimage2,productimage3,productimage4,sellerId,producttag) values('"
					+ p2.getProductname() + "','" + p2.getProductprice() + "','"
					+ p2.getProductquantity() + "','" + p2.getProductdetails() + "','" + p2.getProductimage1() + "','"
					+ p2.getProductimage2() + "','" + p2.getProductimage3() + "','" + p2.getProductimage4() + "','"
					+ p2.getSellerId() + "','"+p2.getProducttags()+"')";
			stmt.executeUpdate(sql);
			// rs.close();
			// st.close();
			stmt.close();
			conn.close();
			b1 = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return b1;
	}
}

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Payment_detailsDataModel {

	static final String jdbc_driver = "com.mysql.jdbc.Driver";
	static final String db_url = "jdbc:mysql://localhost:3306/ecom";
	static final String user = "root";
	static final String pass = "";

	public boolean InsertPayment_details(Payment_details p) {
		Connection conn = null;
		Statement stmt = null;
		// Statement st = null;
		boolean b=false;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "insert into payment_details (customerId,cardnumber,cardtype,expirydate,cardholdername) values('"
					+ p.getCustomerId() + "','" + p.getCardnumber() + "','" + p.getCardtype() + "','"
					+ p.getExpirydate() + "','" + p.getCardholdername() + "')";
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
			b=true;
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return(b);
	}
}

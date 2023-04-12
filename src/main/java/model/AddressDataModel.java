package model;
import java.sql.*;
import java.util.ArrayList;
public class AddressDataModel {
	static final String jdbc_driver="com.mysql.jdbc.Driver";
	static final String db_url="jdbc:mysql://localhost:3306/ecom";
	static final String user="root";
	static final String pass="";
	
	public boolean InsertNewAddress(Address a) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			// stmt.execute("alter table customers AUTO_INCREMENT=1001");
			String sql = "insert into delivery_address(customerId,line1,city,district,state,pincode,landmark,phno) values('"
					+ a.getCustomerId() + "','" + a.getLine1() + "','" + a.getCity() + "','" + a.getDistrict()
					+ "','" + a.getState() + "','" + a.getPincode() + "','" + a.getLandmark() + "','"+ a.getPhno() +"')";
			stmt.executeUpdate(sql);
			
			stmt.close();
			conn.close();
			b = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return(b);
	}
	public boolean DeleteAddress(String did) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			// stmt.execute("alter table customers AUTO_INCREMENT=1001");
			String sql = "delete from delivery_address where deliveryaddressId='" + did + "'";
			stmt.executeUpdate(sql);
			
			stmt.close();
			conn.close();
			b = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return(b);
	}
	public boolean UpdateAddress(Address a) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "update delivery_address set customerId='"
					+ a.getCustomerId() + "', line1='" + a.getLine1() + "', city='"
					+ a.getCity() + "', district='" + a.getDistrict() + "', state='"
					+ a.getState() + "', pincode='" + a.getPincode() + "', landmark='"
					+ a.getLandmark() + "', phno='" + a.getPhno() + "' where deliveryaddressId='"
					+ a.getDeliveryaddressId() + "'";
			
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
			b = true;
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (b);
	}
	
	public Address selectAddressesData(String cid) {
		Connection conn = null;
		Statement stmt = null;
		Address a = new Address();
		ArrayList<String> set = new ArrayList<String>();
		ArrayList<String> set1 = new ArrayList<String>();
		ArrayList<String> set2 = new ArrayList<String>();
		ArrayList<String> set3 = new ArrayList<String>();
		ArrayList<String> set4 = new ArrayList<String>();
		ArrayList<String> set5 = new ArrayList<String>();
		ArrayList<String> set6 = new ArrayList<String>();
		ArrayList<String> set7 = new ArrayList<String>();
		ArrayList<String> set8 = new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from delivery_address where customerId='"+cid+"'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				set.add(rs.getString("deliveryaddressId"));
				set1.add(rs.getString("customerId"));
				set2.add(rs.getString("line1"));
				set3.add(rs.getString("city"));
				set4.add(rs.getString("district"));
				set5.add(rs.getString("state"));
				set6.add(rs.getString("pincode"));
				set7.add(rs.getString("landmark"));
				set8.add(rs.getString("phno"));
			}
			stmt.close();
			conn.close();
			// System.out.println(set);
			a.setCdeliveryaddressId(set);
			a.setCcustomerId(set1);
			a.setCline1(set2);
			a.setCcity(set3);
			a.setCdistrict(set4);
			a.setCstate(set5);
			a.setCpincode(set6);
			a.setClandmark(set7);
			a.setCphno(set8);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (a);
	}
	
	
	public Address selectAddressData(String did) {
		Connection conn = null;
		Statement stmt = null;
		Address a = new Address();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from delivery_address where deliveryaddressId='"+did+"'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				a.setDeliveryaddressId(rs.getString("deliveryaddressId"));
				a.setCustomerId(rs.getString("customerId"));
				a.setLine1(rs.getString("line1"));
				a.setCity(rs.getString("city"));
				a.setDistrict(rs.getString("district"));
				a.setState(rs.getString("state"));
				a.setPincode(rs.getString("pincode"));
				a.setLandmark(rs.getString("landmark"));
				a.setPhno(rs.getString("phno"));
			}
			stmt.close();
			conn.close();
			// System.out.println(set);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (a);
	}
	
	
}

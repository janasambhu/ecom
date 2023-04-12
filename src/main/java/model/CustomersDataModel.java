package model;

import java.sql.*;
import java.util.ArrayList;

public class CustomersDataModel {
	static final String jdbc_driver = "com.mysql.jdbc.Driver";
	static final String db_url = "jdbc:mysql://localhost:3306/ecom";
	static final String user = "root";
	static final String pass = "";

	public boolean InsertCustomers(Customers c1) {
		Connection conn = null;
		Statement stmt = null;
		boolean b1 = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			// stmt.execute("alter table customers AUTO_INCREMENT=1001");
			String sql = "insert into customers(firstname,lastname,phno,email,pwd,dob,gender) values('"
					+ c1.getFirstname() + "','" + c1.getLastname() + "','" + c1.getPhno() + "','" + c1.getEmail()
					+ "','" + c1.getPwd() + "','" + c1.getDob() + "','" + c1.getGender() + "')";
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
			// System.out.println("data inserted successful");
			b1 = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return b1;
	}

	public Customers selectCustomersData(String phone, String pwd) {
		Connection conn = null;
		Statement stmt = null;
		Customers c = new Customers();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from customers where phno='" + phone + "' and pwd='" + pwd + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				c.setCustomerId(rs.getInt("customerId"));
				c.setFirstname(rs.getString("firstname"));
				c.setLastname(rs.getString("lastname"));
				c.setPhno(rs.getString("phno"));
				c.setEmail(rs.getString("email"));
				c.setPwd(rs.getString("pwd"));
				c.setDob(rs.getString("dob"));
				c.setGender(rs.getString("gender"));
			}
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (c);
	}

	public Customers selectCustomerDetail(String cid) {
		Connection conn = null;
		Statement stmt = null;
		Customers c1 = new Customers();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from customers where customerId='" + cid + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				c1.setCustomerId(rs.getInt("customerId"));
				c1.setFirstname(rs.getString("firstname"));
				c1.setLastname(rs.getString("lastname"));
				c1.setPhno(rs.getString("phno"));
				c1.setEmail(rs.getString("email"));
				c1.setPwd(rs.getString("pwd"));
				c1.setDob(rs.getString("dob"));
				c1.setGender(rs.getString("gender"));
			}
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (c1);
	}

	public Products selectProductDetail(String pid) {
		Connection conn = null;
		Statement stmt = null;
		Products p = new Products();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where productId='" + pid + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				p.setProductId(rs.getInt("productId"));
				p.setProductname(rs.getString("productname"));
				p.setProductprice(rs.getString("productprice"));
				p.setProductquantity(rs.getString("productquantity"));
				p.setProductdetails(rs.getString("productdetails"));
				p.setProductimage1(rs.getString("productimage1"));
				p.setProductimage2(rs.getString("productimage2"));
				p.setProductimage3(rs.getString("productimage3"));
				p.setProductimage4(rs.getString("productimage4"));
			}
			stmt.close();
			conn.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (p);
	}

	public Products selectProductsData() {
		Connection conn = null;
		Statement stmt = null;
		Products p = new Products();
		ArrayList<String> set = new ArrayList<String>();
		ArrayList<String> set1 = new ArrayList<String>();
		ArrayList<String> set3 = new ArrayList<String>();
		ArrayList<String> set4 = new ArrayList<String>();
		ArrayList<String> set5 = new ArrayList<String>();
		ArrayList<String> set6 = new ArrayList<String>();
		ArrayList<String> set7 = new ArrayList<String>();
		ArrayList<String> set8 = new ArrayList<String>();
		ArrayList<String> set9 = new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products";
			ResultSet rs = stmt.executeQuery(sql);
			int i=0;
			while (rs.next()) {
				if(i==30) {
					break;
				}
				set.add(rs.getString("productname"));
				set1.add(rs.getString("productprice"));
				set3.add(rs.getString("productquantity"));
				set4.add(rs.getString("productdetails"));
				set5.add(rs.getString("productimage1"));
				set6.add(rs.getString("productimage2"));
				set7.add(rs.getString("productimage3"));
				set8.add(rs.getString("productimage4"));
				set9.add(rs.getString("productId"));
				i++;
			}
			stmt.close();
			conn.close();
			// System.out.println(set);
			p.setPname(set);
			p.setPprice(set1);
			p.setPquantity(set3);
			p.setPdetails(set4);
			p.setPimage1(set5);
			p.setPimage2(set6);
			p.setPimage3(set7);
			p.setPimage4(set8);
			p.setPid(set9);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (p);
	}

	public boolean UpdateCustomerDetail(Customers c) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "update customers set firstname='" + c.getFirstname() + "', lastname='" + c.getLastname()
					+ "', phno='" + c.getPhno() + "', email='" + c.getEmail() + "', pwd='" + c.getPwd() + "', dob='"
					+ c.getDob() + "',gender='" + c.getGender() + "' where customerId='" + c.getCustomerId() + "'";
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

	public Products Productbyptype(String pname, String pid) {
		Connection conn = null;
		Statement stmt = null;
		Products p = new Products();
		ArrayList<String> set = new ArrayList<String>();
		ArrayList<String> set1 = new ArrayList<String>();
		ArrayList<String> set3 = new ArrayList<String>();
		ArrayList<String> set4 = new ArrayList<String>();
		ArrayList<String> set5 = new ArrayList<String>();
		ArrayList<String> set6 = new ArrayList<String>();
		ArrayList<String> set7 = new ArrayList<String>();
		ArrayList<String> set8 = new ArrayList<String>();
		ArrayList<String> set9 = new ArrayList<String>();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where productId!='" + pid
					+ "' and (productname like '%" + pname + "%' or productdetails like '%" + pname
					+ "%' or producttag like '%" + pname + "%')";
			ResultSet rs = stmt.executeQuery(sql);
			int i = 0;
			while (rs.next()) {
				if (i == 8) {
					break;
				}
				set.add(rs.getString("productname"));
				set1.add(rs.getString("productprice"));
				set3.add(rs.getString("productquantity"));
				set4.add(rs.getString("productdetails"));
				set5.add(rs.getString("productimage1"));
				set6.add(rs.getString("productimage2"));
				set7.add(rs.getString("productimage3"));
				set8.add(rs.getString("productimage4"));
				set9.add(rs.getString("productId"));
				i++;
			}
			stmt.close();
			conn.close();
//					System.out.println(set);
//					System.out.println(set1);
//					System.out.println(set2);
//					System.out.println(set3);
//					System.out.println(set4);
//					System.out.println(set5);
			p.setPname(set);
			p.setPprice(set1);
			p.setPquantity(set3);
			p.setPdetails(set4);
			p.setPimage1(set5);
			p.setPimage2(set6);
			p.setPimage3(set7);
			p.setPimage4(set8);
			p.setPid(set9);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (p);
	}

	public Products sortbyptype(String ptype) {
		Connection conn = null;
		Statement stmt = null;
		Products p = new Products();
		ArrayList<String> set = new ArrayList<String>();
		ArrayList<String> set1 = new ArrayList<String>();
		ArrayList<String> set3 = new ArrayList<String>();
		ArrayList<String> set4 = new ArrayList<String>();
		ArrayList<String> set5 = new ArrayList<String>();
		ArrayList<String> set6 = new ArrayList<String>();
		ArrayList<String> set7 = new ArrayList<String>();
		ArrayList<String> set8 = new ArrayList<String>();
		ArrayList<String> set9 = new ArrayList<String>();
		// System.out.println(ptype);
		String s = "0";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				set.add(rs.getString("productname"));
				set1.add(rs.getString("productprice"));
				set3.add(rs.getString("productquantity"));
				set4.add(rs.getString("productdetails"));
				set5.add(rs.getString("productimage1"));
				set6.add(rs.getString("productimage2"));
				set7.add(rs.getString("productimage3"));
				set8.add(rs.getString("productimage4"));
				set9.add(rs.getString("productId"));
			}
			stmt.close();
			conn.close();
//					System.out.println(set);
//					System.out.println(set1);
//					System.out.println(set2);
//					System.out.println(set3);
//					System.out.println(set4);
//					System.out.println(set5);
			p.setPname(set);
			p.setPprice(set1);
			p.setPquantity(set3);
			p.setPdetails(set4);
			p.setPimage1(set5);
			p.setPimage2(set6);
			p.setPimage3(set7);
			p.setPimage4(set8);
			p.setPid(set9);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}

		return (p);
	}
	
	public Products SearchCustomerProduct(String sarch) {
		Connection conn = null;
		Statement stmt = null;
		Products p = new Products();
		ArrayList<String> set = new ArrayList<String>();
		ArrayList<String> set1 = new ArrayList<String>();
		ArrayList<String> set3 = new ArrayList<String>();
		ArrayList<String> set4 = new ArrayList<String>();
		ArrayList<String> set5 = new ArrayList<String>();
		ArrayList<String> set6 = new ArrayList<String>();
		ArrayList<String> set7 = new ArrayList<String>();
		ArrayList<String> set8 = new ArrayList<String>();
		ArrayList<String> set9 = new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where productname like '%"+sarch+"%' or productdetails like '%"+sarch+"%' or producttag like '%"+sarch+"%'";
			ResultSet rs = stmt.executeQuery(sql);
			int i=0;
			while (rs.next()) {
				if(i==30) {
					break;
				}
				set.add(rs.getString("productname"));
				set1.add(rs.getString("productprice"));
				set3.add(rs.getString("productquantity"));
				set4.add(rs.getString("productdetails"));
				set5.add(rs.getString("productimage1"));
				set6.add(rs.getString("productimage2"));
				set7.add(rs.getString("productimage3"));
				set8.add(rs.getString("productimage4"));
				set9.add(rs.getString("productId"));
				i++;
			}
			stmt.close();
			conn.close();
			// System.out.println(set);
			p.setPname(set);
			p.setPprice(set1);
			p.setPquantity(set3);
			p.setPdetails(set4);
			p.setPimage1(set5);
			p.setPimage2(set6);
			p.setPimage3(set7);
			p.setPimage4(set8);
			p.setPid(set9);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (p);
	}

}

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SellersDataModel {

	static final String jdbc_driver = "com.mysql.jdbc.Driver";
	static final String db_url = "jdbc:mysql://localhost:3306/ecom";
	static final String user = "root";
	static final String pass = "";

	public boolean InsertSellers(Sellers s) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "insert into sellers (sellername,enterprisename,email,phno,pwd,address) values	('"
					+ s.getSellername() + "','" + s.getEnterprisename() + "','" + s.getEmail() + "','" + s.getPhno()
					+ "','" + s.getPwd() + "','" + s.getAddress() + "')";
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
		return b;
	}

	// for deleting product

	public boolean DeleteProduct(String pid, String sid) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "delete from products where productId='" + pid + "' and sellerId='" + sid + "'";
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
		return b;
	}

	public Sellers selectSellersData(String phone, String pwd) {
		Connection conn = null;
		Statement stmt = null;
		Sellers c = new Sellers();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from sellers where phno='" + phone + "' and pwd='" + pwd + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				c.setSellerId(rs.getInt("sellerId"));
				c.setSellername(rs.getString("sellername"));
				c.setPhno(rs.getString("phno"));
				c.setEmail(rs.getString("email"));
				c.setPwd(rs.getString("pwd"));
				c.setEnterprisename(rs.getString("enterprisename"));
				c.setAddress(rs.getString("address"));
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

	public Sellers selectSeller(String sid) {
		Connection conn = null;
		Statement stmt = null;
		Sellers c = new Sellers();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from sellers where sellerId='" + sid + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				c.setSellerId(rs.getInt("sellerId"));
				c.setSellername(rs.getString("sellername"));
				c.setPhno(rs.getString("phno"));
				c.setEmail(rs.getString("email"));
				c.setPwd(rs.getString("pwd"));
				c.setEnterprisename(rs.getString("enterprisename"));
				c.setAddress(rs.getString("address"));
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

	public Products selectProductsData(int sellerid) {
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
		// System.out.println(sellerid);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where sellerId='" + sellerid + "'";
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

	// for selecting product data using sellerid string

	public Products selectSellerProductsData(String sellerid) {
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
			String sql = "select * from products where sellerId='" + sellerid + "'";
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

	public Products sortbyptype(String ptype, String sid) {
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
		// System.out.println(sid);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where sellerId='" + sid + "'";
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

	public Products SellerProductDetail(String pid, String sid) {
		Connection conn = null;
		Statement stmt = null;
		Products p = new Products();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where productId='" + pid + "' and sellerId='" + sid + "'";
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
				p.setSellerId(rs.getString("sellerId"));
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

	public boolean UpdateSellerProduct(Products p) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "update products set productname='" + p.getProductname() + "', productprice='"
					+ p.getProductprice() + "', productquantity='" + p.getProductquantity() + "', productdetails='"
					+ p.getProductdetails() + "', productimage1='" + p.getProductimage1() + "', productimage2='"
					+ p.getProductimage2() + "', productimage3='" + p.getProductimage3() + "', productimage4='"
					+ p.getProductimage4() + "',producttag='" + p.getProducttags() + "' where productId='"
					+ p.getProductId() + "' and sellerId='" + p.getSellerId() + "'";
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

	public boolean UpdateSellerDetail(Sellers s) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "update sellers set sellername='" + s.getSellername() + "', enterprisename='"
					+ s.getEnterprisename() + "', email='" + s.getEmail() + "', phno='" + s.getPhno() + "', pwd='"
					+ s.getPwd() + "', address='" + s.getAddress() + "' where sellerId='" + s.getSellerId() + "'";
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

	public Products ProductByType(String pname, String sid, String pid) {
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
		// System.out.println("Product id "+pid);
		// System.out.println("seller id "+sid);
		// String pid1="1";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where sellerId='" + sid + "' and productId!='" + pid
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
		// System.out.println(ptype);
		return (p);
	}

	public Products selectSellerProductsImage(String sid, String pid) {
		Connection conn = null;
		Statement stmt = null;
		Products p = new Products();
		ArrayList<String> set = new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from products where productId='" + pid + "' and sellerId='" + sid + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				set.add(rs.getString("productimage1"));
				set.add(rs.getString("productimage2"));
				set.add(rs.getString("productimage3"));
				set.add(rs.getString("productimage4"));
			}
			stmt.close();
			conn.close();
			// System.out.println(set);
			p.setPimage1(set);
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
	
	public Products SearchSellerProduct(String sid, String sarch) {
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
			String sql = "select * from products where sellerId='" + sid + "' and (productname like '%"+sarch+"%' or productdetails like '%"+sarch+"%' or producttag like '%"+sarch+"%')";
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

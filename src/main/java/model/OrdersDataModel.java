package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class OrdersDataModel {

	static final String jdbc_driver = "com.mysql.jdbc.Driver";
	static final String db_url = "jdbc:mysql://localhost:3306/ecom";
	static final String user = "root";
	static final String pass = "";

	public boolean InsertOrders(Orders o) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "insert into orders(customerId,productId,quantity,orderdate,deliverydate,paymenttype,deliveryaddressId,review) values('"
					+ o.getCustomerId() + "','" + o.getProductId() + "','" + o.getQuantity() + "','" + o.getOrderdate()
					+ "','" + o.getDeliverydate() + "','" + o.getPaymenttype() + "','" + o.getDeliveryaddressId()
					+ "','" + o.getReview() + "')";
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
		return (b);
	}

	public boolean DeletefromOrder(String oid, String cid, String pid){
		
		Connection conn= null;
		Statement stmt= null;
		boolean b1=false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection(db_url, user, pass);
			stmt= conn.createStatement();
		    String sql="delete from orders where orderId='"+oid+"' and customerId='"+cid+"' and productId='"+pid+"'";
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
			b1=true;
		}
		
		catch(SQLException se){
			
			se.printStackTrace();
			
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			
			}
		return b1;
	}
	
	
	public boolean UpdateProductQuantity(String pid, String pquan) {
		Connection conn = null;
		Statement stmt = null;
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "update products set productquantity=productquantity-'" + pquan + "' where productId='" + pid
					+ "'";
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

	public Orders selectOrdersData(String cid) {
		Connection conn = null;
		Statement stmt = null;
		Orders o = new Orders();
		ArrayList<String> set = new ArrayList<String>();
		ArrayList<String> set1 = new ArrayList<String>();
		ArrayList<String> set2 = new ArrayList<String>();
		ArrayList<String> set3 = new ArrayList<String>();
		ArrayList<String> set4 = new ArrayList<String>();
		ArrayList<String> set5 = new ArrayList<String>();
		ArrayList<String> set6 = new ArrayList<String>();
		ArrayList<String> set7 = new ArrayList<String>();
		ArrayList<String> set8 = new ArrayList<String>();
		ArrayList<String> set9 = new ArrayList<String>();
		ArrayList<String> set10 = new ArrayList<String>();
		ArrayList<String> set11 = new ArrayList<String>();
		ArrayList<String> set12 = new ArrayList<String>();
		ArrayList<String> set13 = new ArrayList<String>();
		ArrayList<String> set14 = new ArrayList<String>();
		ArrayList<String> set15 = new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, user, pass);
			stmt = conn.createStatement();
			String sql = "select * from orders o inner join products p on o.productId=p.productId inner join delivery_address d on o.deliveryaddressId=d.deliveryaddressId where o.customerId='"
					+ cid + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				set.add(rs.getString("orderId"));
				set1.add(rs.getString("productId"));
				set2.add(rs.getString("quantity"));
				set3.add(rs.getString("orderdate"));
				set4.add(rs.getString("deliverydate"));
				set5.add(rs.getString("paymenttype"));
				set6.add(rs.getString("productimage1"));
				set7.add(rs.getString("line1"));
				set8.add(rs.getString("city"));
				set9.add(rs.getString("district"));
				set10.add(rs.getString("state"));
				set11.add(rs.getString("pincode"));
				set12.add(rs.getString("landmark"));
				set13.add(rs.getString("phno"));
				set14.add(rs.getString("productname"));
				set15.add(rs.getString("productprice"));
			} // customerId='"+cid+"' "select * from products left join cart on
				// cart.productId=products.productId where cart.customerId='"+cid+"'";
			stmt.close();
			conn.close();
			o.setOid(set);
			o.setPid(set1);
			o.setPname(set14);
			o.setPprice(set15);
			o.setOquan(set2);
			o.setOdate(set3);
			o.setDdate(set4);
			o.setPaytype(set5);
			o.setPimg1(set6);
			o.setLine1(set7);
			o.setCity(set8);
			o.setDist(set9);
			o.setState(set10);
			o.setPin(set11);
			o.setLmark(set12);
			o.setPhno(set13);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		return (o);
	}
}

package model;
import java.sql.*;
import java.util.ArrayList;

public class CartDataModel {
	static final String jdbc_driver="com.mysql.jdbc.Driver";
	static final String db_url="jdbc:mysql://localhost:3306/ecom";
	static final String user="root";
	static final String pass="";
	
		public boolean InsertCart(Cart c){
			
			Connection conn= null;
			Statement stmt= null;
			boolean b=false;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection(db_url, user, pass);
				stmt= conn.createStatement();
			    String sql= "insert into cart values('"+c.getCustomerId()+"','"+c.getProductId()+"')";
				stmt.executeUpdate(sql);
				stmt.close();
				conn.close();
				b=true;
			}
			
			catch(SQLException se){
				
				se.printStackTrace();
				
			}
			
			catch(Exception e){
				e.printStackTrace();
			}
			
			finally{
				
				}
			return b;
		}
		
			public boolean Deletefromcart(String cid, String pid){
			
			Connection conn= null;
			Statement stmt= null;
			boolean b1=false;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection(db_url, user, pass);
				stmt= conn.createStatement();
			    String sql="delete from cart where customerId='"+cid+"' and productId='"+pid+"'";
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
		
		
		
		public Cart selectProductsData(String cid) {
			Connection conn= null;
			Statement stmt= null;
			Cart p=new Cart();
			ArrayList<String> set=new ArrayList<String>();
			ArrayList<String> set1=new ArrayList<String>();			
			ArrayList<String> set3=new ArrayList<String>();
			ArrayList<String> set4=new ArrayList<String>();
			ArrayList<String> set5=new ArrayList<String>();
			ArrayList<String> set6=new ArrayList<String>();
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection(db_url, user, pass);
				stmt= conn.createStatement();
			     String sql= "select * from products left join cart on cart.productId=products.productId where cart.customerId='"+cid+"'";
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()) {
					set.add(rs.getString("productname"));
					set1.add(rs.getString("productprice"));					
					set3.add(rs.getString("productquantity"));
					set4.add(rs.getString("productdetails"));
					set5.add(rs.getString("productimage1"));
					set6.add(rs.getString("productId"));
				}//customerId='"+cid+"'  "select * from products left join cart on cart.productId=products.productId where cart.customerId='"+cid+"'";
				stmt.close();
				conn.close();
				p.setPname(set);
				p.setPprice(set1);				
				p.setPquantity(set3);
				p.setPdetails(set4);
				p.setPimage(set5);
				p.setPid(set6);
				
				}
			catch(SQLException se){
				se.printStackTrace();
			}
			
			catch(Exception e){
				e.printStackTrace();
			}
			
			finally{

				}
			return(p);
		}
	}

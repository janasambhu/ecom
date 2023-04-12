package model;
import java.sql.*;

public class Delivery_addressDataModel {

	static final String jdbc_driver="com.mysql.jdbc.Driver";
	static final String db_url="jdbc:mysql://localhost:3306/ecom";
	static final String user="root";
	static final String pass="";
	
		public void InsertDelivery_address(Delivery_address d) {
			Connection conn= null;
			Statement stmt= null;
			//Statement st = null;
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection(db_url, user, pass);
				stmt= conn.createStatement();
	            /*  st= conn.createStatement(); 
	            String sql1= "select max(slno) from patient";
	            ResultSet rs= st.executeQuery(sql1);

	            while(rs.next()){
	            	
	            
			    sl= rs.getInt("max(slno)");
			    sl++;
			    
	            }
	            */
			     String sql= "insert into delivery_address values('"+d.getDeliveryaddressId()+"','"+d.getCustomerId()+"','"+d.getLine1()+
			    "','"+d.getCity()+"','"+d.getDistrict()+"','"+d.getState()+"','"+d.getPincode()+"','"+d.getLandmark()+"','"+d.getPhno()+"')";
				stmt.executeUpdate(sql);
				//rs.close();
				//st.close();
				stmt.close();
				conn.close();
				
				}
			catch(SQLException se){
				se.printStackTrace();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			finally{

				}
		}
	}


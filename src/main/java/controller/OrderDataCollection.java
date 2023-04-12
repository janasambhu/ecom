package controller;
import model.*;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Calendar; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OrderDataCollection")
public class OrderDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
		 SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy"); 
		 Calendar cal = Calendar.getInstance(); 
		 String odate=sdf.format(cal.getTime());
		cal.add(Calendar.DAY_OF_MONTH, 7);
		String ddate = sdf.format(cal.getTime());
		//System.out.println(odate);
		//System.out.println(ddate);
		String pquan=request.getParameter("pquan");
		String review=request.getParameter("review");
		String paymenttype=request.getParameter("paymenttype");
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		String pid=request.getParameter("pid");
		String did=request.getParameter("did");
//		System.out.println(pquan);
//		System.out.println(review);
//		System.out.println(paymenttype);
//		System.out.println(cid);
//		System.out.println(pid);
//		System.out.println(did);
		String p="cash";
		Orders o=new Orders();
		o.setCustomerId(cid);
		o.setProductId(pid);
		o.setDeliveryaddressId(did);
		o.setQuantity(pquan);
		o.setOrderdate(odate);
		o.setDeliverydate(ddate);
		o.setPaymenttype(paymenttype);
		o.setReview(review);
		OrdersDataModel odm=new OrdersDataModel();
		//System.out.println("Everything ok");
		if(paymenttype.equals(p)) {
		boolean b=odm.InsertOrders(o);
		boolean b1=odm.UpdateProductQuantity(pid, pquan);
		Orders o1=odm.selectOrdersData(cid);
			request.setAttribute("cid",cid);
			request.setAttribute("cname",cname);
			request.setAttribute("orders",o1);
			request.getRequestDispatcher("/websites/my order.jsp").forward(request, response);	
			//System.out.println("Hello working....");
		}else {
			boolean b2=odm.InsertOrders(o);
			boolean b3=odm.UpdateProductQuantity(pid, pquan);
				request.setAttribute("cid",cid);
				request.setAttribute("cname",cname);
				request.getRequestDispatcher("/websites/payment detail.jsp").forward(request, response);			
		}	
		
	}
}

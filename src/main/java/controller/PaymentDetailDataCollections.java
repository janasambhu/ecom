package controller;
import model.*;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentDetailDataCollections")
public class PaymentDetailDataCollections extends HttpServlet {
	private static final long serialVersionUID = 1L;    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ctype=request.getParameter("ctype");
		String cnum=request.getParameter("cnum");
		String expdate=request.getParameter("expdate");
		String cardname=request.getParameter("cardname");
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		Payment_details pd=new Payment_details();
		Payment_detailsDataModel pdm=new Payment_detailsDataModel();
		OrdersDataModel odm=new OrdersDataModel();
		pd.setCustomerId(cid);
		pd.setCardholdername(cardname);
		pd.setCardnumber(cnum);
		pd.setCardtype(ctype);
		pd.setExpirydate(expdate);
		boolean b=pdm.InsertPayment_details(pd);
		Orders o=odm.selectOrdersData(cid);
		//ArrayList<String> set=o.getOdate();
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.setAttribute("orders",o);
		request.getRequestDispatcher("/websites/my order.jsp").forward(request, response);	
	}

}

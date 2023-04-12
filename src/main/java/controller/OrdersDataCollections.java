package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Orders;
import model.OrdersDataModel;

@WebServlet("/OrdersDataCollections")
public class OrdersDataCollections extends HttpServlet {
	private static final long serialVersionUID = 1L;   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("s11");
		String cname=request.getParameter("s12");
		OrdersDataModel odm=new OrdersDataModel();
		Orders o=odm.selectOrdersData(cid);
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.setAttribute("orders",o);
		request.getRequestDispatcher("/websites/my order.jsp").forward(request, response);
	}

}

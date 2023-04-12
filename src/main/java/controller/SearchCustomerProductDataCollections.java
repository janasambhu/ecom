package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SearchCustomerProductDataCollections")
public class SearchCustomerProductDataCollections extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sarch=request.getParameter("sarch");
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		//System.out.println("Search is "+sarch);
		//System.out.println("customer id is "+cid);
		//System.out.println("Customer name is "+cname);
		CustomersDataModel cdm=new CustomersDataModel();
		Products p=cdm.SearchCustomerProduct(sarch);
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.setAttribute("products1",p);
		request.getRequestDispatcher("/websites/sort customer product.jsp").forward(request, response);
	}

}

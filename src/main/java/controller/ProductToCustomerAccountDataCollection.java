package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductToCustomerAccountDataCollection")
public class ProductToCustomerAccountDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("Hello sir");
		String cname=request.getParameter("s11");
		String cid=request.getParameter("s12");
		CustomersDataModel cdm=new CustomersDataModel();
		Customers c=cdm.selectCustomerDetail(cid);
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.setAttribute("customer",c);
		request.getRequestDispatcher("/websites/customer update details.jsp").forward(request, response);
	}

}

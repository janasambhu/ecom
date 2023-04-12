package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerDetailToProductsDataCollection")
public class CustomerDetailToProductsDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("Hello sambhu");
		String cid=request.getParameter("s11");
		String cname=request.getParameter("s12");
		//System.out.println(cid);
		//System.out.println(cname);
		CustomersDataModel cdm=new CustomersDataModel();
		Products p=cdm.selectProductsData();
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.setAttribute("products1",p);
		request.getRequestDispatcher("/websites/sort customer product.jsp").forward(request, response);
	}

}

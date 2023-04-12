package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartToProductDataCollection")
public class CartToProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("c-id");
		String cname=request.getParameter("cname");
		//System.out.println(cid);
		CustomersDataModel cdm=new CustomersDataModel();
		Products pro=cdm.selectProductsData();
		request.setAttribute("products1", pro);
		request.setAttribute("cid", cid);
		request.setAttribute("cname",cname);
		request.getRequestDispatcher("/websites/sort customer product.jsp").forward(request, response);
	}

}

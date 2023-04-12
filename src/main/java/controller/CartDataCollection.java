package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartDataCollection")
public class CartDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("c-id");
		String cname=request.getParameter("cname");
		CartDataModel cdm=new CartDataModel();
		Cart c=cdm.selectProductsData(cid);
		request.setAttribute("products",c);
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.getRequestDispatcher("/websites/cart.jsp").forward(request, response);
		//System.out.println(cid);		
		//System.out.println("Hello its working");
		
	}
}

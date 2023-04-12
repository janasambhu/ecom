package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Products;
import model.SellersDataModel;

@WebServlet("/DetailToSellerProductDataCollection")
public class DetailToSellerProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("s11");
		String sname=request.getParameter("s13");
		//System.out.println("Seller Id is "+sid);
		//System.out.println("Seller Name is "+sname);
		HttpSession session=request.getSession(false);
		if(session==null) {
			request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		}else {
		SellersDataModel sdm=new SellersDataModel();
		Products p2=sdm.selectSellerProductsData(sid);
		request.setAttribute("sid",sid);
		request.setAttribute("sname",sname);
		request.setAttribute("Products",p2);
		request.getRequestDispatcher("/websites/sort seller product.jsp").forward(request, response);
	}
	}
}

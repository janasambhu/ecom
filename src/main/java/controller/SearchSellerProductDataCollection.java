package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SearchSellerProductDataCollection")
public class SearchSellerProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session=request.getSession(false);
			if(session==null) {
				//out.println("Session already time out...");
				request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
			}else {
		String sarch=request.getParameter("sarch");
		String sid=request.getParameter("sid");
		String sname=request.getParameter("sname");
		SellersDataModel sdm=new SellersDataModel();
		Products p=sdm.SearchSellerProduct(sid, sarch);
		request.setAttribute("sid",sid);
		request.setAttribute("sname",sname);
		request.setAttribute("Products",p);
		request.getRequestDispatcher("/websites/sort seller product.jsp").forward(request, response);
//		System.out.println(sarch);
//		System.out.println(sid);
//		System.out.println(sname);
	}
	}
}

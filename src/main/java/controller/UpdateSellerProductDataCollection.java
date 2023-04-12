package controller;

import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateSellerProductDataCollection")
public class UpdateSellerProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("s11");
		String sname = request.getParameter("s13");
		String pid = request.getParameter("s12");
		// System.out.println(sid);
		// System.out.println(sname);
		// System.out.println(pid);
		HttpSession session=request.getSession(false);
		if(session==null) {
			//out.println("Session already time out...");
			request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		}else {
		SellersDataModel sdm = new SellersDataModel();
		Products p = sdm.SellerProductDetail(pid, sid);
		// request.setAttribute("sid", sid);
		request.setAttribute("sname", sname);
		// request.setAttribute("pid", pid);
		request.setAttribute("product", p);
		request.getRequestDispatcher("/websites/seller update product.jsp").forward(request, response);
	}
	}
}

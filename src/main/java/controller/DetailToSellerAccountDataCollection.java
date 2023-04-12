package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DetailToSellerAccountDataCollection")
public class DetailToSellerAccountDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("s11");
		String sname=request.getParameter("s13");
		//System.out.println("Seller id is "+sid);
		//System.out.println("Seller name is "+sname);
		HttpSession session=request.getSession(false);
		if(session==null) {
			request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		}else {
		SellersDataModel sdm=new SellersDataModel();
		Sellers s=sdm.selectSeller(sid);
		request.setAttribute("sid",sid);
		request.setAttribute("sname",sname);
		request.setAttribute("seller",s);
		request.getRequestDispatcher("/websites/seller update details.jsp").forward(request, response);
	}
	}
}

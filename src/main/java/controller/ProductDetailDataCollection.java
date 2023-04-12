package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ProductDetailDataCollection")
public class ProductDetailDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=request.getParameter("s12");
		String sid=request.getParameter("s11");
		String sname=request.getParameter("s13");
		HttpSession session=request.getSession(false);
		if(session==null) {
			//out.println("Session already time out...");
			request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		}else {
		SellersDataModel sdm=new SellersDataModel();
		//System.out.println("seller name is "+sname);
		//System.out.println("product id is "+pid);
		Products p=sdm.SellerProductDetail(pid, sid);
		String pname=p.getProductname();
		//System.out.println(pid);
		
		Products p1=sdm.ProductByType(pname,sid,pid);
		request.setAttribute("sname", sname);
		request.setAttribute("product", p);
		request.setAttribute("products", p1);
		request.getRequestDispatcher("/websites/seller product detail.jsp").forward(request, response);
	}
	}
}

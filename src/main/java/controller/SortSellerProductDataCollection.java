package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SortSellerProductDataCollection")
public class SortSellerProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//	System.out.println("Hello its working..");
			String ptype=request.getParameter("s1");
			String sid=request.getParameter("s6");
			String sname=request.getParameter("s7");
			//System.out.println(sname);
			HttpSession session=request.getSession(false);
			if(session==null) {
				//out.println("Session already time out...");
				request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
			}else {
			SellersDataModel sdm=new SellersDataModel();
			Products p=sdm.sortbyptype(ptype,sid);
			//System.out.println(sid);
			//System.out.println(ptype);
			request.setAttribute("Products",p);
			request.setAttribute("sid",sid);
			request.setAttribute("sname",sname);
			request.getRequestDispatcher("/websites/sort seller product.jsp").forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			
			}
	}

}

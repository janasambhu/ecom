package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateSellerDetailDataCollection")
public class UpdateSellerDetailDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("fname");
	     String ename=request.getParameter("enterprise");
	     String email=request.getParameter("email");
	     String phno=request.getParameter("phone");
	     String address=request.getParameter("address");
	     String pwd=request.getParameter("pass");
	     String sid1=request.getParameter("sid");
	     int sid=Integer.parseInt(sid1);
	     HttpSession session=request.getSession(false);
			if(session==null) {
				//out.println("Session already time out...");
				request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
			}else {
	     Sellers s=new Sellers();
	     SellersDataModel sdm=new SellersDataModel();
	    // request.setAttribute("sname", name);
	     //	System.out.println(name);
		//	System.out.println(ename);
		//	System.out.println(email);
		//	System.out.println(phno);
		//	System.out.println(address);
		//	System.out.println(pwd);
			//System.out.println(sid);
			s.setSellername(name);
			s.setEnterprisename(ename);
			s.setEmail(email);
			s.setPhno(phno);
			s.setAddress(address);
			s.setPwd(pwd);
			s.setSellerId(sid);
			boolean b=sdm.UpdateSellerDetail(s);
			Sellers s1=sdm.selectSeller(sid1);
			if(b) {
				request.setAttribute("sname", name);
				request.setAttribute("seller", s1);
				request.getRequestDispatcher("/websites/seller update details.jsp").forward(request, response);
			}
			}
	}

}

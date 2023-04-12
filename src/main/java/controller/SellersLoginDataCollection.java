package controller;

import model.*;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SellersLoginDataCollection")
public class SellersLoginDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		// doGet(request, response);
		try {
			String phno = request.getParameter("mobile");
			String pwd = request.getParameter("pass");
			SellersDataModel sdm = new SellersDataModel();
			Sellers s = sdm.selectSellersData(phno, pwd);
			String s1 = s.getPhno();
			String s2 = s.getPwd();
			int s3 = s.getSellerId();
			// Products p1=new Products();
			Products p2 = sdm.selectProductsData(s3);
//		ArrayList<String> pname=p2.getPname();
//		
//		System.out.println(s3);
			//HttpSession session=request.getSession();
			if (phno.equals(s1) && pwd.equals(s2)) {
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(60*60);
				session.setAttribute("phno", phno);
				request.setAttribute("data", s);
				request.setAttribute("Products", p2);
				request.getRequestDispatcher("/websites/seller account.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("/websites/invalid seller login.jsp").forward(request, response);
//		System.out.println(phno);
//		System.out.println(pwd);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}

	}
}

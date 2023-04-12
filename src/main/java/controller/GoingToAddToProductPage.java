package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;  
@WebServlet("/GoingToAddToProductPage")
public class GoingToAddToProductPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html"); 
		String sid=request.getParameter("s11");
		String sname=request.getParameter("s13");
		PrintWriter out=response.getWriter();  
		//System.out.println("seller id is "+sid);
		//System.out.println("Seller name is "+sname);
		 HttpSession session=request.getSession(false);  
		 if(session==null){  
			 request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		 }else {
			 request.setAttribute("sid", sid);
				request.setAttribute("sname", sname);
				request.getRequestDispatcher("/websites/add product.jsp").include(request, response);  
		  
		 }
	}

}

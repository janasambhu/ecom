package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerAddressDataCollection")
public class CustomerAddressDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("cid");
		String pid=request.getParameter("pid");
		String did=request.getParameter("did");
		String cname=request.getParameter("cname");
		request.setAttribute("cid",cid);
		request.setAttribute("pid",pid);
		request.setAttribute("did",did);
		request.setAttribute("cname",cname);
		request.getRequestDispatcher("/websites/order detail.jsp").forward(request, response);
		//System.out.println("Customer id id "+cid);
		//System.out.println("Product id id "+pid);
		//System.out.println("did is "+did);
		//System.out.println("cname is "+cname);
	}

}

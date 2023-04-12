package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GoingToNewAddressPage")
public class GoingToNewAddressPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("cid");
		String pid=request.getParameter("pid");
		String cname=request.getParameter("cname");
//		System.out.println(cid);
//		System.out.println(pid);
//		System.out.println(cname);
		request.setAttribute("pid",pid);
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.getRequestDispatcher("/websites/new delivery address.jsp").forward(request, response);
	}

}

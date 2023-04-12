package controller;
import model.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddressDataCollection")
public class AddressDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("s11");
		String pid=request.getParameter("s12");
		String cname=request.getParameter("s13");
		AddressDataModel adm=new AddressDataModel();
		Address a=adm.selectAddressesData(cid);
		//ArrayList<String> daid=a.getCdeliveryaddressId();
		//System.out.println(daid);
		request.setAttribute("cid",cid);
		request.setAttribute("pid",pid);
		request.setAttribute("cname",cname);
		request.setAttribute("addresses",a);
		//System.out.println(cid);
		//System.out.println(pid);
		//System.out.println(cname);
		request.getRequestDispatcher("/websites/customer addresses.jsp").forward(request, response);
	}

}

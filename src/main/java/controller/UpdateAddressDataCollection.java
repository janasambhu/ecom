package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateAddressDataCollection")
public class UpdateAddressDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("cid");
		String pid=request.getParameter("pid");
		String did=request.getParameter("did");
		String cname=request.getParameter("cname");
		AddressDataModel adm=new AddressDataModel();
		Address a=adm.selectAddressData(did);
		request.setAttribute("cid", cid);
		request.setAttribute("pid", pid);
		request.setAttribute("cname", cname);
		request.setAttribute("address", a);
		request.getRequestDispatcher("/websites/update delivery address.jsp").forward(request, response);
	}

}

package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;

@WebServlet("/UpdateCustomerAddressDataCollection")
public class UpdateCustomerAddressDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String line1=request.getParameter("line1");
		String city=request.getParameter("city");
		String dist=request.getParameter("dist");
		String state=request.getParameter("state");
		String pin=request.getParameter("pin");
		String lmark=request.getParameter("lmark");
		String phone=request.getParameter("phone");
		String cid=request.getParameter("cid");
		String pid=request.getParameter("pid");
		String did=request.getParameter("did");
		String cname=request.getParameter("cname");
		Address a1=new Address();
		AddressDataModel adm=new AddressDataModel();
		a1.setLine1(line1);
		a1.setCity(city);
		a1.setDistrict(dist);
		a1.setState(state);
		a1.setPincode(pin);
		a1.setLandmark(lmark);
		a1.setPhno(phone);
		a1.setCustomerId(cid);
		a1.setDeliveryaddressId(did);
		boolean b=adm.UpdateAddress(a1);
		if(b) {
			Address a=adm.selectAddressesData(cid);
			request.setAttribute("addresses",a);
			request.setAttribute("cid",cid);
			request.setAttribute("pid",pid);
			request.setAttribute("cname",cname);
			request.getRequestDispatcher("/websites/customer addresses.jsp").forward(request, response);
		}
	}

}

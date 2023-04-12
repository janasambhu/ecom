package controller;
import model.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
@WebServlet("/NewAddressDataCollections")
public class NewAddressDataCollections extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String line1=request.getParameter("line1");
		String city=request.getParameter("city");
		String dist=request.getParameter("dist");
		String state=request.getParameter("state");
		String pin=request.getParameter("pin");
		String lmark=request.getParameter("lmark");
		String phone=request.getParameter("phone");
		String cid=request.getParameter("cid");
		String pid=request.getParameter("pid");
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
		boolean b=adm.InsertNewAddress(a1);
		//String did=adm.LastInsertedData();
		Address a=adm.selectAddressesData(cid);
		request.setAttribute("addresses",a);
		if(b) {
		request.setAttribute("cid",cid);
		request.setAttribute("pid",pid);
		request.setAttribute("cname",cname);
		request.getRequestDispatcher("/websites/customer addresses.jsp").forward(request, response);
		}else {
			out.println("Some Error Occured!");
		}
	}

}

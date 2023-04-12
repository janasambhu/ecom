package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerDetailDataCollection")
public class UpdateCustomerDetailDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String cid1=request.getParameter("cid");	
	String cname=request.getParameter("cname");
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String gender=request.getParameter("drop-down");
	String phno=request.getParameter("phone");
	String email=request.getParameter("email");
	String dob=request.getParameter("dob");
	String pwd=request.getParameter("pass");
	int cid=Integer.parseInt(cid1);
//	System.out.println(cid);
//	System.out.println(cname);
//	System.out.println(fname);
//	System.out.println(lname);
//	System.out.println(gender);
//	System.out.println(phno);
//	System.out.println(email);
//	System.out.println(dob);
//	System.out.println(pwd);
	Customers c=new Customers();
	CustomersDataModel cdm=new CustomersDataModel();
	c.setCustomerId(cid);
	c.setFirstname(fname);
	c.setLastname(lname);
	c.setGender(gender);
	c.setPhno(phno);
	c.setEmail(email);
	c.setDob(dob);
	c.setPwd(pwd);
	boolean b=cdm.UpdateCustomerDetail(c);
	Customers c1=cdm.selectCustomerDetail(cid1);
	if(b) {
		request.setAttribute("cname", cname);
		request.setAttribute("customer", c1);
		request.getRequestDispatcher("/websites/customer update details.jsp").forward(request, response);
	}
	}

}

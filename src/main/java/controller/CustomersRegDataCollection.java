package controller;

import java.io.PrintWriter;
import model.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomersRegDataCollection")
public class CustomersRegDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CustomersRegDataCollection() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		String firstname=request.getParameter("fname");
		String lastname=request.getParameter("lname");
		String phno=request.getParameter("phone");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pass");
	    String dob=request.getParameter("dob");
	    String gender=request.getParameter("drop-down");
	    PrintWriter out= response.getWriter();
//	    System.out.println(firstname);
//	    System.out.println(lastname);
//	    System.out.println(phno);
//	    System.out.println(email);
//	    System.out.println(dob);
	    System.out.println(gender);
//	    System.out.println(pwd);
	    Customers c=new Customers();
	    c.setFirstname(firstname);
	    c.setLastname(lastname);
	    c.setPhno(phno);
	    c.setEmail(email);
	    c.setDob(dob);
	    c.setGender(gender);
	    c.setPwd(pwd);
	    CustomersDataModel cdm=new CustomersDataModel();
	    boolean b=cdm.InsertCustomers(c);
	    if(b){
	    	//out.println("Data inserted");
	    	request.getRequestDispatcher("/websites/customer login.jsp").forward(request, response);
	    }
	    else {
	    	out.println("some error occured in database");
	    }
	}

}

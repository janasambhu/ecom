package controller;
//import java.util.*;

import model.*;
//import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomersLoginDataCollection")
public class CustomersLoginDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String phone=request.getParameter("phone");
		String pwd=request.getParameter("pass");
		//PrintWriter out= response.getWriter();
		CustomersDataModel cdm=new CustomersDataModel();
		//cdm.selectCustomersData(phone,pwd);
		Customers c=cdm.selectCustomersData(phone,pwd);
		String p=c.getPhno();
		String pass=c.getPwd();
		Products pr=cdm.selectProductsData();
	//	ArrayList<String> pname=pr.getPname();
		//System.out.println(pname);
		if(phone.equals(p) && pwd.equals(pass)) {
			request.setAttribute("pro", pr);
		request.setAttribute("data",c);
		request.getRequestDispatcher("/websites/products.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("/websites/invalid customer login.jsp").forward(request, response);
			//out.println("Invalid mobile number and password");
		}
//		System.out.println(p);
//		System.out.println(pass);
	}

}

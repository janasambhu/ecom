package controller;
import model.*;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SellersRegDataCollection")
public class SellersRegDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	     String name=request.getParameter("fname");
	     String ename=request.getParameter("enterprise");
	     String email=request.getParameter("email");
	     String phno=request.getParameter("phone");
	     String address=request.getParameter("address");
	     String pwd=request.getParameter("pass");
	     PrintWriter out= response.getWriter();
//	     System.out.println(name);
//	     System.out.println(ename);
//	     System.out.println(email);
//	     System.out.println(phno);
//	     System.out.println(address);
//	     System.out.println(pwd);
	     Sellers s=new Sellers();
	     s.setSellername(name);
	     s.setEnterprisename(ename);
	     s.setEmail(email);
	     s.setPhno(phno);
	     s.setAddress(address);
	     s.setPwd(pwd);
	     SellersDataModel s1=new SellersDataModel();
	    boolean b= s1.InsertSellers(s);
	    if(b) {
	    	//out.println("Data inserted");
	    	request.getRequestDispatcher("/websites/seller login.jsp").forward(request, response);
	    }
	    else {
	    	out.println("Some error occured in database");
	    }
	}

}

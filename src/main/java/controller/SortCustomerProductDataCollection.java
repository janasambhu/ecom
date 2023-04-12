package controller;
import model.*;
//import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SortCustomerProductDataCollection")
public class SortCustomerProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String ptype=request.getParameter("s1");
		String cid=request.getParameter("c-id");
		//System.out.println(cid);
		String cname=request.getParameter("cname");
		CustomersDataModel cdm=new CustomersDataModel();
		Products p2=cdm.sortbyptype(ptype);
		//ArrayList<String> set=p2.getPname();
		//System.out.println(set);
		request.setAttribute("products1", p2);
		request.setAttribute("cid", cid);
		request.setAttribute("cname", cname);
		request.getRequestDispatcher("/websites/sort customer product.jsp").forward(request, response);
		//System.out.println("Its working");
		}catch(Exception e){
			e.printStackTrace();
		}
		finally {
			
		}
		
			
			}
	}


package controller;
import model.*;




import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddToCartDataCollection")
public class AddToCartDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("s11");
		String pid=request.getParameter("s12");
		String cname=request.getParameter("s13");
		PrintWriter out= response.getWriter();
		Cart c=new Cart();
		CartDataModel cdm=new CartDataModel();
		CustomersDataModel cdm1=new CustomersDataModel();
		c.setCustomerId(cid);
		c.setProductId(pid);
		boolean b=cdm.InsertCart(c);				
		//System.out.println(pid);
		//System.out.println(pname);
		//System.out.println(pprice);
		//System.out.println(pcat);
		//System.out.println(pquan);
		//System.out.println(pdet);
		//System.out.println(pimg);		
		//ArrayList<String> pid1=p.getPid();
		//System.out.println(pid1);
		if(b) {
			Products p=cdm1.selectProductDetail(pid);
			String pname=p.getProductname();
			//System.out.println(ptype);
			Products p1=cdm1.Productbyptype(pname, pid);
			request.setAttribute("cid", cid);
			request.setAttribute("cname", cname);
			request.setAttribute("product", p);
			request.setAttribute("products", p1);
			request.getRequestDispatcher("/websites/customer product detail.jsp").forward(request, response);
			//out.println("Item added in cart Successfully!");
		}else {
			out.println("Item already in cart.");
		}
	}
}

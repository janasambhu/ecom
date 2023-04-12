package controller;
import model.*;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartRemoveItemDataCollection")
public class CartRemoveItemDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String cid=request.getParameter("s11");
	String cname=request.getParameter("s12");
	String pid=request.getParameter("s13");
	PrintWriter out= response.getWriter();
	//System.out.println(cid);
	//System.out.println(pid);
	CartDataModel cdm=new CartDataModel();
	boolean b=cdm.Deletefromcart(cid,pid);
	if(b) {
		Cart c=cdm.selectProductsData(cid);
		request.setAttribute("products",c);
		request.setAttribute("cid",cid);
		request.setAttribute("cname",cname);
		request.getRequestDispatcher("/websites/cart.jsp").forward(request, response);
		//out.println("Item Removed from cart Successfully!");
	}else {
		out.println("Some Error Occured!");
	}
	}

}

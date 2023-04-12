package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RemoveOrderDataCollection")
public class RemoveOrderDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("s11");
		String cname=request.getParameter("s12");
		String oid=request.getParameter("s13");
		String pid=request.getParameter("s14");
		OrdersDataModel odm=new OrdersDataModel();
		boolean b=odm.DeletefromOrder(oid, cid, pid);
		if(b) {
			Orders o=odm.selectOrdersData(cid);
			request.setAttribute("cid",cid);
			request.setAttribute("cname",cname);
			request.setAttribute("orders",o);
			request.getRequestDispatcher("/websites/my order.jsp").forward(request, response);	
		}
	}

}

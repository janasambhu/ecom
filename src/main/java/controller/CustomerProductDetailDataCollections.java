package controller;
import model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/CustomerProductDetailDataCollections")
public class CustomerProductDetailDataCollections extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("Hello sambhu");
		String cid=request.getParameter("s11");
		String cname=request.getParameter("s12");
		String pid=request.getParameter("s13");
		//System.out.println(cid);
		//System.out.println(cname);
		//System.out.println(pid);
		CustomersDataModel cdm=new CustomersDataModel();
		Products p=cdm.selectProductDetail(pid);
		String pname=p.getProductname();		
		//System.out.println(ptype);
		Products p1=cdm.Productbyptype(pname,pid);
		request.setAttribute("cid", cid);
		request.setAttribute("cname", cname);
		request.setAttribute("product", p);
		request.setAttribute("products", p1);
		request.getRequestDispatcher("/websites/customer product detail.jsp").forward(request, response);
	}

}

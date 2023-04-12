package controller;
import model.*;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteSellerProductDataCollection")
public class DeleteSellerProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=request.getParameter("s12");
		String sid=request.getParameter("s11");
		String sname=request.getParameter("s13");
		PrintWriter out= response.getWriter();
		//System.out.println("seller id is "+sid1);
		//System.out.println("product id is "+pid);
		HttpSession session=request.getSession(false);
		if(session==null) {
			//out.println("Session already time out...");
			request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		}else {
		SellersDataModel sdm=new SellersDataModel();
		Products p=sdm.selectSellerProductsImage(sid, pid);
		ArrayList<String> pimg=p.getPimage1();
		int n1=pimg.size();
		for(int i=0;i<n1;i++) {
			File deleteFile = new File("C:\\installed programs\\ecom\\src\\main\\webapp\\websites\\products images\\"+File.separator+pimg.get(i));
			if(deleteFile.exists()) {
				deleteFile.delete() ;
			}
		}
		boolean b=sdm.DeleteProduct(pid, sid);
		Products p2=sdm.selectSellerProductsData(sid);
		if(b) {
			request.setAttribute("Products",p2);
			request.setAttribute("sid",sid);
			request.setAttribute("sname",sname);
			request.getRequestDispatcher("/websites/sort seller product.jsp").forward(request, response);
			//out.println("Item successfully deleted from database!");
		}else {
			out.println("Some error occurred!");
		}
		}
	}

}

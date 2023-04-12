package controller;

import model.*;

import javax.servlet.*;
//import model.PersonDataModel;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.InputStream;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
//@MultipartConfig
@WebServlet("/AddProductDataCollection")
public class AddProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text.html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Part img1 = request.getPart("pimage1");
		Part img2 = request.getPart("pimage2");
		Part img3 = request.getPart("pimage3");
		Part img4 = request.getPart("pimage4");
		String pname = request.getParameter("name");
		String pprice = request.getParameter("price");		
		String pquan = request.getParameter("quantity");
		String pdet = request.getParameter("details");
		String ptags = request.getParameter("tags");
		String sname = request.getParameter("sname");
		String sid = request.getParameter("sid");
		String pimg1 = extractFileName(img1);
		String pimg2 = extractFileName(img2);
		String pimg3 = extractFileName(img3);
		String pimg4 = extractFileName(img4);
		List<Part> p2 = new ArrayList<>();
		List<String> fname = new ArrayList<>();
		p2.add(img1);
		p2.add(img2);
		p2.add(img3);
		p2.add(img4);
		fname.add(pimg1);
		fname.add(pimg2);
		fname.add(pimg3);
		fname.add(pimg4);
		HttpSession session=request.getSession(false);
		if(session==null) {
			//out.println("Session already time out...");
			request.getRequestDispatcher("/websites/session time out.jsp").include(request, response);
		}else {
		// System.out.println("Before try catch...");
		try {
			int n = fname.size();
			for (int i = 0; i < n; i++) {
				String savepath = "C:\\installed programs\\ecom\\src\\main\\webapp\\websites\\products images\\"
						+ File.separator + fname.get(i);
				// File fileSaveDir=new File(savepath);
				p2.get(i).write(savepath + File.separator);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		// System.out.println("After try catch....");
//		System.out.println(pname);
//		System.out.println(pprice);
//		System.out.println(pcat);
//		System.out.println(pquan);
//		System.out.println(pdet);
//		System.out.println(pimg1);
//		System.out.println(pimg2);
//		System.out.println(pimg3);
//		System.out.println(pimg4);
//		System.out.println(sid);
		// System.out.println("File name size in array is ");
		//out.println("Hurray its working.....");
		try {
			Products p = new Products();
			ProductsDataModel p1 = new ProductsDataModel();
			p.setProductname(pname);
			p.setProductprice(pprice);			
			p.setProductquantity(pquan);
			p.setProductdetails(pdet);
			p.setProducttags(ptags);
			p.setProductimage1(pimg1);
			p.setProductimage2(pimg2);
			p.setProductimage3(pimg3);
			p.setProductimage4(pimg4);
			p.setSellerId(sid);
			// C:/installed programs/demo/src/main/webapp/websites/products images

			boolean b = p1.InsertProducts(p);
			
//	out.println("Hello its working.....");

			if (b) {
				request.setAttribute("sname", sname);
				request.setAttribute("sid", sid);
				request.getRequestDispatcher("/websites/add product.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {

		}
		}
		
		
		
		
		
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}

}

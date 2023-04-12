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

@MultipartConfig(fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*50)
@WebServlet("/UpdateProductDataCollection")
public class UpdateProductDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text.html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Part img1=request.getPart("pimage1");
		Part img2=request.getPart("pimage2");
		Part img3=request.getPart("pimage3");
		Part img4=request.getPart("pimage4");
		String pname=request.getParameter("name");
		String pprice=request.getParameter("price");
		String pquan=request.getParameter("quantity");
		String pdet=request.getParameter("details");
		String sid=request.getParameter("sid");
		String ptags=request.getParameter("tags");
		String pid1=request.getParameter("pid");
		String sname=request.getParameter("sname");
		int pid=Integer.parseInt(pid1); 
		String pimg1=extractFileName(img1);
		String pimg2=extractFileName(img2);
		String pimg3=extractFileName(img3);
		String pimg4=extractFileName(img4);
		Products p1=new Products();
		HttpSession session=request.getSession(false);
		if(session==null) {
			request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		}else {
		p1.setProductname(pname);
		p1.setProductprice(pprice);
		p1.setProductquantity(pquan);
		p1.setProductdetails(pdet);
		p1.setSellerId(sid);
		p1.setProductId(pid);
		p1.setProductimage1(pimg1);
		p1.setProductimage2(pimg2);
		p1.setProductimage3(pimg3);
		p1.setProductimage4(pimg4);
		p1.setProducttags(ptags);
		List<Part> p2=new ArrayList<>();
	    List<String> fname=new ArrayList<>();
	    p2.add(img1);
		p2.add(img2);
		p2.add(img3);
		p2.add(img4);
		fname.add(pimg1);
		fname.add(pimg2);
		fname.add(pimg3);
		fname.add(pimg4);
		int n=fname.size();
		SellersDataModel sdm=new SellersDataModel();
		Products p=sdm.selectSellerProductsImage(sid, pid1);
		ArrayList<String> pimg=p.getPimage1();
		int n1=pimg.size();
		//System.out.println("Total number of image is "+n1);
		//System.out.println(pimg);
		for(int i=0;i<n1;i++) {
			File deleteFile = new File("C:\\installed programs\\ecom\\src\\main\\webapp\\websites\\products images\\"+File.separator+pimg.get(i));
			if(deleteFile.exists()) {
				deleteFile.delete() ;
			}
		}
		try {
		for(int i=0;i<n;i++) {
			String savepath="C:\\installed programs\\ecom\\src\\main\\webapp\\websites\\products images\\"+File.separator+fname.get(i);
			//File fileSaveDir=new File(savepath);
			p2.get(i).write(savepath+File.separator);
		    }
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				
			}

		boolean b=sdm.UpdateSellerProduct(p1);
		Products p5=sdm.SellerProductDetail(pid1,sid);
		if(b) {
			request.setAttribute("sname", sname);
			request.setAttribute("product", p5);
			request.getRequestDispatcher("/websites/seller update product.jsp").forward(request, response);
		}
		}
	}
	private String extractFileName(Part part) {
		String contentDisp=part.getHeader("content-disposition");
		String[] items=contentDisp.split(";");
		for(String s : items) {
			if(s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2,s.length()-1);
			}
		}
		return "";
	}

}

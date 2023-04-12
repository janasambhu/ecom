package controller;


import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
/**
 * Servlet implementation class IndexController
 */
@WebServlet("/PersonDataCollection")
public class PersonDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonDataCollection() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
	    PrintWriter pwriter=response.getWriter();
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		pwriter.println(fname+"<br>");
		pwriter.println(lname+"<br>");
		pwriter.println(email+"<br>");
		pwriter.println(mobile+"<br>");
		pwriter.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
//	    PrintWriter pwriter=response.getWriter();
//		String fname=request.getParameter("fname");
//		String lname=request.getParameter("lname");
//		String email=request.getParameter("email");
//		String mobile=request.getParameter("mobile");
//		pwriter.println(fname+"<br>");
//		pwriter.println(lname+"<br>");
//		pwriter.println(email+"<br>");
//		pwriter.println(mobile+"<br>");
//		pwriter.close();
//		doGet(request, response);
	}

}

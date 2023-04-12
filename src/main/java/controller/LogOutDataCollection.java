package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogOutDataCollection")
public class LogOutDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session=request.getSession(false);
		if(session==null) {
			//out.println("Session already time out...");
			request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
		}else {
		request.getSession(false).invalidate();
		request.getRequestDispatcher("/websites/index.jsp").include(request, response);
		}
	}

}

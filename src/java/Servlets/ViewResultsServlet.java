package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Classes.Uni;
import Database.Database;

/**
 * Servlet implementation class ViewRoutesServlet
 */
@WebServlet("/ViewRoutesServlet")
public class ViewResultsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewResultsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int cat = Integer.parseInt(request.getParameter("parameter"));
		
		Database db = new Database();
		List<Uni> result = db.showResult(cat);
		
		request.setAttribute("resultList", result);
		request.getRequestDispatcher("results.jsp").forward(request, response);
	}

}

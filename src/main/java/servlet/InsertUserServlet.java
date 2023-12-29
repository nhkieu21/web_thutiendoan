
package servlet;

import java.io.IOException;

import com.model.User;
import com.model.UserDB;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jdbc.ConnectDB;



/**
 * Servlet implementation class EditStudentServlet
 */

public class InsertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String MSV = request.getParameter("MSV");
		String HoTen = request.getParameter("HoTen");
		String[] trangthaiValues = request.getParameterValues("Trangthai[]");
		int Trangthai = trangthaiValues.length;
		User u = new User(MSV, HoTen, Trangthai);
		
		// Add the student to the database
		try {
			UserDB.insertUser(u);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/Display.jsp");
        rd.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				doPost(request, response);

	}
}

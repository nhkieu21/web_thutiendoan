
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

public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String MSV = request.getParameter("MSV");
		String HoTen = request.getParameter("HoTen");
		String[] trangthaiValues = request.getParameterValues("Trangthai[]");
		int Trangthai = trangthaiValues.length;
		User u = new User(MSV, HoTen, Trangthai);

//		request.setAttribute("u", u);
        try {
			UserDB.updateUser(u, MSV);
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

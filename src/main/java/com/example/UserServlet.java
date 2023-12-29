package com.example;

import java.io.IOException;
import java.util.Arrays;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.model.User;
import com.model.UserDB;


public class UserServlet extends HttpServlet {
	public UserServlet() {
        super();
    }
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String MSV = req.getParameter("MSV");
        String HoTen = req.getParameter("HoTen");
        int Trangthai;

        try {
            Trangthai = Integer.parseInt(req.getParameter("Trangthai"));
        } catch (NumberFormatException e) {
            Trangthai = 0; 
        }
        
        req.setAttribute("MSV", MSV);
        req.setAttribute("HoTen", HoTen);
        req.setAttribute("Trangthai", Trangthai);
        

        RequestDispatcher rd = req.getRequestDispatcher("/Display.jsp");
        rd.forward(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}

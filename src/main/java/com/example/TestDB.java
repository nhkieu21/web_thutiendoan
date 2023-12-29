package com.example;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectDB;

public class TestDB {
	public static void main(String[] args) throws ClassNotFoundException {
		try {
			Connection conn = ConnectDB.getConnection();

			Statement st = conn.createStatement();

			String sql = "INSERT INTO `user`(`MSV`, `HoTen`, `TrangThai`) VALUES ('001','Nhu Kieu','2')";
			
			int check = st.executeUpdate(sql);

			if (check > 0) {
				System.out.println("ok");
			} else {
				System.out.println("fail");
			}

			ConnectDB.closeConnection(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

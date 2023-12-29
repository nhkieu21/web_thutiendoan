package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.ConnectDB;

public class UserDB {

	public static List<User> getAllStudents() throws ClassNotFoundException {

		List<User> userList = new ArrayList<>();
		String sql = "SELECT * FROM `user` ";
		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				User u = new User();
				u.setMSV(rs.getString("MSV"));
				u.setHoTen(rs.getString("HoTen"));
				u.setTrangthai(rs.getInt("TrangThai"));

				userList.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}

	public static void deleteUser(String MSV) throws ClassNotFoundException {
		String sql = "delete from user where MSV =?";
		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, MSV);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static User getUserById(String MSV) throws ClassNotFoundException {
		String sql = "select * from user where MSV = ?";
		User u = new User();
		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, MSV);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				u.setMSV(resultSet.getString("MSV"));
				u.setHoTen(resultSet.getString("HoTen"));
				u.setTrangthai(resultSet.getInt("TrangThai"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}

	public static void updateUser(User u, String MSV) throws ClassNotFoundException {
		String sql = "update user set HoTen = ?, TrangThai = ? where MSV = ?;";

		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(sql);

			preparedStatement.setString(1, u.getHoTen());
			preparedStatement.setInt(2, u.getTrangthai());
			preparedStatement.setString(3, MSV);

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static int insertUser(User u) throws ClassNotFoundException {
		String sql = "INSERT INTO `user`(`MSV`, `HoTen`, `TrangThai`) VALUES (?,?,?)";
		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(sql);

			preparedStatement.setString(1, u.getMSV());
			preparedStatement.setString(2, u.getHoTen());
			preparedStatement.setInt(3, u.getTrangthai());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;

	}

}

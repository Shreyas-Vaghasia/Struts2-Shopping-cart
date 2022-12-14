package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbutil.DBUtil;
import models.ProductModel;

public class ProductDAO {
	public static void viewProducts(ProductModel productModel) {

		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM  product ");
			System.out.println(userDetails.getLevell());
			ps.setString(1, userDetails.getFirstname());
			ps.setString(2, userDetails.getLastname());
			ps.setString(3, userDetails.getGender());
			ps.setString(4, userDetails.getEmail());
			ps.setString(5, userDetails.getLevell());
			ps.setString(6, userDetails.getPassword());
			System.out.println(userDetails.getLevell());
			int status = ps.executeUpdate();// this needs to be called
		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}
}

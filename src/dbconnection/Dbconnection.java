/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnection;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author java2
 */
public class Dbconnection {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CloudTailor", "root", "mysql");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return con;
	}

	public static String GetSourcePath() {
		return "C:\\Users\\rdeep\\OneDrive\\Desktop\\Images\\";
	}

	public static String GetProjectPath() {
		return "E:\\CloudTailor\\WebContent\\images\\";
	}

	public void copy(File src, File dest) throws IOException {
		InputStream is = null;
		OutputStream os = null;
		try {
			is = new FileInputStream(src);
			os = new FileOutputStream(dest);

			// buffer size 1K
			byte[] buf = new byte[1024];

			int bytesRead;
			while ((bytesRead = is.read(buf)) > 0) {
				os.write(buf, 0, bytesRead);
			}
		} finally {
			is.close();
			os.close();
		}
	}
}

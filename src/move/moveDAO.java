package move;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//import java.util.ArrayList;
public class moveDAO {
	// 전역변수
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	moveDAO() { //
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
			System.out.println("DB Connected");
		} catch (Exception e) {
			System.out.println("DB Disconnected" + e);
			return;
		}
	}
	}

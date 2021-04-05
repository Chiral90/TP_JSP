package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class boardDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public boardDAO() {
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
	
	public ArrayList<boardDTO> list() throws Exception {
		ArrayList<boardDTO> blist = new ArrayList();
		//System.out.println("list method");
		
		try {
			String sql = "";
			sql = "select * from board_test order by no desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				boardDTO bbean = new boardDTO();
				bbean.setNo(rs.getInt("no"));
				bbean.setTitle(rs.getString("title"));
				bbean.setPw(rs.getString("pw"));
				bbean.setContent(rs.getString("content"));
				bbean.setTag(rs.getString("tag"));
				
				blist.add(bbean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn!=null) conn.close();
			if (pstmt!=null) pstmt.close();
			if (rs!=null) rs.close();
		}
		return blist;
	}
	/*
	public void likeCount(boardDTO bbean) throws Exception {
		try {
			String sql = "";
			sql = "update board set like=like+1 where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbean.getNo() );
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn!=null) conn.close();
			if (pstmt!=null) pstmt.close();
		}
	}
	public void viewCount(boardDTO bbean) throws Exception {
		try {
			String sql = "";
			sql = "update board set view=view+1 where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbean.getNo() );
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn!=null) conn.close();
			if (pstmt!=null) pstmt.close();
		}
	}
	
	public boardDTO detail(boardDTO bbean) throws Exception {
		
		boardDTO member = new boardDTO();
		try {
			String sql = "";
			sql = "select * from board where no=? order by no desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbean.getNo());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				member.setNo(rs.getInt("no"));
				member.setTitle(rs.getString("title"));
				member.setContent(rs.getString("content"));
				member.setId(rs.getString("id"));
				member.setView(rs.getInt("view"));
				member.setLike(rs.getInt("like"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn!=null) conn.close();
			if (pstmt!=null) pstmt.close();
			if (rs!=null) rs.close();
		}
		return member;
	}
*/	
}

package com.scuba.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.scuba.dto.BulletinVO;
import util.DBManager;

public class BulletinDAO {
	private BulletinDAO() {
		
	}
	
	private static BulletinDAO instance = new BulletinDAO();
	
	public static BulletinDAO getInstance() {
		return instance;
	}
	
	public List<BulletinVO> selectAllBoards() {
		String sql = "select * from bulletin order by num desc";
	
		List<BulletinVO> list = new ArrayList<BulletinVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BulletinVO bVo = new BulletinVO();
				
				bVo.setNum(rs.getInt("num"));
				bVo.setPictureurl(rs.getString("pictureurl"));
				
				list.add(bVo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	public void insertBoard(BulletinVO bVo) {
		String sql = "insert into bulletin"
				+ "(num,pictureurl) "
				+ "values(bulletin_seq.nextval,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getPictureurl());

			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}

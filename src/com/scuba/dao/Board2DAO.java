package com.scuba.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.scuba.dto.Board1VO;
import com.scuba.dto.Board2VO;

import util.DBManager;

public class Board2DAO {
	private Board2DAO() {
		
	}
	
	private static Board2DAO instance = new Board2DAO();
	
	public static Board2DAO getInstance() {
		return instance;
	}
	
	public List<Board2VO> selectAllBoards(){
		String sql = "select * from (select * from board2 order by num desc) where rownum<=10";
		
		List<Board2VO> list = new ArrayList<Board2VO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Board2VO bVo = new Board2VO();
				
				bVo.setNum(rs.getInt("num"));
				bVo.setUserid(rs.getString("userid"));
				bVo.setName(rs.getString("name"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setPictureurl1(rs.getString("pictureurl1"));
				bVo.setPictureurl2(rs.getString("pictureurl2"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getDate("writedate"));
				bVo.setContent(rs.getString("content"));
				
				list.add(bVo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public void insertBoard(Board2VO bVo) {
		String sql = "insert into board2"
				+ "(num,userid,name,pass,title,pictureurl1,pictureurl2,readcount,content) "
				+ "values(board2_seq.nextval,?,?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,bVo.getUserid());
			pstmt.setString(2,bVo.getName());
			pstmt.setString(3,bVo.getPass());
			pstmt.setString(4,bVo.getTitle());
			pstmt.setString(5,bVo.getPictureurl1());
			pstmt.setString(6,bVo.getPictureurl2());
			pstmt.setInt(7,bVo.getReadcount());
			pstmt.setString(8,bVo.getContent());

			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}

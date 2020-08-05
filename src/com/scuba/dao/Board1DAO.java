package com.scuba.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.scuba.dto.Board1VO;

import util.DBManager;

public class Board1DAO {
	private Board1DAO() {
		
	}
	
	private static Board1DAO instance = new Board1DAO();
	
	public static Board1DAO getInstance() {
		return instance;
	}
	
	public List<Board1VO> selectAllBoards(){
		String sql = "select * from board1 where rownum<=10 order by num desc";
		
		List<Board1VO> list = new ArrayList<Board1VO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Board1VO bVo = new Board1VO();
				
				bVo.setNum(rs.getInt("num"));
				bVo.setTitle(rs.getString("title"));
				bVo.setPass(rs.getString("pass"));
				bVo.setName(rs.getString("name"));
				bVo.setPhone(rs.getString("phone"));
				bVo.setSpace(rs.getInt("space"));
				bVo.setSubject(rs.getInt("subject"));
				bVo.setPack(rs.getInt("pack"));
				bVo.setTime(rs.getInt("time"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getDate("writedate"));
				
				list.add(bVo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public void insertBoard(Board1VO bVo) {
		String sql = "insert into board1"
				+ "(num,title,pass,name,phone,space,subject,pack,time,readcount) "
				+ "values(board1_seq.nextval,?,?,?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,bVo.getTitle());
			pstmt.setString(2,bVo.getPass());
			pstmt.setString(3,bVo.getName());
			pstmt.setString(4,bVo.getPhone());
			pstmt.setInt(5,bVo.getSpace());
			pstmt.setInt(6,bVo.getSubject());
			pstmt.setInt(7,bVo.getPack());
			pstmt.setInt(8,bVo.getTime());
			pstmt.setInt(9,bVo.getReadcount());
			//pstmt.setDate(10, bVo.getWritedate());
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}

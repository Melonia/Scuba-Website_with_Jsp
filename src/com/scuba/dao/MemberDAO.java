package com.scuba.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.scuba.dto.MemberVO;

import util.DBManager;

public class MemberDAO {
	private MemberDAO() {}
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	public int userCheck(String userid, String pwd) {
		int result = -1;
		String sql = "select pwd from member where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("pwd")!=null&&rs.getString("pwd").equals(pwd)) {
					result = 1;
				}
				else {
					result = 0;
				}
			}
			else {
				result = -1;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,pstmt,rs);
		}
		return result;
	}
	
	public MemberVO selectByUserid(String userid) {
		String sql = "select * from member where userid=?";
		MemberVO mVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setNum(rs.getInt("num"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setName(rs.getString("name"));
				mVo.setSex(rs.getInt("sex"));
				mVo.setTel(rs.getString("tel"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setEmail(rs.getString("email"));
				mVo.setAddress(rs.getString("address"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,pstmt,rs);
		}
		return mVo;
	}
	
	public int insertMember(MemberVO mVo) {
		int result = -1;
		String sql = "insert into member(num,userid,pwd,name,sex,tel,phone,email,address)"
				+ " values(member_seq.nextval,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getUserid());
			pstmt.setString(2,mVo.getPwd());
			pstmt.setString(3, mVo.getName());
			pstmt.setInt(4, mVo.getSex());
			pstmt.setString(5, mVo.getTel());
			pstmt.setString(6, mVo.getPhone());
			pstmt.setString(7, mVo.getEmail());
			pstmt.setString(8, mVo.getAddress());
		
			pstmt.executeUpdate();
		
			result = 1;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,pstmt);
		}
		return result;
	}
}

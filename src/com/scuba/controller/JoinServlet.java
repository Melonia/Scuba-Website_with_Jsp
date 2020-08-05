package com.scuba.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scuba.dao.MemberDAO;
import com.scuba.dto.MemberVO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "jsp/login.jsp?form=join";
		
		response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = null;
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userid2");
		String pwd = request.getParameter("pwd2");
		String name = request.getParameter("name");
		int sex = Integer.parseInt(request.getParameter("sex"));
		String tel = request.getParameter("tel");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		MemberVO mVo = new MemberVO();
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setName(name);
		mVo.setSex(sex);
		mVo.setTel(tel);
		mVo.setPhone(phone);
		mVo.setEmail(email);
		mVo.setAddress(address);
		
		System.out.println(mVo);
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		if(result==1) {
			url = "jsp/index.jsp?join_complete="+URLEncoder.encode("ȸ�������� �Ϸ�Ǿ����ϴ�.","utf-8");
		}
		else {
			url = "jsp/login.jsp?form=join&join_complete="+URLEncoder.encode("ȸ�����Կ� �����Ͽ����ϴ�.","utf-8");
		}
		response.sendRedirect(url);
	}

}

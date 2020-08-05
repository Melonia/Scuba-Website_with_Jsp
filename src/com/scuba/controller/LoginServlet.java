package com.scuba.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scuba.dao.MemberDAO;
import com.scuba.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "jsp/login.jsp?form=login";
		
		response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = null;
		String userid = request.getParameter("userid1");
		String pwd = request.getParameter("pwd1");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userid,pwd);
		
		if(result == 1) {
		    MemberVO mVo = new MemberVO();
		    mVo = mDao.selectByUserid(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser",mVo);	
			url = "jsp/index.jsp";
		}else if(result == 0){
			url = "jsp/login.jsp?form=login&code=0";
		}else {
			url = "jsp/login.jsp?form=login&code=-1";
		}
		
		response.sendRedirect(url);
	}

}

package com.scuba.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scuba.dto.MemberVO;

public class Board3WriteFormAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/goods.jsp?command=view_application";
			
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("loginUser");
			if(user==null) {
				url = "jsp/login.jsp?form=login&alarm=need";
			}
			
			response.sendRedirect(url);
		}
}

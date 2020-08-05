package com.scuba.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scuba.dao.Board4DAO;
import com.scuba.dto.Board4VO;

public class Board4WriteAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/community.jsp";
			
			request.setCharacterEncoding("utf-8");
			
			if(request.getAttribute("upload")==null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/upload3.do");
				dispatcher.forward(request, response);
			}
			else {
				
				Board4VO bVo = new Board4VO();
			
				bVo.setUserid((String)request.getAttribute("userid"));
				bVo.setName((String)request.getAttribute("name"));
				bVo.setPass((String)request.getAttribute("pass"));
				bVo.setTitle((String)request.getAttribute("title"));
			if((String)request.getAttribute("pictureurl1")==null) {
				bVo.setPictureurl1("no-image");
			}
			else {
				bVo.setPictureurl1((String)request.getAttribute("pictureurl1"));
			}
			if((String)request.getAttribute("pictureurl2")==null) {
				bVo.setPictureurl2("no-image");
			}
			else {
				bVo.setPictureurl2((String)request.getAttribute("pictureurl2"));
			}
			bVo.setContent((String)request.getAttribute("content"));
			
			System.out.println(bVo);
			Board4DAO bDao = Board4DAO.getInstance();
			bDao.insertBoard(bVo);
			
			response.sendRedirect(url);
		}
	}
}

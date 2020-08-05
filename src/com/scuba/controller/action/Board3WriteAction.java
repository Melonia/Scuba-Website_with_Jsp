package com.scuba.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scuba.dao.Board3DAO;
import com.scuba.dto.Board3VO;

public class Board3WriteAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/goods.jsp";
			
			request.setCharacterEncoding("utf-8");
			
			if(request.getAttribute("upload")==null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/upload2.do");
				dispatcher.forward(request, response);
			}
			else {
				
				Board3VO bVo = new Board3VO();
			
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
			Board3DAO bDao = Board3DAO.getInstance();
			bDao.insertBoard(bVo);
			
			response.sendRedirect(url);
		}
	}
}

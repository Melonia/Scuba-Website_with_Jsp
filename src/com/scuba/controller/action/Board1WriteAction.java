package com.scuba.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scuba.dao.Board1DAO;
import com.scuba.dto.Board1VO;

public class Board1WriteAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "BoardServlet?command=board1_list";
			
			request.setCharacterEncoding("utf-8");
			Board1VO bVo = new Board1VO();
			
			bVo.setTitle(request.getParameter("title"));
			bVo.setPass(request.getParameter("pass"));
			bVo.setName(request.getParameter("name"));
			bVo.setPhone(request.getParameter("phone"));
			if(request.getParameter("space")==null) {
				bVo.setSpace(-1);
			}
			else {
				bVo.setSpace(Integer.parseInt(request.getParameter("space")));
			}
			
			if(request.getParameter("subject")==null) {
				bVo.setSubject(-1);
			}
			else {
				bVo.setSubject(Integer.parseInt(request.getParameter("subject")));
			}
			
			if(request.getParameter("pack")==null) {
				bVo.setPack(-1);
			}
			else {
				bVo.setPack(Integer.parseInt(request.getParameter("pack")));
			}
			
			if(request.getParameter("time")==null) {
				bVo.setTime(-1);
			}
			else {
				bVo.setTime(Integer.parseInt(request.getParameter("time")));
			}
			
			Board1DAO bDao = Board1DAO.getInstance();
			bDao.insertBoard(bVo);
			
			response.sendRedirect(url);
		}
}

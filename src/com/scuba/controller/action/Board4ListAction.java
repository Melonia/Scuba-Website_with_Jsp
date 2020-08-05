package com.scuba.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scuba.dao.Board4DAO;
import com.scuba.dto.Board4VO;

public class Board4ListAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/community.jsp?command=view_list";
			Board4DAO bDao = Board4DAO.getInstance();
			
			List<Board4VO> boardList = bDao.selectAllBoards();
			
			HttpSession session = request.getSession();
			session.setAttribute("boardList4", boardList);
			
			response.sendRedirect(url);
		}
}

package com.scuba.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scuba.dao.Board2DAO;
import com.scuba.dto.Board2VO;

public class Board2ListAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/post.jsp?command=view_list";
			Board2DAO bDao = Board2DAO.getInstance();
			
			List<Board2VO> boardList = bDao.selectAllBoards();
			
			HttpSession session = request.getSession();
			session.setAttribute("boardList2", boardList);
			
			response.sendRedirect(url);
		}
}

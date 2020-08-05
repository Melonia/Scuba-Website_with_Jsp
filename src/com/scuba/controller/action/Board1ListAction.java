package com.scuba.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scuba.dao.Board1DAO;
import com.scuba.dto.Board1VO;

public class Board1ListAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/edu.jsp?command=view_list";
			Board1DAO bDao = Board1DAO.getInstance();
			
			List<Board1VO> boardList = bDao.selectAllBoards();
			
			HttpSession session = request.getSession();
			session.setAttribute("boardList", boardList);
			
			response.sendRedirect(url);
		}
}

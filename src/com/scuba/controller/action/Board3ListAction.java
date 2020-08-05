package com.scuba.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scuba.dao.Board3DAO;
import com.scuba.dto.Board3VO;

public class Board3ListAction implements Action {
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/goods.jsp?command=view_list";
			Board3DAO bDao = Board3DAO.getInstance();
			
			List<Board3VO> boardList = bDao.selectAllBoards();
			
			HttpSession session = request.getSession();
			session.setAttribute("boardList3", boardList);
			
			response.sendRedirect(url);
		}
}

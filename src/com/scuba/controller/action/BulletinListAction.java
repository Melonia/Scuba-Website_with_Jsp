package com.scuba.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scuba.dao.BulletinDAO;
import com.scuba.dto.BulletinVO;

public class BulletinListAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "jsp/community.jsp?command=view_bulletin";

			BulletinDAO bDao = BulletinDAO.getInstance();
			
			List<BulletinVO> bulletin = bDao.selectAllBoards();
			
			HttpSession session = request.getSession();
			session.setAttribute("bulletin", bulletin);
			
			response.sendRedirect(url);
		}
}

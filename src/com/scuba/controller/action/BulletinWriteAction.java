package com.scuba.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scuba.dao.BulletinDAO;
import com.scuba.dto.BulletinVO;

public class BulletinWriteAction implements Action{
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
			String url = "BoardServlet?command=bulletin_list";
			
			request.setCharacterEncoding("utf-8");
			
			if(request.getAttribute("upload")==null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/bulletin.do");
				dispatcher.forward(request, response);
			}
			else {
				BulletinVO bVo = new BulletinVO();
				if((String)request.getAttribute("pictureurl")==null) {
					bVo.setPictureurl("no-image");
				}
				else {
					bVo.setPictureurl((String)request.getAttribute("pictureurl"));
				}
			
				BulletinDAO bDao = BulletinDAO.getInstance();
				bDao.insertBoard(bVo);
			
				response.sendRedirect(url);
			}
	}
}

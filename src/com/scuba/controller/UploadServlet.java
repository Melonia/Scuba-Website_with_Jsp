package com.scuba.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.scuba.controller.action.Board2WriteAction;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		String encType = "utf-8";
		int sizeLimit = 20*1024*1024;
		
		MultipartRequest multi = new MultipartRequest(
				request,
				path,
				sizeLimit,
				encType,
				new DefaultFileRenamePolicy()
				);
		
		System.out.println("파일 저장 경로:"+path);
		Enumeration files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String file = (String) files.nextElement();
			String file_name = multi.getFilesystemName(file);
			System.out.println("업로드된 파일명:"+file_name);
		}
		String userid =multi.getParameter("userid");
		String name = multi.getParameter("name");
		String pass = multi.getParameter("pass");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		request.setAttribute("userid", userid);
		request.setAttribute("name", name);
		request.setAttribute("pass", pass);
		request.setAttribute("title", title);
		request.setAttribute("content",content);
		request.setAttribute("upload", "complete");
		request.setAttribute("pictureurl1", multi.getFilesystemName("file1"));
		request.setAttribute("pictureurl2", multi.getFilesystemName("file2"));
		new Board2WriteAction().execute(request,response);
	}

}

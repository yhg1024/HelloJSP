package com.momo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.momo.dao.BoardDao;

@WebServlet("/BoardListController")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 리스트 조회후 리퀘스트 영역에 저장
		BoardDao dao = new BoardDao();
		request.setAttribute("list", dao.getList());
		
		// 페이지 전환
		// forward방식으로 전환하므로 request영역이 공유
		request.getRequestDispatcher("/06ssesion/servletEx/board.jsp").forward(request, response);
	}


}

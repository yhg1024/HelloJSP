package com.momo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.momo.common.DBConnPool;
import com.momo.dto.BoardDto;

// DBConnpool
// : 톰켓에서 제공해주는 기능을 사용하여 커넥션풀이라는 공간에 커넥션 객체를 미리 생성해놓고 사용하는 객체
// main 메서드 사용이 불가능, 서버가 실행되어야 사용이 가능
// 만약, main 메서드를 이용해서 테스트를 하고싶다면 상속받는 객체를 DBConnection으로 변경해야합니다.
public class BoardDao extends DBConnPool{
	//public int insertBoard(BoardDto dto) {
		
	//}
	/**
	 * 
	 * 게시글의 조회수를 1증가 시켜 줍니다.
	 * insert, update, delet의 반환 타입은 int(몇건이 처리 되었는지 반환)
	 * 반환타입은 int로 설정
	 */
	public int visitcountUp(String num) {
		String sql = "update board\r\n"
				+ "set visitcount = visitcount+1\r\n"
				+ "where num = ?";
		int res = 0;
		try {
			pstmt = con.prepareStatement(sql);
			// 물음표 갯수만큼 셋팅
			pstmt.setString(1, num);
			
			res = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	public int deleteBoard(String num) {
		String sql = "delete from board where num = ?";
		
		int res = 0;
		try {
			// 쿼리 실행
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	/*
	 * 한건의 게시글을 조회하여 반환합니다.
	 */
	public BoardDto getOne(String num) {
		BoardDto dto = null;
		String sql = "select * \r\n"
					+ "    from board\r\n"
					+ "where num = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new BoardDto();
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setNum(rs.getString("num"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setTitle(rs.getString("title"));
				dto.setVisitcount(rs.getString("visitcount"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	/**
	 * 게시글 목록을 반환합니다.
	 * @return
	 */
	public List<BoardDto> getList() {
		List<BoardDto>	list = new ArrayList<>();
		
			try {
				pstmt = con.prepareStatement("select * from board");
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					BoardDto dto = new BoardDto();
					dto.setContent(rs.getString("content"));
					dto.setId(rs.getString("id"));
					dto.setNum(rs.getString("num"));
					dto.setPostdate(rs.getString("postDate"));
					dto.setTitle(rs.getString(2));
					dto.setVisitcount(rs.getString("visitcount"));
					
					
					list.add(dto);
				}
				System.out.println("================" + list);
				return list;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

		
		return list;
	}
}

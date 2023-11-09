package com.momo.dao;


import java.sql.SQLException;

import com.momo.common.DBConnPool;
import com.momo.dto.MemberDto;

public class MemberDao extends DBConnPool{
	public MemberDto login(String id, String pass) {
		MemberDto memberDto = new MemberDto();
		String sql = "SELECT * "
				+ "FROM MEMBER\r\n"
				+ "    WHERE id=? "
				+ "AND pass=?";
		
		// 입력받은 사용자 정보르 DB로부터 조회
		try {
			pstmt = con.prepareStatement(sql);
			// 파라메터 셋팅
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			// 쿼리 실행
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				// 로그인 성공
				memberDto.setID(rs.getString(1));
				memberDto.setNAME(rs.getString(2));
				memberDto.setREGIDATE(rs.getString(4));
				// 사용자 정보를 Dto에 담아서 반환
				return memberDto;
			} else {
				// 로그인 실패
				return null;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
	}
}

package com.momo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnectionInsert {
	
	public static void main(String[] args) {
		String url = "jdbc:oracl:thin:@localhost:1521:ORCL";
		String id = "TEST";
		String pw = "1234";
		
		Connection conn = null;
		
		try {
			// 1. 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url,id,pw);
			
			// 3. 쿼리 생성
			String sql = "insert into job values (?, ?)";
			
			// 4. pstmt 객체 생성
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			// 5. 인파라미터 셋팅
			// 쿼리상에 ?로 작성된 부분을 값으로 변경
			
			 pstmt.setString(1, "99"); pstmt.setString(2, "값99");
			 
			 int res = pstmt.executeUpdate(); 
			 System.out.println(res + "건 생성 되었습니다.");
			 
			
			
			
			/*
			 * String del = "delete from job where job_code = '99'"; PreparedStatement pstmt
			 * = conn.prepareStatement(del); int res = pstmt.executeUpdate();
			 * System.out.println(res + "건 삭제 되었습니다.");
			 */
			
		} catch (ClassNotFoundException e) {
			System.out.println("라이브러리를 확인해주세요");
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

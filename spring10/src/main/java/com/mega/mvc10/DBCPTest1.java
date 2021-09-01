package com.mega.mvc10;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBCPTest1 {

	public static void main(String[] args) {

		
		
		DBConnectionMgr dbcp = DBConnectionMgr.getInstance();

		try {
			//1,2 단계를 해줌. 드라이버 설정, DB연결(10개)까지 dbcp가 다해줌.
			Connection con = dbcp.getConnection();
			// dbcp에서 연결해놓은 것 중 하나의 연결을 꺼내와서 3,4단계를 구현하면됨.
			String sql = "insert into member values ('sun4','sun3','sun1','sun2')";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.executeUpdate();
			dbcp.freeConnection(con, ps);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
	} //main
}// class

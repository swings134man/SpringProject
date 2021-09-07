package com.mega.mvc14;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

// DAO 는 무조건 싱글톤으로 만들어주어야 한다.
@Repository //싱글톤으로 만들어준다. 싱글톤을 만들어줄 객체가 아니면 어노테이션 달지 않는다. 
public class MemberDAO {

	@Autowired
	SqlSessionTemplate myBatis;	
	
	
	
	public boolean login(MemberDTO dto) {
		String dbId = "root";
		String dbPw = "1234";
		boolean result = false;		//컨트롤러에 결과를 알려주기 위한 변수.
		if (dto.getId().equals(dbId) && dto.getPw().equals(dbPw)) {
			result = true;
		}
		return result;
	}//login
	
	
	public void create(MemberDTO memberDTO) {
		myBatis.insert("memberMapper.create", memberDTO);
	}
	
	
	public MemberDTO read(MemberDTO memberDTO) {
		System.out.println(memberDTO.getId());
		MemberDTO dto = myBatis.selectOne("memberMapper.one", memberDTO);
		System.out.println("DB에서 dto에 저장된 내용: " + dto);
		return dto;
	}
	
	//전체목록 가져오기
	public List<MemberDTO> list() {
		List<MemberDTO> list = myBatis.selectList("memberMapper.all");
		return list;
	}
	
	public void update() {
		
	}
	
	public int delete(MemberDTO memberDTO) {
		int result = myBatis.delete("memberMapper.del", memberDTO);
		return result;
	}
	
	
}//DAO END

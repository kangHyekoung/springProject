package com.multi.mvc05;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(BbsDTO2 dto) {
		int result = my.insert("bbs.create", dto);
		return result;
	}
	
	
	public int update(BbsDTO2 dto) {
		int result = my.update("bbs.update", dto);
		return result;

	}
	

	public int delete(BbsDTO2 dto) {
		int result = my.delete("bbs.delete", dto);
		return result;

	}
	// 리스트 전체 보기
	//컨트롤 + 쉬프트 + O
	public List<BbsDTO2> list() throws Exception {
		List<BbsDTO2> list = my.selectList("bbs.list");
		return list;
	}

	// 리스트 중에서 선택한 물건 하나 보기
	public BbsDTO2 one(BbsDTO2 dto) throws Exception {
		// 3.SQL문 결정/생성
		BbsDTO2 dto2 = my.selectOne("bbs.one", dto);
		return dto2;
	}
}

package kr.co.service;

import java.util.List;

import kr.co.vo.Notice;

public interface NoticeService {
	
	// 공지사항 글 작성
	public void write(Notice notice) throws Exception;

	// 공지사항 목록 조회
	public List<Notice> list() throws Exception;
	
	// nIdx를 nGroup에 적용시킴
	public void updateNGroup(Notice notice) throws Exception;
}

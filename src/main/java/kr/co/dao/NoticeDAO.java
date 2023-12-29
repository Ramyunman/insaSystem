package kr.co.dao;

import kr.co.vo.Notice;

public interface NoticeDAO {
	
	// 공지사항 글 작성
	public void write(Notice notice) throws Exception;

}

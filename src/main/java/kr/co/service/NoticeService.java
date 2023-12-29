package kr.co.service;

import kr.co.vo.Notice;

public interface NoticeService {
	
	// 공지사항 글 작성
	public void write(Notice notice) throws Exception;

}

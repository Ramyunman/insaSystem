package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.NoticeDAO;
import kr.co.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;
	
	// 공지사항 글 작성
	@Override
	public void write(Notice notice) throws Exception {
		dao.write(notice);
	}



}

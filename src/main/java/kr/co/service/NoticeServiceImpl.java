package kr.co.service;

import java.util.List;

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
		dao.updateNGroup(notice);
	}

	// 공지사항 목록 조회
	@Override
	public List<Notice> list() throws Exception {
		return dao.list();
	}

	// nIdx를 nGroup에 적용시킴
	@Override
	public void updateNGroup(Notice notice) throws Exception {
		dao.updateNGroup(notice);
	}
	



}

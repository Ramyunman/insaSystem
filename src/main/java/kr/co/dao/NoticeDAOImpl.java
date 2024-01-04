package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.Notice;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
	private SqlSession sqlSession;
	
	// 공지사항 글 작성
	@Override
	public void write(Notice notice) throws Exception {
		sqlSession.insert("noticeMapper.insert", notice);
	}

	// 공지사항 목록 조회
	@Override
	public List<Notice> list() throws Exception {
		return sqlSession.selectList("noticeMapper.list");
	}

	// nIdx를 nGroup에 적용시킴
	@Override
	public void updateNGroup(Notice notice) throws Exception {
		sqlSession.update("noticeMapper.updateNGroup", notice);
	}

}

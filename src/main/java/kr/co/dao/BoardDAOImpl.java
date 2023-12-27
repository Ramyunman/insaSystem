package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.Criteria;
import kr.co.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sqlSession;
	
	// 직원 등록 작성
	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.insert", boardVO);
	}

	// 직원 목록 조회
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("boardMapper.list", scri);
	}

	// 직원 총 인원수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("boardMapper.listCount", scri);
	}
	
	// 직원 정보 조회
	@Override
	public BoardVO read(int employee_id) throws Exception {
		return sqlSession.selectOne("boardMapper.read", employee_id);
	}

	// 직원 정보 수정
	@Override
	public void update(BoardVO boardVO) throws Exception {
		sqlSession.update("boardMapper.update", boardVO);
	}

	// 직원 정보 삭제
	@Override
	public void delete(List<String> employeeIds) throws Exception {
		sqlSession.delete("boardMapper.delete", employeeIds);
	}

	
	

}

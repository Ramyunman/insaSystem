package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.vo.BoardVO;
import kr.co.vo.Criteria;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	// 직원 등록 작성
	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

	// 직원 목록 조회
	@Override
	public List<BoardVO> list(Criteria cri) throws Exception {
		return dao.list(cri);
	}

	// 직원 총 인원수
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}
	
	// 직원 정보 조회
	@Override
	public BoardVO read(int employee_id) throws Exception {
		return dao.read(employee_id);
	}

	// 직원 정보 수정
	@Override
	public void update(BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}

	// 직원 정보 삭제
	@Override
	public void delete(List<String> employeeIds) throws Exception {
		dao.delete(employeeIds);
	}

	

}

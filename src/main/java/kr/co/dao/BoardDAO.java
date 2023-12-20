package kr.co.dao;

import java.util.List;

import kr.co.vo.BoardVO;

public interface BoardDAO {
	
	// 직원 등록 작성
	public void write(BoardVO boardVO) throws Exception;
	
	// 직원 목록 조회
	public List<BoardVO> list() throws Exception;
	
	// 직원 정보 조회
	public BoardVO read(int employee_id) throws Exception;
	
	// 직원 정보 수정
	public void update(BoardVO boardVO) throws Exception;
	
	// 직원 정보 삭제
	public void delete(int employee_id) throws Exception;

}

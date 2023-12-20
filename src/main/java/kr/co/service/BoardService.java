package kr.co.service;

import java.util.List;

import kr.co.vo.BoardVO;

public interface BoardService {
	
	// 직원 등록 작성
	public void write(BoardVO boardVO) throws Exception;
	
	// 직원 목록 조회
	public List<BoardVO> list() throws Exception;

}

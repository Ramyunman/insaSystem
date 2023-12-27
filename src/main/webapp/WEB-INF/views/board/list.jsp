<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<meta charset="UTF-8">
		<title>직원 게시판 목록</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<style>
	.container {
	  display: flex;
	  justify-content: center;	/* 가로 중앙 정렬 */
	  align-items: center;		/* 세로 중앙 정렬 */
	  margin-bottom: 25px;
	  margin-top: 20px;
	}
	
	.radio-buttons {
	  display: flex;
	}
	
	.radio-buttons input[type="radio"],
	.radio-buttons label {
	  margin-right: 10px;
	}
	
	input[type="text"] {
	  margin-right: 10px;
	}
	
	button {
	  padding: 8px 12px;
	  background-color: #007bff;
	  color: white;
	  border: none;
	  cursor: pointer;
	}
	</style>
	</head>
	<body>
		<div class="container-fluid">
		  <div class="row">
		    <div class="col testCss1"></div>				
		    <div class="col-9 testCss2">	<!-- 전체 화면 그리드 중앙 -->
		    	
		    	<div>
		    		<%@include file="nav.jsp" %>
		    	</div>
		    	
			    <div class="container"> <!-- 라디오 버튼 3개 + 검색창 -->
					<!-- 라디오 버튼 3개 -->
					<div class="radio-buttons search">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="searchType" id="inlineRadio1" value="hl" ${scri.searchType == 'hl' ? 'checked' : ''}>
	  						<label class="form-check-label" for="inlineRadio1">전체</label>
						</div>
						<div class="form-check form-check-inline">
						    <input class="form-check-input" type="radio" name="searchType" id="inlineRadio2" value="h" ${scri.searchType == 'h' ? 'checked' : ''}>
	  						<label class="form-check-label" for="inlineRadio1">근무자</label>
						</div>
						<div class="form-check form-check-inline">
						    <input class="form-check-input" type="radio" name="searchType" id="inlineRadio3" value="l" ${scri.searchType == 'l' ? 'checked' : ''}>
	  						<label class="form-check-label" for="inlineRadio1">퇴사자</label>
	  					</div>
					</div>
					
					<!-- 텍스트 입력 -->
					<input type="text" name="keyword" id="keywordInput" placeholder="성명" value="${scri.keyword}"/>
					
					<!-- 검색 버튼 -->
					<button type="button" class="btn btn-light" id="searchBtn">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					  	<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
						</svg>
					</button>
					<script>
						$(function() {
							$('#searchBtn').click(function() {
							// URL 조립
							var url = "list" + '${pageMaker.makeQuery(1)}' + 
									  "&searchType=" + $("input[name='searchType']:checked").val() +	// 라디오 버튼 선택값 가져오기
									  "&keyword=" + encodeURIComponent($('#keywordInput').val());
							
							// 검색 결과 페이지로 이동
							window.location.href = url;
							});
						});
					</script>
				</div>

				<table class="table table-striped" id="employeeList">
				  <thead class=thead-dark>
				    <tr>
				      <th scope="col">선택</th>
				      <th scope="col">사원번호</th>
				      <th scope="col">성명</th>
				      <th scope="col">주민번호</th>
				      <th scope="col">부서명</th>
				      <th scope="col">직위</th>
				      <th scope="col">입사일</th>
				      <th scope="col">퇴사일</th>
				      <th scope="col">Email</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach items="${list}" var="emp">
				    <tr>
				      <td><input type="checkbox" id="chBox" name="chBox" value="${emp.employee_id}"></td>
				      <td><a href="/board/readView?employee_id=${emp.employee_id }"><c:out value="${emp.employee_id }"/></a></td>
				      <td><c:out value="${emp.name }"/></td>
				      <td><c:out value="${emp.reg_no }"/></td>
				      <td><c:out value="${emp.departments.department_name }"/></td>
				      <td>과장</td>
				      <td><c:out value="${emp.hire_date }"/></td>
				      <td><c:out value="${emp.leave_date }"/></td>
				      <td><c:out value="${emp.email }"/></td>
				    </tr>
				    </c:forEach>
				  </tbody>
				</table>
				
				<!-- 페이지네이션 -->
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				  	<c:if test="${pageMaker.prev}">
				    	<li class="page-item"><a class="page-link" href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
				    </c:if>
				    
				    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				    	<li class="page-item"><a class="page-link" href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
				    </c:forEach>
				    
				    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">	
				    	<li class="page-item"><a class="page-link" href="list${pageMaker.makeSearch(pageMaker.endPage  + 1)}">다음</a></li>
				    </c:if>
				  </ul>
				</nav>
				
				<button type="submit" class="btn btn-primary create_btn">추가</button>
				<button type="button" class="btn btn-secondary delete_btn">삭제</button>
		    </div>	<!-- 전체 화면 그리드 중앙 -->
		    <div class="col testCss3"></div>
		  </div>
		</div>
	<script>
	$(document).ready(function() {			
	    // 추가
	    $(".create_btn").on("click", function() {
	        location.href = "/board/writeView"; // 페이지 경로 확인 후 수정
	    });
	    
	    // 삭제
	    $(".delete_btn").on("click", function() {		
	        var deleteYN = confirm("삭제하시겠습니까?");
	        
	        if(deleteYN == true) {
	        	
	        	var idList = [];
		        
		        $("input[name='chBox']:checked").each(function() {
		            idList.push($(this).val());		// 체크된 것만 값을 뽑아서 배열에 push
		        });
		        console.log(idList);
		       	        	        
		        $.ajax({
		            url : "/board/delete", // AJAX 요청의 경로 확인 후 수정
		            type : "POST",
		            data : { 
		            	empIdList : idList 
		            },
		            success : function(response) {
		                console.log("서버 응답: " + response + " 삭제 성공");
		          		window.location.href = "/board/list";
		            },
		            error: function(xhr, status, error) {
		                console.error("에러: " + error);
		            }
		        });	
	        }
	    });
	});
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	</body>
</html>
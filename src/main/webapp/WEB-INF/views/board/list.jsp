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
	</head>
	<body>
		<div class="container-fluid">
		  <div class="row">
		    <div class="col testCss1"></div>				
		    <div class="col-9 testCss2">	<!-- 전체 화면 그리드 중앙 -->
		    	
		    	<div>
		    		<%@include file="nav.jsp" %>
		    	</div>
		    	
		    	<div>
			    	<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
					  <label class="form-check-label" for="inlineRadio1">전체</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">근무자</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
					  <label class="form-check-label" for="inlineRadio3">퇴사자</label>
					</div>
					
					<form class="form-inline">
					  <div class="form-group mx-sm-3 mb-2">
					    <label for="inputPassword2" class="sr-only">Password</label>
					    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
					  </div>
					  <button type="submit" class="btn btn-primary mb-2">Confirm identity</button>
					</form>
					
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
				    	<li class="page-item"><a class="page-link" href="list${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
				    </c:if>
				    
				    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				    	<li class="page-item"><a class="page-link" href="list${pageMaker.makeQuery(idx)}">${idx}</a></li>
				    </c:forEach>
				    
				    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">	
				    	<li class="page-item"><a class="page-link" href="list${pageMaker.makeQuery(pageMaker.endPage  + 1)}">다음</a></li>
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
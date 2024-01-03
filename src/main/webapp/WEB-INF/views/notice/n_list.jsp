<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
	.noticeTitle {
		text-align: center;
		margin-top: 25px;
		margin-bottom: 25px;
	}
	.card {
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
		    <div class="col testCss1"></div>				
		    <div class="col-9 testCss2">	<!-- 전체 화면 그리드 중앙 -->
		    	
		    	<div class="noticeTitle">
					<h1>계층형 게시판</h1>
				</div>
	
				<div>
					<%@include file="nav2.jsp" %>
				</div>
	
				<div class="card"">
					<div class="card-body">
				    총 게시글 수 :
				  	</div>
				</div>
	
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">No</th>
				      <th scope="col">제목</th>
				      <th scope="col">내용</th>
				      <th scope="col">작성자</th>
				      <th scope="col">조회수</th>
				      <th scope="col">작성일자</th>
				    </tr>
				  </thead>
				  <tbody>
				    <c:forEach items="${nList}" var="notice">
				  	<tr>
				      <td><c:out value="${notice.nIdx }"/></td>
				      <td><c:out value="${notice.nTitle }"/></td>
				      <td><c:out value="${notice.nContent }"/></td>
				      <td><c:out value="${notice.nWriter }"/></td>
				      <td><c:out value="${notice.nViews}"/></td>
				      <td><c:out value="${notice.nDate}"/></td>
				    </tr>
				  	</c:forEach>
				  </tbody>
				</table>
				<button type="button" class="btn btn-primary create_btn">추가</button>
		    </div>	<!-- 전체 화면 그리드 중앙 -->
		    <div class="col testCss3"></div>
		</div>
	</div>
<script>
$(document).ready(function() {
    // 추가
    $(".create_btn").on("click", function() {
        location.href = "/notice/n_writeView"; // 페이지 경로 확인 후 수정
    });
})
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
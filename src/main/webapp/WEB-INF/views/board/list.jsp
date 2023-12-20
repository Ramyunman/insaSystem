<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>직원 게시판 목록</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	</head>
	<body>
		<div class="container-fluid">
		  <div class="row">
		    <div class="col testCss1"></div>				
		    <div class="col-9 testCss2">	<!-- 전체 화면 그리드 중앙 -->
		    	Insa관리시스템
		    	<nav>
		    	사원목록
				</nav>
				
				<table class="table table-striped">
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
				      <td></td>
				      <td>
				      	<a href="/board/readView?employee_id=${emp.employee_id }"><c:out value="${emp.employee_id }"/></a>
				      </td>
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
					
		    </div>	<!-- 전체 화면 그리드 중앙 -->
		    <div class="col testCss3"></div>
		  </div>
		</div>
		
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	</body>
</html>
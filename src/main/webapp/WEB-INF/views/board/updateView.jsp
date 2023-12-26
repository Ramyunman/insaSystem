<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<meta charset="UTF-8">
		<title>직원 정보 수정뷰</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	</head>
	
	<script type="text/javascript">
		$(document).ready(function() {
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function() {
				event.preventDefault();
				location.href = "/board/list";
			})
			
			$(".update_btn").on("click", function() {
				if(fn_valiChk()) {
					return false;
				}
				formObj.attr("action", "/board/update");
				formObj.attr("method", "post");
				formObj.submit();
			})
		})
		
		function fn_valiChk() {
			var updateForm = $("form[name='updateForm'] .chk").length;
			for(var i=0; i<updateForm; i++) {
				console.log($(".chk").eq(i).val()); // 검증 중인 값을 로그에 기록
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
	
	<body>
		<div class="container-fluid">
		  <div class="row">
		    <div class="col testCss1"></div>				
		    <div class="col-9 testCss2">	<!-- 전체 화면 그리드 중앙 -->
		    	
		    	<div>
		    		<%@include file="nav.jsp" %>
		    	</div>
		    	
				<div class="container-fluid">	<!-- 등록 폼 그리드-->
				  <div class="row">
				    <div class="col-8">
					    <form role="form" name="updateForm" method="post" action="/board/update">
					    	<input type="hidden" id="employee_id" name="employee_id" value="${update.employee_id }">
							<div class="form-row">
								<div class="form-group col-md-6">
							      <label for="name">성명</label>
							      <input type="text" class="form-control chk" id="name" name="name" value="${update.name }" title="성명을 입력하세요.">
							    </div>
							    <div class="form-group col-md-6">
							      <label for="reg_no">주민번호</label>
							      <input type="text" class="form-control chk" id="reg_no" name="reg_no" value="${update.reg_no }" title="주민번호를 입력하세요.">
							    </div>
							</div>
							<div class="form-group">
								<label for="address">주소</label>
							    <textarea class="form-control chk" id="address" name="address" rows="3" title="주소를 입력하세요."><c:out value="${update.address}"/></textarea>
							</div>
							<div class="form-row">
							  	<div class="form-group col-md-4">
							      <label for="hire_date">입사일</label>
							      <input type="date" class="form-control chk" id="hire_date" name="hire_date" value="${update.hire_date }" title="입사일을 입력하세요.">
							    </div>
							    <div class="form-group col-md-4">
							      <label for="department_id">부서명</label>
							      <select id="inputDepartmentName" class="form-control chk" id="department_id" name="department_id" value="${update.department_id }" title="부서명을 입력하세요.">
							        <option value="10">관리부</option>
			        				<option value="20">영업부</option>
			        				<option value="30">구매부</option>
			        				<option value="40">인사부</option>
			        				<option value="50">배송부</option>
			        				<option value="60">IT사업부</option>
							      </select>
							    </div>
							    <div class="form-group col-md-4">
							      <label for="leave_date">퇴사일</label>
							      <input type="date" class="form-control" id="leave_date" name="leave_date" value="${update.leave_date }">
							    </div>
							</div>
							<div class="form-row">
							    <div class="form-group col-md-4">
							      <label for="bank_id">급여은행</label>
							      <select id="inputBankName" class="form-control chk" id="bank_id" name="bank_id" value="${update.bank_id }" title="급여은행을 입력하세요.">
							        <option value="10">국민은행</option>
			        				<option value="11">기업은행</option>
			        				<option value="12">우리은행</option>
			        				<option value="13">농협은행</option>
							      </select>
							    </div>
							    <div class="form-group col-md-8">
							      <label for="bank_account">급여계좌</label>
							      <input type="text" class="form-control chk" id="bank_account" name="bank_account" value="${update.bank_account }" title="급여계좌를 입력하세요.">
							    </div>
							</div>
							<div class="form-group">
							    <label for="phone_number">전화번호</label>
							    <input type="text" class="form-control chk" id="phone_number" name="phone_number" value="${update.phone_number }" title="전화번호를 입력하세요.">
							</div>
							<div class="form-group">
								<label for="email">Email</label>
							  	<input type="text" class="form-control chk" id="email" name="email" value="${update.email }" title="Email을 입력하세요.">
							</div>		  
								<button type="submit" class="btn btn-primary update_btn">수정하기</button>
								<button type="submit" class="btn btn-secondary cancel_btn">취소</button>
							</form>
				    	</div>
				    <div class="col-4"></div>
				  </div>
				</div>	<!-- 등록 폼 그리드 -->
		    </div>	<!-- 전체 화면 그리드 중앙 -->
		    <div class="col testCss3"></div>
		  </div>
		</div>
		
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>글 작성</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	</head>
<!-- 	<style>
		.testCss1 {
			border: black;
			background-color: gold;
		}
		.testCss2 {
			border: black;
			background-color: red;
		}
		.testCss3 {
			border: black;
			background-color: blue;
		}
	</style> -->
	<body>
		<div class="container-fluid">
		  <div class="row">
		    <div class="col testCss1">
		      왼쪽
		    </div>
		    <div class="col-9 testCss2">
		    	인사관리시스템
		    	<nav>
		    	사원목록
				</nav>
				
				<form>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputName">성명</label>
				      <input type="text" class="form-control" id="inputName" placeholder="성명">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputRegNo">주민번호</label>
				      <input type="text" class="form-control" id="inputRegNo" placeholder="주민번호">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress">주소</label>
				    <input type="text" class="form-control" id="inputAddress" placeholder="주소">
				  </div>
				  <div class="form-row">
				  	<div class="form-group col-md-4">
				      <label for="inputHireDate">입사일</label>
				      <input type="text" class="form-control" id="inputHireDate" placeholder="입사일">
				    </div>
				    <div class="form-group col-md-4">
				      <label for="inputDepartmentName">부서명</label>
				      <select id="inputState" class="form-control">
				        <option selected>Choose...</option>
				        <option>...</option>
				      </select>
				    </div>
				    <div class="form-group col-md-4">
				      <label for="inputLeaveDate">퇴사일</label>
				      <input type="text" class="form-control" id="inputLeaveDate" placeholder="퇴사일">
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-4">
				      <label for="inputBankName">급여은행</label>
				      <select id="inputBankName" class="form-control">
				        <option selected>Choose...</option>
				        <option>...</option>
				      </select>
				    </div>
				    <div class="form-group col-md-8">
				      <label for="inputBankAccount">급여계좌</label>
				      <input type="text" class="form-control" id="inputBankAccount" placeholder="급여계좌">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPhoneNumber">전화번호</label>
				    <input type="text" class="form-control" id="inputPhoneNumber" placeholder="전화번호">
				  </div>
				  <div class="form-group">
				  	<label for="inputEmail">Email</label>
				  	<input type="text" class="form-control" id="inputEmail" placeholder="Email">
				  </div>
				  				  
				  <button type="submit" class="btn btn-primary">저장</button>
				</form>
		    </div>
		    <div class="col testCss3">
		      오른쪽
		    </div>
		  </div>
		</div>
		
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	</body>
</html>
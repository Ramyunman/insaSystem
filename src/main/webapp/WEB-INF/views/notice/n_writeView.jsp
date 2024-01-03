<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>공지사항 작성뷰</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 저장
		var formObj = $("form[name='nWriteForm']");
		$(".write_btn").on("click", function() {
			if(fn_valiChk()) {
				return false;
			}
			formObj.attr("action", "/notice/write");
			formObj.attr("method", "post");
			formObj.submit();
		});
			
		// 취소
		$(".cancel_btn").on("click", function() {
			event.preventDefault();
			location.href = "/notice/n_list";
		});
	})
	function fn_valiChk() {
		var regForm = $("form[name='nWriteForm'] .chk").length;
		for(var i = 0; i<regForm; i++) {
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
		    		<%@include file="nav2.jsp" %>
		    	</div>
		    	
				<div class="container-fluid">	<!-- 등록 폼 그리드-->
				  <div class="row">
				    <div class="col-8">
					    <form role="form" name="nWriteForm" method="post" action="/notice/write">
							<div class="form-row">
								<div class="form-group col-md-6">
							      <label for="name">성명</label>
							      <input type="text" class="form-control chk" id="name" name="name" placeholder="성명" title="성명을 입력하세요." onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
							    </div>
							    <div class="form-group col-md-6">
							      <label for="reg_no">주민번호</label>
							      <input type="text" class="form-control chk" id="reg_no" name="reg_no" placeholder="주민번호" title="주민번호를 입력하세요." onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
							    </div>
							</div>
							<div class="form-group">
								<label for="address">주소</label>
							    <textarea class="form-control chk" id="address" name="address" rows="3" placeholder="주소" title="주소를 입력하세요."></textarea>
							</div>
							<div class="form-group">
							    <label for="phone_number">전화번호</label>
							    <input type="text" class="form-control chk" id="phone_number" name="phone_number" placeholder="전화번호" title="전화번호를 입력하세요." onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
							</div>
							<div class="form-group">
								<label for="email">Email</label>
							  	<input type="text" class="form-control chk" id="email" name="email" placeholder="Email" title="Email을 입력하세요." onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
							</div>		  
								<button type="submit" class="btn btn-primary write_btn">등록</button>
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
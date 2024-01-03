<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.menu {
	margin-left: 20px;
	margin-bottom: 20px;
}
.menu a {
	display: inline-block;
	margin-right: 20px;
}
header {
	text-align: center;
	margin-top: 30px;
	margin-bottom: 30px;
}

</style>
</head>
<body>
	<div>
		<header class="notice">
			<h1>공지사항</h1> 
		</header>
		<hr/>
			<div class="menu">
				<a href="/board/list">사원목록</a>
				<a href="/notice/n_list">공지사항</a>				
			</div>
		<hr/>	
	</div>
</body>
</html>
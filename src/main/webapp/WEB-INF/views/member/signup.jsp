<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign-up</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
* {
	box-sizing: border-box;
}

div {
	/* border: 1px solid black; */
	
}

.container {
	border: 1px solid black;
	width: 400px;
	margin: auto;
}

.header {
	border: 1px solid black;
	text-align: center;
	font-weight: bold;
	height: 30px;
	line-height: 27px;
}

.main::after {
	content: '';
	display: block;
	clear: both;
}

.left {
	border: 1px solid black;
	float: left;
	width: 30%;
	text-align: center;
	height: 30px;
	line-height: 27px;
}

.right {
	float: left;
	width: 70%;
	height: 30px;
	line-height: 27px;
}

input {
	width: 100%;
	height: 100%;
}

.footer {
	border: 1px solid black;
	text-align: center;
	height: 30px;
	line-height: 27px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">회원가입</div>
		<form action="/member/signUp" method="post">
			<div class="main">
				<div class="left">아이디</div>
				<div class="right">
					<input type="text" name="id">
				</div>
				<div class="left">패스워드</div>
				<div class="right">
					<input type="text" name="pw">
				</div>
				<div class="left">패스워드 확인</div>
				<div class="right">
					<input type="text">
				</div>
				<div class="left">이름</div>
				<div class="right">
					<input type="text" name="name">
				</div>
				<div class="left">전화번호</div>
				<div class="right">
					<input type="text" name="phone">
				</div>
			</div>
			<div class="footer">
				<a href="/"><button>홈으로</button></a>
				<button>회원가입</button>
			</div>
		</form>
	</div>
</body>
</html>
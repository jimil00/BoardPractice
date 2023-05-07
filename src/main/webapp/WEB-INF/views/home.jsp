<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
* {
	box-sizing: border-box;
	text-align: center;
}

div {
	/* border: 1px black solid; */
	
}

.container {
	border: 1px solid black;
	width: 400px;
	margin: auto;
}

.main::after {
	content: '';
	display: block;
	clear: both;
}

.left {
	border: 1px solid black;
	float: left;
	width: 35%;
	height: 30px;
	line-height: 27px;
}

.right {
	float: left;
	width: 65%;
	height: 30px;
}

input {
	width: 100%;
	height: 100%;
}

.footer {
	border: 1px solid black;
	height: 30px;
	line-height: 27px;
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${loginID != null }">
			<div class="container">
				<div class="header">wlals123 님 안녕하세요.</div>
				<div class="main">
					<div class="content">
						<button>자유게시판</button>
					</div>
					<div class="content">
						<button>마이페이지</button>
					</div>
					<div class="content">
						<button>로그아웃</button>
					</div>
					<div class="content">
						<button>회원탈퇴</button>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<form action="/member/login" method="post">
			<div class="container">
				<div class="main">
					<div class="left">아이디</div>
					<div class="right">
						<input type="text" placeholder="아이디를 입력하세요.">
					</div>
					<div class="left">패스워드</div>
					<div class="right">
						<input type="text" placeholder="패스워드를 입력하세요.">
					</div>
				</div>
				<div class="footer">
					<button>로그인</button>
					<a href="/member/toSignup"><button>회원가입</button></a>
				</div>
			</div>
			</form>
		</c:otherwise>
	</c:choose>
</body>
</html>
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
	width: 700px;
	margin: auto;
}

.header {
	text-align: center;
	font-weight: bold;
	height: 30px;
	line-height: 27px;
	background-color: wheat;
}

.main::after {
	content: '';
	display: block;
	clear: both;
}

.left {
	float: left;
	width: 30%;
	text-align: center;
	height: 30px;
	line-height: 27px;
	border: 1px solid black;
}

.right {
	float: left;
	width: 70%;
	height: 30px;
	line-height: 27px;
}

input {
	width: 60%;
	height: 100%;
}

.footer {
	text-align: center;
	height: 30px;
	line-height: 27px;
	background-color: wheat;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">회원가입</div>
		<form action="/member/signUp" method="post" id="frm">
			<div class="main">
				<div class="left">아이디</div>
				<div class="right">
					<input type="text" name="id">
				</div>
				<div class="left">패스워드</div>
				<div class="right">
					<input type="text" name="pw" id="pw">
				</div>
				<div class="left">패스워드 확인</div>
				<div class="right">
					<input type="text" id="pwchk"> 
					<span id="pwchkTrue"></span>
					<span id="pwchkFalse"></span>
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
				<a href="/"><button type="button">홈으로</button></a>
				<button>회원가입</button>
			</div>
		</form>
	</div>
	<script>
		// 패스워드 일치 불일치 여부
		pw.onkeyup = function() {
			let pw = document.getElementById("pw").value;
			let pwchk = document.getElementById("pwchk").value;
	
			if (pw == pwchk) {
				let pwchkTrue = document.getElementById("pwchkTrue");
				pwchkTrue.innerHTML = "패스워드 일치";
				pwchkFalse.innerHTML = "";
			} else {
				let pwchkFalse = document.getElementById("pwchkFalse");
				pwchkFalse.innerHTML = "패스워드 불일치";
				pwchkTrue.innerHTML = "";
			} 
		};
	
		pwchk.onkeyup = function() {
			let pw = document.getElementById("pw").value;
			let pwchk = document.getElementById("pwchk").value;
	
			if (pw == pwchk) {
				let pwchkTrue = document.getElementById("pwchkTrue");
				pwchkTrue.innerHTML = "패스워드 일치";
				pwchkFalse.innerHTML = "";
			} else {
				let pwchkFalse = document.getElementById("pwchkFalse");
				pwchkFalse.innerHTML = "패스워드 불일치";
				pwchkTrue.innerHTML = "";
			} 
		};
		
		// 패스워드 불일치하면 회원가입 막기
		let frm = document.getElementById("frm");
		frm.onsubmit = function() {
			let pw = document.getElementById("pw").value;
			let pwchk = document.getElementById("pwchk").value;
				if (!(pw == pwchk)) {
					alert("패스워드가 일치하지 않습니다.");
					return false;
				}
		}
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>loginForm</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/sign-in/">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">

	<main class="form-signin">
		<form>
			<img class="mb-4" src="../assets/brand/dgmk_ci.png" alt=""
				width="254" height="57">
			<h1 class="h3 mb-3 fw-normal">로그인</h1>

			<div class="form-floating">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="name@example.com"> <label for="floatingInput">이메일</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password"> <label for="floatingPassword">비밀번호</label>
			</div>

			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="remember-me">
					자동 로그인
				</label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="button"
				id="btnLogin" name="">로sadfasd그인</button>
			<button class="w-100 btn btn-lg btn-warning" type="submit">카카오
				로그인</button>
			<button class="w-100 btn btn-lg btn-success" type="submit">네이버
				로그인</button>
			<button class="w-100 btn btn-lg btn-light" type="submit">구글
				로그인</button>
			<button class="w-100 btn btn-lg btn-dark" type="submit">페이스북
				로그인</button>
			<p class="mt-5 mb-3 text-muted">&copy; Danggeun Market Inc.</p>
		</form>
	</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script type="text/javascript">

$("#btnLogin").on("click", function(){
	/* 	if(validation() == false) return false; */
	$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/infra/xdmin/member/loginProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/infra/xdmin/member/loginForm";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});

	</script>

</body>
</html>

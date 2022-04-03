<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

		<select name="shIfmmDelNy">
							<option value="">::삭제여부::
							<option value="1" <c:if test="${vo.shIfmmDelNy eq 1 }">selected</c:if>>Y
							<option value="0" <c:if test="${vo.shIfmmDelNy eq 0 }">selected</c:if>>N
					</select>
					<select name="shOption" id="shOption">
							<option value="2">전체
							<option value="1">id
							<option value="0">이름
					</select> || 회원이름 : <input type="text" name="shIfmmName" id="shIfmmName">
						<input type="submit" id="btnSubmit" name="search"> <!-- <input type="submit" id="btnSubmit2" name="search"> -->
						<br>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../../_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.col {
	display: flex;
	align-items: center;
}

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
<link href="footers.css" rel="stylesheet">

<title>memberList</title>
</head>

<body>


	<!-- header-s -->
	<div class="container-fluid" style="height: 60px;">
		<div class="row h-100">
			<div class="col-4 col-sm-2 m-auto">
				<img src="../../../images/dgmk_ci.png"
					class="img-fluid rounded mx-auto d-block">
			</div>
			<div class="col-sm-4 my-auto d-none d-sm-block">
				<p class="mb-0 fs-5 fw-bold">Durian System</p>
			</div>
			<div class="col-9 col-sm-2 my-auto text-end">
				<a class="d-block d-sm-none" data-bs-toggle="offcanvas"
					href="offcanvasExample" aria-controls="offcanvasExample"> <i
					class="fa-solid fa-bars" style="font-size: 1.8rem;"></i>
				</a>
			</div>
			<div class="col-sm-3 my-auto d-none d-sm-block">
				<div class="row">
					<div class="col-6 my-auto">
						<img src="../../../images/kmj.jpg"
							class="image rounded-circle border border-3 float-end"
							style="width: 40px; height: 40px;">
					</div>
					<div class="col my-auto">
						<p class="mb-0">Minsoo Choi</p>
						<p class="mb-0">
							<small>Administrator</small>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-1 my-auto text-end d-none d-sm-block">
				<select class="form-select form-select-sm" name="" id="sel1">
					<option>언어</option>
					<option>한국어</option>
					<option>English</option>
				</select>
			</div>
		</div>
	</div>

	<!-- header-e -->

	<!-- gnb-s -->
	<nav class="navbar navbar-expand-sm navbar-light d-none d-sm-block"
		style="background-color: tomato;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigaton">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
			<%-- 		<select name="shIfmmDelNy">
							<option value="">::삭제여부::
							<option value="1" <c:if test="${vo.shIfmmDelNy eq 1 }">selected</c:if>>Y
							<option value="0" <c:if test="${vo.shIfmmDelNy eq 0 }">selected</c:if>>N
					</select>
					<select name="shOption" id="shOption">
							<option value="2">전체
							<option value="1">id
							<option value="0">이름
					</select> || 회원이름 : <input type="text" name="shIfmmName" id="shIfmmName">
						<input type="submit" id="btnSubmit" name="search"> <!-- <input type="submit" id="btnSubmit2" name="search"> -->
						<br> --%>
				</div>
			</div>
		</div>
	</nav>

	<!-- gnb-e -->

	<!-- container - s -->
	<div class="container">
		<div class="col-12">
			<table class="table table-striped table-hover">
				<thead>
					<tr class="text-center">
						<th scope="col">No.</th>
						<th scope="col">이름</th>
						<th scope="col">아이디</th>
						<th scope="col">비밀번호</th>
						<th scope="col">자녀</th>
					</tr>
				</thead>

				<c:choose>
					<c:when test="${fn:length(test) eq 0}">
						<tr>
							<td class="text-center" colspan="100">There is no data!</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${test}" var="item" varStatus="status">
							<tbody>
								<tr class="text-center">
									<td scope="row"><c:out value="${item.ifmmSeq}" /></td>
									<td><a
										href="/infra/xdmin/member/memberView?ifmmSeq=<c:out value="${item.ifmmSeq}"/>"><c:out
												value="${item.ifmmName}" /></a></td>
									<td><c:out value="${item.ifmmId}" /></td>
									<td><c:out value="${item.ifmmPassword}" /></td>
									<td><c:out value="${item.ifmmChildrenNum}명" /></td>
								</tr>
							</tbody>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
		<div class="row">
			<div class="col">
				<a href="./memberForm2" class="btn btn-success">등록</a>
			</div>
		</div>
	</div>



	<%-- 		<Button onclick="deleteUser(${item.ifmmSeq})"> 삭제 </Button> --%>
	<br>




	<div class="row">
		<div class="col"></div>
		<div class="col-4">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
		</div>
		<div class="col">
			<div class="col"></div>
		</div>
	</div>

	<div class="b-example-divider"></div>

	<div class="container">
		<footer class="row row-cols-5 py-5 my-5 border-top">
			<div class="col">
				<a href="/"
					class="d-flex align-items-center mb-3 link-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32">
							<use xlink:href="#bootstrap" /></svg>
				</a>
				<p class="text-muted">&copy; 당근마켓</p>
			</div>

			<div class="col"></div>

			<div class="col">
				<h5></h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">광고주센터</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">당근페이</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">동네가게</a></li>
				</ul>
			</div>

			<div class="col">
				<h5></h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">회사 소개</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">채용</a></li>
				</ul>
			</div>

			<div class="col">
				<h5></h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">이용약관</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">개인정보처리방침</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">위치기반서비스 이용약관</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>
		</footer>
	</div>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	
	<script>
	$(document).ready(function() {
		var searchWord = "${searchWord}";
		var searchOption = "${searchOption}"
		
		if(searchWord != "") {
			$("#shIfmmName").val(searchWord);
		}
		
		if(searchOption != 2) {
			$("#shOption").val(searchOption).prop("selected", true);
		}
		
		var input = document.getElementById("shIfmmName");
		
		input.addEventListener("keyup", function(event) {
			if(event.keyCode ===13) {
				event.preventDefault();
				search();
			}
		})
		
	})

	function deleteUser(seq) {
		// json 형식으로 데이터 set
		var param = {
			ifmmSeq : seq
		}

		// ajax 통신
		$.ajax({
			type : "POST", // HTTP method type(GET, POST) 형식이다.
			url : "/infra/member/memberDel", // 컨트롤러에서 대기중인 URL 주소이다.
			data : param, // Json 형식의 데이터이다.
			success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
				// 응답코드 > 0000
				alert(res.code);

			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
				alert("통신 실패.")
			}
		});
	}

	$("#btnSubmit").on("click", function() {
		search();
	})
	
	function search(){
		if ($("#shIfmmName").val() == "" || $("#shIfmmName").val() == null) {
			alert("znznfnvldzmvhdm 이다.");
			$("#shIfmmName").focus();
		}
		var param = {	
			shIfmmName : $("#shIfmmName").val()
		}

		var url = "/infra/xdmin/member/memberList?";
		var data = "shIfmmName=" +  $("#shIfmmName").val() + "&shOption=" + $("select[name=shOption]").val();
		
		location.href = url + data;
		
/* 		$.ajax({
			type : "POST", // HTTP method type(GET, POST) 형식이다.
			url : "/infra/member/memberListAjax", // 컨트롤러에서 대기중인 URL 주소이다.
			data : param, // Json 형식의 데이터이다.
			success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
				// 응답코드 > 0000
				
				console.log(res);
				console.log(res.list);
				
				var listHtml = "";
				
				for (var i = 0; i < res.list.length; i++) {
					listHtml += res.list[i].ifmmSeq + " " + res.list[i].ifmmName + " " + res.list[i].ifmmPassword;

					$("#userList").html(listHtml);
				}

			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
				alert("통신 실패.")
			}
		}); */
	}
</script>
	
	
	<!-- <script>
	$(document).ready(function() {
		var searchWord = "${searchWord}";
		var searchOption = "${searchOption}"
		
		if(searchWord != "") {
			$("#shIfmmName").val(searchWord);
		}
		
		if(searchOption != 2) {
			$("#shOption").val(searchOption).prop("selected", true);
		}
		
		var input = document.getElementById("shIfmmName");
		
		input.addEventListener("keyup", function(event) {
			if(event.keyCode ===13) {
				event.preventDefault();
				search();
			}
		})
		
	})
	
	$("#btnSubmit").on("click", function() {
		search();
	})
	
	function search(){
		if ($("#shIfmmName").val() == "" || $("#shIfmmName").val() == null) {
			alert("으앙.");
			$("#shIfmmName").focus();
		}
		var param = {	
			shIfmmName : $("#shIfmmName").val()
		}

		var url = "/infra/xdmin/member/memberList?";
		var data = "shIfmmName=" +  $("#shIfmmName").val() + "&shOption=" + $("select[name=shOption]").val();
		
		location.href = url + data;
		
	
		function deleteUser(seq) {
			// json 형식으로 데이터 set
			var param = {
				ifmmSeq : seq
			}

/* 			// ajax 통신
			$.ajax({
				type : "POST", // HTTP method type(GET, POST) 형식이다.
				url : "/infra/member/memberDel", // 컨트롤러에서 대기중인 URL 주소이다.
				data : param, // Json 형식의 데이터이다.
				success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
					// 응답코드 > 0000
					alert(res.code);
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
					alert("통신 실패.")
				}
			}); */
		} 
	</script> -->



</body>
</html>




<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="get" action="/infra/xdmin/index/indexForm">

<html lang="en">
<head>
<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.88.1">	
    
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
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

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }	
</style>
    <!-- Custom styles for this template -->
    <link href="footers.css" rel="stylesheet">
    
<title>indexView</title>
</head>

<body>


<!-- header-s -->
<div class="container-fluid" style="height: 60px;">
	<div class="row h-100">
		<div class="col-4 col-sm-2 m-auto">
			<img src ="../../../images/dgmk_ci.png" class="img-fluid rounded mx-auto d-block">
		</div>
		<div class="col-sm-4 my-auto d-none d-sm-block">
			<p class="mb-0 fs-5 fw-bold">Durian System</p>
		</div>
		<div class="col-9 col-sm-2 my-auto text-end">
			<a class="d-block d-sm-none" data-bs-toggle="offcanvas" href="offcanvasExample" aria-controls="offcanvasExample">
				<i class="fa-solid fa-bars" style="font-size: 1.8rem;"></i>
			</a>
		</div>
		<div class="col-sm-3 my-auto d-none d-sm-block">
			<div class="row">
				<div class="col-6 my-auto"><img src="../../../images/kmj.jpg" class="image rounded-circle border border-3 float-end" style="width: 40px; height: 40px;"></div>
				<div class="col my-auto">
					<p class="mb-0">Minsoo Choi</p>
					<p class="mb-0"><small>Administrator</small></p>
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
	<nav class="navbar navbar-expand-sm navbar-light d-none d-sm-block" style="background-color: tomato;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigaton">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page" href="#">회원관리</a>
					<a class="nav-link" href="#">서비스관리</a>
					<a class="nav-link" href="#">사이트관리</a>
					<a class="nav-link" href="#">로그관리</a>
					<a class="nav-link" href="#">시스템관리</a>
				</div>
			</div>
		</div>
	</nav>

<!-- gnb-e -->


	<div class="container">
	<div class="col-12">


			</div>
		<div class="row">
			<div class="col">
				<a href="./memberForm2.html" class="btn btn-success">dtd</a>
			</div>
		</div>
	</div>
	
<!-- contents s -->
	<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2 d-none d-md-block">
		sessSeq: <c:out value="${sessSeq }"/><br>
sessName: <c:out value="${sessName }"/><br>
sessId: <c:out value="${sessId }"/><br>
<c:if test="${not empty sessSeq}">
	<button type="button" class="btn btn-danger btn-sm" name="" id="btnLogout"><i class="fa-solid fa-power-off"></i></button>

</c:if>
		</div>
	</div>
	</div>

<!-- contents e -->

<div class="b-example-divider"></div>




</body>
</html>


</form>
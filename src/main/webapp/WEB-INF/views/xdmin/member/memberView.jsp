<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>


<!-- view s -->
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
<link href="../../_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">




<style>
table {
	width: 100%;
	border: 1px solid #444444;
}

/* 	th {
		border: 1px solid #444444;
 	} */

/* td {
		border: 1px solid #444444;
 	}
 */
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

<title>memberVIew</title>
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
					<option>??????</option>
					<option>?????????</option>
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
					<a class="nav-link active" aria-current="page" href="#">????????????</a> <a
						class="nav-link" href="#">???????????????</a> <a class="nav-link" href="#">???????????????</a>
					<a class="nav-link" href="#">????????????</a> <a class="nav-link" href="#">???????????????</a>
				</div>
			</div>
		</div>
	</nav>

	<!-- gnb-e -->

	<div class="container">
		<div class="col-12">
			<div class="text-center">
				<img src="./minju200.jpg" class="rounded" alt="...">
			</div>

						<table class="table table-hover table-danger">
							<thead>
								<tr>
									<th colspan="4">????????????????</th>
								</tr>
							</thead>

							<tbody>
								<tr class="text-center">
									<th scope="row">??????</th>
									<td><c:out value="${item.ifmmName}"/></td>
									<th scope="row">?????????</th>
									<td><c:out value="${item.ifmmId}"/></td>
								</tr>

								<tr>
									<th scope="row">????????????</th>
									<td><div class="row g-3 align-items-center">
											<div class="col-auto">
												<input type="password" id="inputPassword6"
													class="form-control" aria-describedby="passwordHelpInline"
													value="<c:out value="${item.ifmmPassword}"/>">
											</div>
										</div></td>
									<th scope="row">??????????????????</th>
									<td><div class="row g-3 align-items-center">
											<div class="col-auto">
												<input type="password" id="inputPassword6"
													class="form-control" aria-describedby="passwordHelpInline"
													value="<c:out value="${item.ifmmPassword}"/>">
											</div>
										</div></td>
								</tr>


								<tr>
									<th scope="row">??????????????????</th>
									<td><select class="form-select form-select-sm"
										aria-label="Default select example" style="width: 280px;">
											<!-- <option selected>Open this select menu</option> -->
											<option value="1">????????? ????????????</option>
											<option selected value="2">????????? ??????????</option>
											<option value="3">????????? ???????????? ??????????</option>
											<option value="4">????????? ????????? ??????????</option>
											<option value="5">????????? ???????????? ?????? ??????????</option>
											<option value="6">????????? ???????????? ????????? ??????????</option>
											<option value="7">????????? ???????????? ????????? ??????????</option>
											<option value="8">????????? ???????????? ??????????</option>
											<option value="9">????????? ????????? ???????</option>
									</select></td>
									<th scope="row">??????????????????</th>
									<td scope="row">?????????</td>
								</tr>
								<tr>
									<th scope="row">??????</th>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="inlineRadioOptions" id="inlineRadio1" value="??????"
												checked> <label class="form-check-label"
												for="inlineRadio1">??????</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="inlineRadioOptions" id="inlineRadio2" value="??????">
											<label class="form-check-label" for="inlineRadio2">??????</label>
										</div>
									</td>
									<th scope="row">??????</th>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="inlineRadioOptions2" id="inlineRadio3" value="?????????"
												checked> <label class="form-check-label"
												for="inlineRadio3">?????????</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="inlineRadioOptions2" id="inlineRadio4" value="?????????">
											<label class="form-check-label" for="inlineRadio4">?????????</label>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">??????</th>
									<td colspan="3">????????? ????????? ??????????????? 201??? 201???</td>
								</tr>
							</tbody>
						</table>
						
						

			
			
			<hr>

			<!-- ????????? -->
			<table class="table table-hover table-warning">
				<thead>
					<tr>
						<th colspan="4">?????????????</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">?????????<img alt="" src="./kakao48.png"></th>
						<td><select class="form-select form-select-sm"
							aria-label="Default select example" style="width: 80px;">
								<!-- <option selected>Open this select menu</option> -->
								<option value="1">KT</option>
								<option value="2">SKT</option>
								<option selected value="3">LGU+</option>
						</select>010 - 1111 - 1111</td>
						<th scope="row">????????? ?????????<br>????????????
						</th>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioOptions3" id="inlineRadio5" value="??????" checked>
								<label class="form-check-label" for="inlineRadio5">??????</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioOptions3" id="inlineRadio6" value="?????????">
								<label class="form-check-label" for="inlineRadio6">?????????</label>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">????????????</th>
						<td><select class="form-select form-select-sm"
							aria-label="Default select example" style="width: 80px;">
								<option selected value="1">02</option>
								<option value="2">031</option>
								<option value="3">032</option>
								<option value="4">055</option>
						</select>555-2525</td>
						<th scope="row">??????</th>
						<td><select class="form-select form-select-sm"
							aria-label="Default select example" style="width: 80px;">
								<!-- <option selected>Open this select menu</option> -->
								<option selected value="1">070</option>
								<option value="2">031</option>
								<option value="3">032</option>
								<option value="4">055</option>
						</select>2525 - 1111</td>
					</tr>
					<tr>
						<th scope="row">?????????</th>
						<td>
							<div class="input-group mb-3">
								<input type="text" class="form-control" value="asdfasdf"
									aria-label="Recipient's username"
									aria-describedby="basic-addon2" style="width: 80px;"> <span
									class="input-group-text" id="basic-addon2">@naver.com</span>

								<button type="button" class="btn btn-primary btn-sm"
									data-bs-toggle="modal" data-bs-target="#emailModal"
									data-bs-whatever="asdfasdf@naver.com">send</button>
								<!-- modal -->

								<div class="modal fade" id="emailModal" tabindex="-1"
									aria-labelledby="#emailModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="emailModalLabel">New
													message</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<form>
													<div class="mb-3">
														<label for="recipient-name" class="col-form-label">Recipient:</label>
														<input type="text" class="form-control"
															id="recipient-name">
													</div>
													<div class="mb-3">
														<label for="message-text" class="col-form-label">Message:</label>
														<textarea class="form-control" id="message-text"></textarea>
													</div>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">Cencel</button>
												<button type="button" class="btn btn-primary">Send
													message</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</td>
						<th scope="row">????????? ?????????<br>????????????
						</th>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioOptions4" id="inlineRadio5" value="??????">
								<label class="form-check-label" for="inlineRadio7">??????</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioOptions4" id="inlineRadio6" value="?????????"
									checked> <label class="form-check-label"
									for="inlineRadio6">?????????</label>
							</div>
						</td>
					</tr>
					<tr>
						<th>SNS</th>
						<td colspan="2">
							<div class="list-group">
								<a href="https://www.instagram.com/"
									class="list-group-item list-group-item-action">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckChecked" checked> <label
											class="form-check-label" for="flexCheckChecked"><img
											alt="" src="./instagram24.png"> Instagram</label>
									</div>
								</a> <a href="https://www.facebook.com/"
									class="list-group-item list-group-item-action list-group-item-primary">
									<div class="form-che1ck">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckChecked" checked> <label
											class="form-check-label" for="flexCheckChecked"><img
											alt="" src="./facebook24.png"> Facebook</label>
									</div>
								</a> <a
									class="list-group-item list-group-item-action list-group-item-info">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckChecked"> <label
											class="form-check-label" for="flexCheckChecked"><img
											alt="" src="./naver242.png"> NaverBlog</label>
									</div>
								</a> <a href="https://www.youtube.com/"
									class="list-group-item list-group-item-action list-group-item-danger">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckChecked" checked> <label
											class="form-check-label" for="flexCheckChecked"><img
											alt="" src="./youtube24.png"> YouTube</label>
									</div>
								</a>
							</div>
						<td class="no-line"></td>
					</tr>





				</tbody>
			</table>
			<hr>

			<table class="text-center table table-hover table-success" style="">
				<thead>
					<tr>
						<th class="text-start" colspan="13">??????????</th>
					</tr>
				</thead>
				<div class="col">
					<tbody>
						<tr>
							<th scope="row">No.</th>
							<th scope="row" colspan="3">???????????????</th>
							<th scope="row" colspan="3">????????????</th>
							<th scope="row" colspan="3">??????</th>
							<th scope="row" colspan="3">?????????</th>
						</tr>
						<tr>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
							<td scope="row"></td>
						</tr>
						<tr>
							<td scope="row">No.</td>
							<td scope="row" colspan="3">000?????????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
						</tr>
						<tr>
							<td scope="row">No.</td>
							<td scope="row" colspan="3">000???????????????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
						</tr>
						<tr>
							<td scope="row">No.</td>
							<td scope="row" colspan="3">000???????????????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
						</tr>
						<tr>
							<td scope="row">No.</td>
							<td scope="row" colspan="3">000???????????????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
							<td scope="row" colspan="3">??????</td>
						</tr>
			</table>
		</div>
		<hr>







		<a href="./memberList.html" class="btn btn-secondary">??????</a> <a
			href="./memberEdit.html" class="btn btn-primary">??????</a>

		<!-- Button trigger modal -->
		<button type="button" class="btn btn-danger" data-bs-toggle="modal"
			data-bs-target="#exampleModalLive">??????</button>

		<!-- Modal -->
		<div class="modal fade" id="exampleModalLive" tabindex="-1"
			aria-labelledby="#exampleModalLive" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">????????????</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">??????????????? ???????????????. ?????? ?????? ???????????????????</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">??????</button>

						<a href="./memberList.html" class="btn btn-danger">??????</a>
						<!-- <button type="button" class="btn btn-danger">??????</button> -->
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- <a href="./memberList.html" class="btn btn-danger">??????</a> -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="../../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>


</body>
</html>


<!-- view e -->




<script>
	function deleteUser(seq) {
		// json ???????????? ????????? set
		var param = {
			ifmmSeq : seq
		}

		// ajax ??????
		$.ajax({
			type : "POST", // HTTP method type(GET, POST) ????????????.
			url : "/infra/member/memberDel", // ?????????????????? ???????????? URL ????????????.
			data : param, // Json ????????? ???????????????.
			success : function(res) { // ?????????????????? ??????????????? success???????????? ???????????????. 'res'??? ???????????? ???????????????.
				// ???????????? > 0000
				alert(res.code);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // ????????? ????????? ??????????????? error ???????????? ???????????????.
				alert("?????? ??????.")
			}
		});
	}
</script>















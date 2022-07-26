<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>같이사자</title>
    <link rel="stylesheet" href="<%=cp %>/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="<%=cp %>/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/userStyle.css" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style type="text/css">
.sidebar__item ul li:first-child {
	background-color: #f5f3ed;
}
.sidebar__item ul li:first-child a {
	color: #fc9942;
}
.sidebar__item ul li:first-child a i {
	color: #fc9942;
}
</style>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>

	<section class="product spad cscenterSection">
		<div class="container">
			<div class="row">

				<!-- import CScenter_MENUBAR -->
				<c:import url="user_cscenter_menubar.jsp"></c:import>

				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>공지사항</h2>
						</div>
					</div>

					<table class="table noticeTable">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">10</th>
								<td class="title"><a href="">시스템 점검 안내</a></td>
								<td>같이사자</td>
								<td>2022-05-04</td>
							</tr>
							<tr>
								<th scope="row">9</th>
								<td class="title"><a href="">개인정보처리방침 계정 내용 사전 안내(6/1~)</a></td>
								<td>같이사자</td>
								<td>2022-05-02</td>
							</tr>
							<tr>
								<th scope="row">8</th>
								<td class="title"><a href="">5년이상 미사용 포인트 소멸 관련
										공지사항입니다.</a></td>
								<td>같이사자</td>
								<td>2022-04-28</td>
							</tr>
							<tr>
								<th scope="row">7</th>
								<td class="title"><a href="">커뮤니티 서비스 개편 안내(22년 3월 30일)</a></td>
								<td>같이사자</td>
								<td>2022-03-20</td>
							</tr>
							<tr>
								<th scope="row">6</th>
								<td class="title"><a href="">시스템 점검 안내</a></td>
								<td>같이사자</td>
								<td>2022-03-10</td>
							</tr>
							<tr>
								<th scope="row">5</th>
								<td class="title"><a href="">개인정보처리방침 계정 내용 사전 안내</a></td>
								<td>같이사자</td>
								<td>2022-03-02</td>
							</tr>
							<tr>
								<th scope="row">4</th>
								<td class="title"><a href="">5년이상 미사용 포인트 소멸 관련
										공지사항입니다.</a></td>
								<td>같이사자</td>
								<td>2022-02-28</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td class="title"><a href="">커뮤니티 서비스 개편 안내</a></td>
								<td>같이사자</td>
								<td>2022-02-20</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td class="title"><a href="">개인정보처리방침 계정 내용 사전 안내</a></td>
								<td>같이사자</td>
								<td>2022-02-02</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td class="title"><a href="">5년이상 미사용 포인트 소멸 관련
										공지사항입니다.</a></td>
								<td>같이사자</td>
								<td>2022-01-28</td>
							</tr>
						</tbody>
					</table>

					<!-- page navigation -->
					<nav class="pageNav" aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">1</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">2</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">3</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">4</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">5</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>

					<!-- searchbar -->
					<div class="searchbar">
						<div class="searchContent">
							<form action="#">
								<select class="form-select" aria-label="Default select example">
									<option value="0" selected>제목</option>
									<option value="1">내용</option>
								</select> <input class="form-control" type="text"
									aria-label="Search for..." aria-describedby="btnNavbarSearch" />
								<button class="btn btn-primary" id="btnNavbarSearch"
									type="button">
									<i class="bi bi-search tableSearch"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- import FOOTER -->
	<c:import url="user_footer.jsp"></c:import>

	<!-- js plugins -->
    <script src="<%=cp %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=cp %>/js/bootstrap.min.js"></script>
    <script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
    <script src="<%=cp %>/js/jquery-ui.min.js"></script>
    <script src="<%=cp %>/js/jquery.slicknav.js"></script>
    <script src="<%=cp %>/js/owl.carousel.min.js"></script>
    <script src="<%=cp %>/js/main.js"></script>
</body>
</html>
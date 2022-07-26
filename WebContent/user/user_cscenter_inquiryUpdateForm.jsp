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
.sidebar__item ul li:last-child {
	background-color: #f5f3ed;
}
.sidebar__item ul li:last-child a {
	color: #fc9942;
}
.sidebar__item ul li:last-child a i {
	color: #fc9942;
}
</style>
<script>
</script>
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
							<h2>1:1 문의</h2>
							<hr class="inquiry-hr"/>
						</div>
					</div>
					
					<form action="">
						<table class="table inquiryInsertTable">
							<thead>
							</thead>
							<tbody>
								<tr>
									<th>제목</th>
									<td><input type="text" class="form-control" id="title" value="글 수정하면 원래 참여자들 다 없어지는건가요;;;"></td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea class="form-control" id="content" rows="15">제곧내;답빨리주세요;;;;</textarea></td>
								</tr>
								<tr>
									<th></th>
									<td>
										<!-- 입력했을 때, 사진이 있었다면..사진도 불러와야 할텐데... -->
										<!-- 어떻게 해야되는지 코드부분에서 방법 알아봐서 적용해주세용 -->
										<input type="file" class="inquiry-file" />
									</td>
								</tr>
							</tbody>
						</table>
						
						<div class="form-btn-box">
							<button type="button" class="btn btn-outline-primary lion-outline-btn listBtn"
									onclick="location.href='user_cscenter_inquiryMain.jsp'">목록으로</button>
									
							<!-- 등록버튼 클릭 → insert 시키고, 입력한 게시물 상세보기 페이지로 이동하면 됩니다. -->
							<button type="button" class="btn btn-primary lion-primary-btn saveBtn">등록</button>
						</div>
					</form>
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
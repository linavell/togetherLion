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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
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

/* sweetalert */
h2#swal2-title {
    font-size: 23px;
    padding-top: 40px;
    padding-bottom: 10px;
}
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 100px;
    margin-right: 20px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
</style>
<script>

	$(document).ready(function()
    {
    	$(".cancelBtn").click(function()
		{
    		Swal.fire({
    			  title: '삭제 완료!',
    			  icon: 'success',
    			  confirmButtonText: '확인'
    			}).then(() => {
    				location.href='user_cscenter_inquiryMain.jsp';
    			})
		});

    });	
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

					<!-- 질문내용 -->
					<table class="table inquiryInsertTable">
						<thead>
						</thead>
						<tbody>
							<tr>
								<th>제목</th>
								<td><input type="text" class="form-control" id="title"
									value="글 수정하면 원래 참여자들 다 없어지는건가요;;;" readonly></td>
							</tr>
							<tr>
								<!-- 사진이 있다면, 여기서 사진도 가져와줘야 합니다 -->
								<th>내용</th>
								<td><textarea class="form-control" id="content" rows="15" readonly>제곧내;답빨리주세요;;;;</textarea></td>
							</tr>
							
							<!-- 답변여부 쿼리문으로 구해와서, 답변있을 경우에만 아래 tr 출력 -->
							<tr>
								<!-- 사진이 있다면, 여기서 사진도 가져와줘야 합니다 -->
								<th>답변</th>
								<td><textarea class="form-control" id="content" rows="15" readonly>안녕하세요 회원님. 게시물 수정 시, 참여중인 회원 모두 대기상태로 전환됩니다. 감사합니다*^^*</textarea></td>
							</tr>
							
						</tbody>
					</table>

					<div class="form-btn-box">
						<!-- if, ① 답변 없는 경우 버튼 -->
						 <!-- 
						<button type="button" class="btn btn-outline-primary lion-outline-btn cancelBtn">삭제</button>
						<button type="button" class="btn btn-primary lion-primary-btn saveBtn"
								onclick="location.href='user_cscenter_inquiryUpdateForm.jsp'">수정</button>
						-->
						<!-- if, ② 답변 있는 경우 버튼 -->
						<span class="inquity-alert-text">답변 완료 문의는 수정 및 삭제가 불가합니다.</span>
						<button type="button" class="btn btn-primary lion-primary-btn listBtn"
								onclick="location.href='user_cscenter_inquiryMain.jsp'">목록으로</button>
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
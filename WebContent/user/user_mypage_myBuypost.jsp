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
.sidebar__item ul li:first-child {
	background-color: #f5f3ed;
}
.sidebar__item ul li:first-child a {
	color: #fc9942;
}
.sidebar__item ul li:first-child a i {
	color: #fc9942;
}

/* sweetalert */
h2#swal2-title {
    font-size: 23px;
    padding-top: 40px;
    padding-bottom: 10px;
}
input.swal2-input {
    margin-bottom: 10px;
}
input.swal2-input:focus {
    box-shadow: none;
    border: 2px solid #fca652;
}
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 250px;
    height: 80px;
    margin-right: 20px;
    font-size: 22px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
button.swal2-close:focus {
    box-shadow: none;
}
</style>
<script type="text/javascript">

	$(document).ready(function() 
	{
		$(".buy-confirm-btn").click(function()
    	{
    		
    		Swal.fire({
    			  title: '구매확정 하시겠습니까?',
    			  showCloseButton: true,
    			  confirmButtonText: '구매확정',
    			  html: '1. 아래 버튼은 진행자가 누르는 버튼입니다.<br>2. 구매확정 전 상품 상태를 확인해주세요.<br>3. 구매확정 후에는 청약철회가 불가합니다.'
    			}).then((result) => {
    			  if (result.isConfirmed) {
    				  
    				  
     				  // 구매확정 작업 처리 코드 작성하기!
     					
     					
     				  // 구매확정 완료 후, 띄울 알림창
    				  Swal.fire({
      			    	title: '구매확정 완료',
      			    	icon: 'success',
      			    	confirmButtonText: '확인'
      			    }).then(() => {
      			    	location.href='#!';
      			    });
		    	  }
    			})
        });
		
		$(".evaluation-btn").click(function()
    	{
    		Swal.fire({
    			  title: '구매확정 하시겠습니까?',
    			  showCloseButton: true,
    			  confirmButtonText: '구매확정',
    			  html: '1. 아래 버튼은 진행자가 누르는 버튼입니다.<br>2. 구매확정 전 상품 상태를 확인해주세요.<br>3. 구매확정 후에는 청약철회가 불가합니다.'
    			}).then((result) => {
    			  if (result.isConfirmed) {
    				  Swal.fire({
      			    	title: '구매확정 완료',
      			    	icon: 'success',
      			    	confirmButtonText: '확인'
      			    }).then(() => {
      			    	location.href='#!';
      			    });
		    	  }
    			})
        });

	});
</script>
</head>
<body>

	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>
    
    <!-- import Mypage Header -->
	<c:import url="user_mypage_header.jsp"></c:import>
	
	<!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
			<div class="row featured__filter">

				<!-- import mypage_MENUBAR -->
				<c:import url="user_mypage_menubar.jsp"></c:import>

				<div class="col-lg-9 col-md-7">
					<div class="product__discount mypage-title-box">
						<div class="section-title myBuypost-title">
							<h2>MY 공구</h2>
						</div>
						<div class="myBuypost-form-box">
							<form action="#">
								<div class="myBuypost-select myBuypost-select-one">
									<select class="form-select myBuypost-selectBox" aria-label="Default select example">
										<option value="0" selected>내가 참여한 공구</option>
										<option value="1">내가 진행한 공구</option>
									</select>
								</div> 
								
								<div class="myBuypost-select myBuypost-select-two">
									<select class="form-select myBuypost-selectBox" aria-label="Default select example">
										<option value="0" selected>모집중</option>
										<option value="1">진행중</option>
										<option value="2">완료</option>
										<option value="3">취소</option>
									</select>
								</div>
							</form>
						</div>
					</div>
					
					<!-- if, ① 내가 참여한 공구 && 모집중 
							 ④ 내가 참여한 공구 && 취소   
							 ⑤ 내가 진행한 공구 && 모집중
							 ⑥ 내가 진행한 공구 && 진행중
							 ⑦ 내가 진행한 공구 && 완료
							 ⑧ 내가 진행한 공구 && 취소	  -->
					<!-- 
					<table class="table noticeTable mypage-buypostTable">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">3</th>
								<td class="title"><a href="">도지마롤 1kg 같이사요~(10/15)</a></td>
								<td>2022-05-15</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td class="title"><a href="">청경재 1kg 같이사영(8/9)</a></td>
								<td>2022-04-04</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td class="title"><a href="">장인약과 5kg 공구모집함(22/30)</a></td>
								<td>2022-03-15</td>
							</tr>
						</tbody>
					</table>
					-->
					
					<!-- if, ② 내가 참여한 공구 && 진행중 -->
					<!-- 거래희망일부터 [구매확정] 버튼 나타나게 하는게 아니라, -->
					<!-- 클릭 했을 때, 해당 공동구매 게시물의 거래희망일 검사해서 -->
					<!-- 거래희망일 아니라면 alert(), 거래희망일 당일&그이후라면 구매확정창 뜨게 --> 
					<!-- 
					<table class="table noticeTable mypage-buypostTable">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성일</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">3</th>
								<td class="title"><a href="">도지마롤 1kg 같이사요~(10/15)</a></td>
								<td>2022-06-30</td>
								<td>
									『공동구매게시물테이블 거래희망일』, 『공동구매참여자테이블의 구매확정일시』 가져와서 분기처리
									if, ① SYSDATE < 해당 공동구매 게시물의 거래희망일 OR 구매확정일시의 값이 NULL 이 아님
									 
									<button type="button" class="btn btn-primary myBuypost-btn buy-confirm-btn" 
									style="background-color: #6e6d6d;"disabled>구매확정</button>
									
									if, ② SYSDATE >= 해당 공동구매 게시물의 거래희망일 
									<button type="button" class="btn btn-primary myBuypost-btn buy-confirm-btn">구매확정</button>
								</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td class="title"><a href="">청경재 1kg 같이사영(8/9)</a></td>
								<td>2022-04-04</td>
								<td>
									<button type="button" class="btn btn-primary myBuypost-btn buy-confirm-btn" 
									style="background-color: #6e6d6d;"disabled>구매확정</button>
								</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td class="title"><a href="">장인약과 5kg 공구모집함(22/30)</a></td>
								<td>2022-03-15</td>
								<td>
									<button type="button" class="btn btn-primary myBuypost-btn buy-confirm-btn" 
									style="background-color: #6e6d6d;"disabled>구매확정</button>
								</td>
							</tr>
						</tbody>
					</table>
					-->
					
					<!-- if, ③ 내가 참여한 공구 && 완료 -->
					<table class="table noticeTable mypage-buypostTable">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성일</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">3</th>
								<td class="title"><a href="">도지마롤 1kg 같이사요~(10/15)</a></td>
								<td>2022-05-15</td>
								<td>
									<!-- if, ① 해당 공동구매 매너/비매너 평가 아직 안 한 상태 -->
									<button type="button" class="btn btn-primary myBuypost-btn evaluation-btn">매너/비매너 평가</button>
									<!-- if, ② 해당 공동구매 매너/비매너 평가한 상태 -->
									<!-- 
									<button type="button" class="btn btn-primary myBuypost-btn evaluation-btn"
									style="background-color: #6e6d6d;"disabled>매너/비매너 평가</button>
									 -->
								</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td class="title"><a href="">청경재 1kg 같이사영(8/9)</a></td>
								<td>2022-04-04</td>
								<td>
									<button type="button" class="btn btn-primary myBuypost-btn evaluation-btn"
									style="background-color: #6e6d6d;"disabled>매너/비매너 평가</button>
								</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td class="title"><a href="">장인약과 5kg 공구모집함(22/30)</a></td>
								<td>2022-03-15</td>
								<td>
									<button type="button" class="btn btn-primary myBuypost-btn evaluation-btn"
									style="background-color: #6e6d6d;"disabled>매너/비매너 평가</button>
								</td>
							</tr>
						</tbody>
					</table>
					
					
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
					
				</div>
			</div>
		</div>
    </section>
    <!-- Featured Section End -->

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
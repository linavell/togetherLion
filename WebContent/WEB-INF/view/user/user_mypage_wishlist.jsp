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
.sidebar__item ul li:nth-child(3) {
	background-color: #f5f3ed;
}
.sidebar__item ul li:nth-child(3) a {
	color: #fc9942;
}
.sidebar__item ul li:nth-child(3) a i {
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
    width: 100px;
    margin-right: 20px;
}
button.swal2-cancel.swal2-styled {
    width: 100px;
    margin-right: 20px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
button.swal2-cancel.swal2-styled:focus {
    box-shadow: none;
}
</style>
<script type="text/javascript">

	$(document).ready(function()
    {
    	$(".wish-deleteBtn").click(function()
		{
    		Swal.fire({
    			  title: '찜을 삭제하시겠습니까?',
    			  icon: 'warning',
    			  iconColor: '#f27474',
    			  showCancelButton: true,
    			  confirmButtonText: '삭제',
    			  cancelButtonText: '취소',
    			  reverseButtons: true
    			}).then((result) => {
    				if (result.isConfirmed) {
      				  
       				  // Delete 작업 처리 코드 작성하기!
       					
       					
       				  // Delete 완료 후, 띄울 알림창
      				  Swal.fire({
        			    	title: '삭제 완료!',
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
					<div class="product__discount wishlist-titleBox">
						<div class="section-title myBuypost-title">
							<h2>찜</h2>
						</div>
					</div>
					
					<form action="">
						
						<div class="wishlist-box">
							<span class="wish-allCheck-title">전체선택</span>
							<input class="form-check-input wish-allCheck" type="checkbox" name="wish-check" value="">
							<button type="button" class="btn btn-primary inquiryBtn wish-deleteBtn">선택삭제</button>
						</div>
	
						<div class="row">
						
							<!-- if, ① 등록된 찜의 개수가 0개일 때 -->
							<div class="no-wish"> 
								<i class="fa fa-heart-o buypost-wish mypage-wish" aria-hidden="true"></i>
								<h4>아직 찜한 상품이 없어요</h4>
							</div>
							
							
							<!-- if, ② 등록된 찜의 개수가 1개 이상일 때 -->
							<%-- 
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">	
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-1.jpg"
										onClick="location.href='<%=cp%>/user/user_buyPostArticle.jsp'">
										<span class="timeLeft">3시간 2분 42초</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">2/3</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[강남구] 고기 같이 사요~~~</a>
										</h6>
										<h5>￦20,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">		
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-2.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">5일</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">3/10</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[마포구] 바나나바나나바나나바나나</a>
										</h6>
										<h5>￦6,500</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-3.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">23시간 11분 44초</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">6/7</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[서대문구] 이건무슨과일임하하</a>
										</h6>
										<h5>￦14,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-4.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">9일</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">1/5</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[은평구] 수박수박수박수박수박</a>
										</h6>
										<h5>￦59,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-5.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">2일</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">4/6</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[서초구] 유기농포도한박스포도</a>
										</h6>
										<h5>￦35,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-6.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">1시간 1분 1초</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">6/6</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[관악구] 베토디세트같이먹어용</a>
										</h6>
										<h5>￦99,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-7.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">11시간 2분 59초</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">1/5</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[양천구] AleMangoAMagooooo</a>
										</h6>
										<h5>￦120,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-8.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">11일</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">5/20</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[성북구] 사과사과솨과apple</a>
										</h6>
										<h5>￦32,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-1.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">3시간 2분 42초</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">2/3</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[강남구] 고기 같이 사요~~~</a>
										</h6>
										<h5>￦20,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-2.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">5일</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">3/10</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[마포구] 바나나바나나바나나바나나</a>
										</h6>
										<h5>￦6,500</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-3.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">23시간 11분 44초</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">6/7</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[서대문구] 이건무슨과일임하하</a>
										</h6>
										<h5>￦14,000</h5>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<input class="form-check-input" type="checkbox" name="wish-check" value="">
								<div class="featured__item">
									<div class="featured__item__pic set-bg"
										data-setbg="<%=cp%>/img/featured/feature-4.jpg"
										onClick="location.href='#'">
										<span class="timeLeft">9일</span> <span
											class="featured__item__pic__hover"> <i
											class="bi bi-cart4"></i> <span class="item_number">1/5</span>
										</span>
									</div>
									<div class="featured__item__text">
										<h6>
											<a href="#">[은평구] 수박수박수박수박수박</a>
										</h6>
										<h5>￦59,000</h5>
									</div>
								</div>
							</div>
						</div>
	
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
						--%>
					</form>	
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
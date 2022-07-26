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
</head>
<body>

	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>

    <div class="search-container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2 class="search-title">상품검색</h2>
                </div>
                <form action="" method="post">
                	<input type="text" class="buypost-search" value="사용자가 검색한 내용 이 안에 ㅋㅅㅋ"/>
                	<button type="submit" class="buypost-search-btn"><i class="bi bi-search buypost-search-icon"></i></button>
                	<hr class="buypost-search-bottom"/>
                </form>
            </div>
        </div>
    </div>	

	<!-- Product Section Begin -->
	<section class="feature spad">
		<div class="container">
			<div class="row featured__filter">
				<div class="col-lg-12 col-md-12">
					<div class="filter__item buypost-search">
						<div class="row">
							<div class="col-lg-4 col-md-5">
								<div class="filter__sort">
									<span>카테고리 선택</span> <select>
										<option value="0">전체</option>
										<option value="1">쌀/면/빵/떡</option>
										<option value="2">과일/채소</option>
										<option value="3">수산/정육/계란</option>
										<option value="4">밀키트/간편식/냉동</option>
										<option value="5">국/반찬</option>
										<option value="6">간식/과자</option>
										<option value="7">우유/유제품</option>
										<option value="8">물/음료/커피/차</option>
										<option value="9">양념/소스</option>
									</select>
								</div>
							</div>
							<div class="col-lg-8 col-md-7">
								<div class="filter__found">
									<h6>
										<span>16</span> Products found
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="<%=cp%>/img/featured/feature-1.jpg"
							onClick="location.href='<%=cp %>/user/user_buyPostArticle.jsp'">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
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
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
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
			</div>

			<!-- page navigation -->
			<nav class="pageNav buyPost-pageNav" aria-label="Page navigation example">
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
	</section>
	<!-- Product Section End -->

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
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
	
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function()	
	{	
		// 해당 공동구매 게시물 상세보기
		$(".buypost_go").click(function()		
		{
			location.href = "buypostarticle.lion?code=" + $(this).val();	
		});
		
		
		$("#mainCateCode").change(function()
		{
			location.href = "buypostnewcate.lion?code=" + $(this).val();
		});
		
	});
	
	
</script>
</head>

<body>

	<!-- import HEADER -->
	<c:import url="/header.lion"></c:import>

	<section class="breadcrumb-section set-bg newBuyPost-banner"
		data-setbg="<%=cp %>/img/hero/banner6.jpg">		
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>최근공구</h2>
                    </div>
                </div>
            </div>
        </div>	
	</section>

	<!-- Product Section Begin -->
	<section class="feature spad">
		<div class="container">
			<div class="row featured__filter">
				<div class="col-lg-12 col-md-12">
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5">
								<div class="filter__sort">
									<span>카테고리 선택</span> 
									<select id="mainCateCode" name="mainCateCode">
										<c:choose>
										<c:when test="${code == null || code == 'every' }">
											<option value="every">전체보기</option>
											<c:forEach var="mainCate" items="${mainList }">
												<c:choose>
												<c:when test="${mainCate.code == code }">
													<option value="${mainCate.code }" selected="selected">${mainCate.name }</option>
												</c:when>
												<c:otherwise>
													<option value="${mainCate.code }">${mainCate.name }</option>
												</c:otherwise>
												</c:choose>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<option value="every">전체보기</option>
											<c:forEach var="mainCate" items="${mainList }">
												<c:choose>
												<c:when test="${mainCate.code == code }">
													<option value="${mainCate.code }" selected="selected">${mainCate.name }</option>
												</c:when>
												<c:otherwise>
													<option value="${mainCate.code }">${mainCate.name }</option>
												</c:otherwise>
												</c:choose>
											</c:forEach>
										</c:otherwise>
										</c:choose>
									</select>
								</div>
							</div>
							<div class="col-lg-8 col-md-7">
								<div class="filter__found">
									<h6>
										<span>${count }</span> Products found
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<c:forEach var="buypost" items="${list }">
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/buypost/${buypost.goods_photo_name }">
							<button class="buypost_go" style="width:209.99px; height:270px; cursor:pointer; opacity:0;" value="${buypost.code }"></button>
							<span class="timeLeft">
							<c:choose>
                        		<c:when test="${buypost.day != '0' }">	
                        			${buypost.day }일 남음
                        		</c:when>
                        		<c:otherwise>
		                        	<c:choose>
		                        		<c:when test="${buypost.hour != '0' }">
		                        			${buypost.hour }시간 
		                        		</c:when>
		                        	</c:choose>
		                        	<c:choose>
		                        		<c:when test="${buypost.minute != '0' }">
		                        			${buypost.minute }분                   
		                        		</c:when>
		                        	</c:choose>
		                        	 남음
                        		</c:otherwise>
                        	</c:choose>
							</span> 
							<span class="featured__item__pic__hover"> 
							<i class="bi bi-cart4"></i> 
							<span class="item_number">${buypost.count }</span>
							</span>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">[${buypost.region }] ${buypost.title }</a>
							</h6>
							<h5>￦${buypost.person_price }</h5>
						</div>
					</div>
				</div>
				</c:forEach>
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
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
.buypost_go {
    width: 209.99px;
    height: 270px;
    opacity: 0;
    position: absolute;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function()	
	{		
		$(".buypost_go").click(function()		
		{
			location.href = "buypostarticle.lion?code=" + $(this).val();	
		});
		
		
	});
	
	function map()
	{
		window.open("map.lion", "_blank", "top=150,left=550,width=1000,height=650");
	}
	
	
	
</script>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="/header.lion"></c:import>
    
    <!-- BANNER IMAGE -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" data-interval="4500">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item banner1 active"></div>
			<div class="carousel-item banner2"></div>
			<div class="carousel-item banner3"></div>
			<div class="carousel-item banner4"></div>
			<div class="carousel-item banner5"></div>
			<div class="carousel-item banner6"></div>
			<div class="carousel-item banner7"></div>
		</div>
		
		<div class="hero__search map__search">
			<div class="hero__search__form map__search__form">
				<a href="javascript:map()">
					<form action="#">
						<i class="bi bi-geo-alt-fill" title="지도에서 선택하기"></i>
						<input type="text" class="map__search__text" placeholder="장소를 선택해주세요." readonly>
					</form>
				</a>
			</div>
		</div>
		
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next"
			href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row featured__filter">
            
            	<c:forEach var="buypost" items="${list }" varStatus="li">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">                	
                    <div class="featured__item">
                    <!-- 
                    <button type="button" class="btn btn-default btn-xs btnDelete"
								value="${member.mid }">삭제</button>
                     -->
                    	<%-- <input type="hidden" class="featured__item__pic set-bg" value="${buypost.code }" name="buypost"> --%>
                        <div class="featured__item__pic set-bg" data-setbg="img/buypost/${buypost.goods_photo_name }">
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
                            <h6><a href="user_buyPostArticle.jsp">[${buypost.region }] ${buypost.title }</a></h6>
                            <h5>￦${buypost.person_price }</h5>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
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
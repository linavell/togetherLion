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
<title>같이사자 지도</title>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
			integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
			crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body class="popup">
	<div class="map-container">
		<div class="report-title">
			<h2 id="buypostMap">지도를 움직여서 거래 위치를 마우스로 클릭해주세요.</h2>
			<hr class="map-line"/>
		</div>
		<div id="map" style="width:950px;height:400px;"></div>
		
		<div class="selectLocation">
			<form action="">
				<input type="text" id="detailAddr" readonly/>
				<button type="button" class="btn btn-primary lion-primary-btn locationBtn"
				onclick="window.close()">위치 선택 완료</button>
			</form>
		</div>
		<hr class="map-line"/>
		
		<div id="text">
			<br /><br />
			테스트<br />
			<input type="text" id="region" style="width:500px; height:50px;"/><br />
			<br />		
			위도<input type="text" id="lat" style="width:300px; height:50px;" /><br />
			경도<input type="text" id="lng" style="width:300px; height:50px;" /><br />
			
		</div>
	</div>
		
	<!-- js plugins -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
		integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
		crossorigin="anonymous"></script>
	<script src="<%=cp %>/js/jquery-3.3.1.min.js"></script>
	<script src="<%=cp %>/js/bootstrap.min.js"></script>
	<script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
	<script src="<%=cp %>/js/jquery-ui.min.js"></script>
	<script src="<%=cp %>/js/jquery.slicknav.js"></script>
	<script src="<%=cp %>/js/owl.carousel.min.js"></script>
	<script src="<%=cp %>/js/main.js"></script>	
	
	<!-- import kakao api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1cf593d625e664e728990121f9c38ac7&libraries=services"></script>
	
	<!-- import app js file -->
	<script src="<%=cp %>/js/mapApp.js"></script>
</body>
</html>

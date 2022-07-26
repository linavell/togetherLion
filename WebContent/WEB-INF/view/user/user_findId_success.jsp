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

</script>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="/header.lion"></c:import>
    
    <section class="featured spad">

		<div class="join-title-container">
			<h2 class="findForm-title">아이디 찾기</h2>
			<hr class="findForm-hr"/>
		</div>

		<div class="join-container">
			<table class="join-table findSuccess-table">
				<thead>
				</thead>
				<tbody>
					<tr>
						<td>
							<span id="findMent1">고객님의 같이사자 계정을 찾았습니다.</span>
							<span id="findMent2">아이디 확인 후 로그인해 주세요.</span>
						</td>
					</tr>
					<tr>
						<td>
							<i class="bi bi-person-circle"></i>
							<span id="findId">${id }</span>
							<span id="findRegDate">가입일 ${regist_datetime }</span>
						</td>
					</tr>
					<tr>
						<td>
							<button type="button" class="btn btn-outline-primary lion-outline-btn successBtn"
							onclick="location.href='<%=cp %>/pwfind.lion'">비밀번호 찾기</button>
							<button type="button" class="btn btn-primary lion-primary-btn successBtn"
							onclick="location.href='<%=cp %>/loginform.lion'">로그인</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

	</section>

	<!-- import FOOTER -->
	<c:import url="user_footer.jsp"></c:import>
 
    <!-- js plugins -->
    <script src="<%=cp%>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=cp %>/js/bootstrap.min.js"></script>
    <script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
    <script src="<%=cp %>/js/jquery-ui.min.js"></script>
    <script src="<%=cp %>/js/jquery.slicknav.js"></script>
    <script src="<%=cp %>/js/owl.carousel.min.js"></script>
    <script src="<%=cp %>/js/main.js"></script>
</body>
</html>
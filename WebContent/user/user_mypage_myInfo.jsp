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
</style>
<script type="text/javascript">

</script>
</head>
<body>

	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>
    
    <!-- import Mypage Header -->
	<c:import url="user_mypage_header.jsp"></c:import>
	
    <section class="featured spad">
        <div class="container">
			<div class="row featured__filter">

				<!-- import mypage_MENUBAR -->
				<c:import url="user_mypage_menubar.jsp"></c:import>

				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title myInfo-title">
							<h2>개인 정보 수정</h2>
							<hr class="myInfo-hr"/>
						</div>
					</div>

					<form action="" class="join-form">
						<table class="join-table myInfo-table">
							<thead>
							</thead>
							<tbody>
								<tr>
									<th>아이디</th>
									<td><input type="text" name="id" id="id" value="cin03023@gmail.com" readonly/></td>
								</tr>
								<tr>
									<th>현재 비밀번호</th>
									<td><input type="password" name="pw" id="pw"
										placeholder="비밀번호 입력" required="required" /></td>
								</tr>
								<tr>
									<th>새 비밀번호</th>
									<td><input type="password" name="pw" id="pw"
										placeholder="비밀번호 입력" required="required" /></td>
								</tr>
								<tr>
									<th>새 비밀번호 확인</th>
									<td><input type="password" name="pwCheck" id="pwCheck"
										placeholder="비밀번호 입력" required="required" /></td>
								</tr>
								<tr>
									<th>이름</th>
									<td><input type="text" name="name" id="name" value="김정용" readonly /></td>
								</tr>
								<tr>
									<th>휴대폰</th>
									<td><input type="text" name="tel" id="tel" required="required" value="01027313153" placeholder="숫자만 입력" />
										<button type="button" class="btn btn-outline-primary join-form-btn" onclick="">다른번호 인증</button></td>
								</tr>
								<tr>
									<th></th>
									<td><input type="text" name="telCheckNum" id="telCheckNum"
										required="required" value pattern="[0-9]*" />
										<button type="button" class="btn btn-outline-primary join-form-btn" onclick="">인증번호 확인</button></td>
								</tr>
								<tr>
									<th>닉네임</th>
									<td><input type="text" name="nickname" id="nickname" placeholder="닉네임 입력" value="user10001"/>
										<button type="button"
											class="btn btn-outline-primary join-form-btn" onclick="">중복확인</button>
									</td>
								</tr>
								<tr class="join-agree">
									<td colspan="2" class="myInfo-btn-box">
										<button type="button" class="btn btn-outline-primary login-form-btn myInfo-withdrawBtn"
											onclick="location.href='user_mypage_myInfo_withdrawal.jsp'">탈퇴하기</button>
										<button type="button" class="btn btn-primary lion-primary-btn">회원정보수정</button>
									</td>
								</tr>
							</tbody>
						</table>
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
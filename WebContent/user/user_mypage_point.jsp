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
	
<style type="text/css">
.sidebar__item ul li:nth-child(4) {
	background-color: #f5f3ed;
}
.sidebar__item ul li:nth-child(4) a {
	color: #fc9942;
}
.sidebar__item ul li:nth-child(4) a i {
	color: #fc9942;
}
</style>
<script type="text/javascript">
	
	// 팝업창
	// ① 충전
	function charge()
	{	
		window.open("user_mypage_point_charge_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
	}
	// ② 인출
	function withdrawal()
	{	
		window.open("user_mypage_point_withdrawal_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
	}
	// ③ 계좌관리
	function accountManage()
	{	
		window.open("user_mypage_point_accountManage_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
	}
</script>		 
</head>
<body>
	
	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>
	
	<!-- mypage_point HEADER -->
	<div class="hero__item set-bg mypage-header">
		<div class="mypage-box-container">
			<div class="mypage-header-userBox myPoint-box">
				<div class="mypage-profile-photo">
					<img src="<%=cp%>/img/mannerLevel/manner_1.png" class="mannerLevel-photo">
				</div>
				<div class="mypage-info-box myPoint-info-box">
					<div class="buypost_profile_nickname participate-profile-nickname">yong__go_og 님</div>
					<h4 class="header-title-point myPoint-title">보유 포인트</h4>
					<h2 class="myPointAmount">229000 원</h2>
				</div>
				<div class="myPoint-btn-box">
					<button type="button" class="btn btn-primary pointBtn charge-btn"
					onclick="javascript:charge()">충전하기</button>
					<button type="button" class="btn btn-primary pointBtn withdraw-btn"
					onclick="javascript:withdrawal()">인출하기</button>
					<button type="button" class="btn btn-primary pointBtn manageAccount-btn"
					onclick="javascript:accountManage()">계좌관리</button>
				</div>
			</div>
		</div>
	</div>
    
	<!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
			<div class="row featured__filter">

				<!-- import mypage_MENUBAR -->
				<c:import url="user_mypage_menubar.jsp"></c:import>

				<div class="col-lg-9 col-md-7">
					<div class="product__discount myPoint-title-box">
						<div class="section-title product__discount__title myPoint-title">
							<h2>사용내역</h2>
						</div>
						<div class="myPoint-form-box">
							<form action="#">
								<select class="form-select point-select" aria-label="Default select example">
									<option value="0" selected>전체</option>
									<option value="1">충전</option>
									<option value="2">결제</option>
									<option value="3">인출</option>
									<option value="4">환불</option>
									<option value="5">지급</option>
								</select>
							</form>
						</div>
					</div>

					<table class="table pointTable">
						<thead>
						</thead>
						<tbody>
							<!--
								!!~ check ~!! 
								
								① 출력내용 ↓ (스토리보드랑 조금 다르게 진행) → 환불사유테이블 내용 이용하기 위해서 
								포인트 충전   					[충전테이블]							
								포인트 인출   					[인출테이블]
								공동구매 참여 					[결제테이블]
								취소된 공동구매(환불사유내용)   [환불테이블-환불사유:모집실패/미진행/진행자취소/참여자취소/신고승인취소]
								공동구매 참여 취소 				[환불테이블-환불사유:참여자취소]
								공동구매 진행 완료 				[지급테이블]
								
								② 충전/인출은 공동구매게시물과 관련없는거니까 
								   view 만들 때, 공동구매게시물컬럼에 "" 넣어주면 됨
								   → 공구게시물 제목 클릭하면 공구게시물 연결해줘야 됨~
								   
								③ 포인트 +/- 인거 class (plusPoint/minusPoint)로 나눠놨으니, 
								   + 일 때랑 - 일 때랑 나눠서 처리 
							-->
							<tr>
								<td><h4 id="proposal">포인트 충전</h4></td>
								<td>
									<div class="point-detail">
										<span class="point-date">2022-05-20</span><br /> 
										<a href="user_buyPostArticle.jsp"><span class="buypost-title"></span></a>
									</div>
								</td>
								<td><span class="point plusPoint">+ 3,600</span></td>
							</tr>
							<tr>
								<td><h4 id="proposal">포인트 인출</h4></td>
								<td>
									<div class="point-detail">
										<span class="point-date">2022-05-12</span><br /> 
										<a href="user_buyPostArticle.jsp"><span class="buypost-title"></span></a>
									</div>
								</td>
								<td><span class="point minusPoint">- 15,000</span></td>
							</tr>
							<tr>
								<td><h4 id="proposal">공동구매 참여</h4></td>
								<td>
									<div class="point-detail">
										<span class="point-date">2022-05-11</span><br />
										<a href="user_buyPostArticle.jsp"><span class="buypost-title">햇반 같이 살 사람~~~</span></a>
									</div>
								</td>
								<td><span class="point minusPoint">- 8,500</span></td>
							</tr>
							<tr>
								<td><h4 id="proposal">취소된 공동구매<br />(진행자취소)</h4></td>
								<td>
									<div class="point-detail">
										<span class="point-date">2022-05-08</span><br />
										<a href="user_buyPostArticle.jsp"><span class="buypost-title">사과 한 박스 구매 ㄱㄱ?</span></a>
									</div>
								</td>
								<td><span class="point minusPoint">- 8,500</span></td>
							</tr>
							<tr>
								<td><h4 id="proposal">공동구매 참여 취소</h4></td>
								<td>
									<div class="point-detail">
										<span class="point-date">2022-05-08</span><br />
										<a href="user_buyPostArticle.jsp"><span class="buypost-title">햇반 같이 살 사람~~~</span></a>
									</div>
								</td>
								<td><span class="point minusPoint">- 8,500</span></td>
							</tr>
							<tr>
								<td><h4 id="proposal">공동구매 진행 완료</h4></td>
								<td>
									<div class="point-detail">
										<span class="point-date">2022-04-24</span><br />
										<a href="user_buyPostArticle.jsp"><span class="buypost-title">0909캡슐커피 공구0909</span></a>
									</div>
								</td>
								<td><span class="point plusPoint">+ 52,400</span></td>
							</tr>
						</tbody>
					</table>
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
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>admin같이사자</title>

<link href="<%=cp %>/css/adminStyle.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="<%=cp %>/js/scripts.js"></script>
	
<style type="text/css">
.sb-sidenav-menu a.current-menu {
    background-color: #f5f4f2;
    color: #fca652 !important;
}
</style>
</head>
<body class="sb-nav-fixed">

	<!-- import HEADER -->
	<c:import url="admin_header.jsp"></c:import>

	<div id="layoutSidenav">

		<!-- menubar -->
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-light"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">MENU</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#member" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-user icon"></i>
							</div> 회원조회
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="member" aria-labelledby="headingOne"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_member_all.jsp">전체회원</a> 
								<a class="nav-link" href="admin_member_permanentBan.jsp">영구정지회원</a> 
								<a class="nav-link" href="admin_member_sleep.jsp">휴면회원</a> 
								<a class="nav-link" href="admin_member_withdrawal.jsp">탈퇴회원</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#point" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-sack-dollar icon"></i>
							</div> 포인트조회
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="point" aria-labelledby="headingTwo"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_point_charge.jsp">포인트충전</a> 
								<a class="nav-link" href="admin_point_payment.jsp">포인트결제</a> 
								<a class="nav-link" href="admin_point_refund.jsp">포인트환불</a> 
								<a class="nav-link" href="admin_point_withdrawal.jsp">포인트인출</a> 
								<a class="nav-link" href="admin_point_complete.jsp">완료포인트지급</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#homepage" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-landmark icon"></i>
							</div> 홈페이지관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="homepage" aria-labelledby="headingThree"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_homepage_noticeList.jsp">공지사항</a> 
								<a class="nav-link" href="admin_homepage_categoryList.jsp">카테고리</a> 
								<a class="nav-link" href="admin_homepage_mannerLevelList.jsp">매너지수</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#cancel" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-circle-xmark icon"></i>
							</div> 미진행취소
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="cancel"
							aria-labelledby="headingFour" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_cancel_receptionList.jsp">접수내역</a>
								<a class="nav-link" href="admin_cancel_handlingList.jsp">처리내역</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#report" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-triangle-exclamation icon"></i>
							</div> 신고관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse show" id="report" aria-labelledby="headingFive"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_report_receptionList.jsp">접수내역</a> 
								<a class="nav-link" href="admin_report_handlingList.jsp">처리내역</a> 
								<a class="nav-link current-menu" href="admin_report_reasonList.jsp">사유관리</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#inquiry" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-circle-question icon"></i>
							</div> 문의관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="inquiry" aria-labelledby="headingSix"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_inquiry_inquiryList.jsp">1:1문의</a> 
								<a class="nav-link" href="admin_inquiry_faqList.jsp">FAQ</a>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">ADMIN ACCOUNT</div>
						<a class="nav-link" href="admin_accountList.jsp">
							<div class="sb-nav-link-icon">
								<i class="fa-solid fa-gears icon"></i>
							</div> 관리자계정관리
						</a>
					</div>
				</div>
			</nav>
		</div>

		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<div class="card mb-4">

						<!--  Breadcrumb -->
						<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">신고관리</li>
								<li class="breadcrumb-item active" aria-current="page"><a
									href="#">사유관리</a></li>
							</ol>
						</nav>
						
						<!-- 공동구매게시물 신고사유 -->
						<div class="buypost-report">
								<div class="card-body reportReason-card-body">
								<table class="table table-hover table-borderless reportReason-table">
									<thead>
										<tr>
											<th colspan="2">
												<i class="fa-solid fa-ban"></i>공동구매게시물
											</th>
											
										</tr>
									</thead>
									<tbody>
										<tr class="main-category">
											<td>1</td>
											<td>판매금지 물품이에요</td>
										</tr>
										<tr>
											<td></td>
											<td>- 무허가식품</td>
										</tr>
										<tr>
											<td></td>
											<td>- 건강식품</td>
										</tr>
										<tr>
											<td></td>
											<td>- 위조식품</td>
										</tr>
										<tr class="main-category">
											<td>2</td>
											<td>필수사항을 기재하지 않았어요</td>
										</tr>
										<tr>
											<td></td>
											<td>- 필수항목 수정이 필요한 경우</td>
										</tr>
										<tr>
											<td></td>
											<td>- 잘못된 카테고리 선택</td>
										</tr>
										<tr>
											<td></td>
											<td>- 상품설명 부족</td>
										</tr>
										<tr>
											<td></td>
											<td>- 부적절한 내용 기재(음란성, 명예훼손, 저작권침해)</td>
										</tr>
										<tr class="main-category">
											<td>3</td>
											<td>전문판매업자 같아요</td>
										</tr>
										<tr>
											<td></td>
											<td>- 여러 계정 또는 하나의 계정으로 같은 물건의 공동구매를 진행</td>
										</tr>
										<tr>
											<td></td>
											<td>- 해외 구매 대행</td>
										</tr>
										<tr class="main-category">
											<td>4</td>
											<td>웹 사이트 밖에서 거래를 유도해요</td>
										</tr>
										<tr>
											<td></td>
											<td>- SNS 아이디 기재</td>
										</tr>
										<tr>
											<td></td>
											<td>- 가짜 안전 거래 사이트 기재</td>
										</tr>
										<tr>
											<td></td>
											<td>- 개인 계좌번호 기재</td>
										</tr>
										<tr class="main-category">
											<td>5</td>
											<td>대리 구매를 요구해요</td>
										</tr>
									</tbody>
								</table>
								
							</div>
						</div>
					</div>
				</div>
			</main>

			<!-- import FOOTER -->
			<c:import url="admin_footer.jsp"></c:import>

		</div>
	</div>
</body>
</html>

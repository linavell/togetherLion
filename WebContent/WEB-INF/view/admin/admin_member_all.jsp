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
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="<%=cp %>/js/scripts.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	
<style type="text/css">
.sb-sidenav-menu a.current-menu {
    background-color: #f5f4f2;
    color: #fca652 !important;
}
</style>
<script type="text/javascript">
	
	// 검색
	$(function()
	{
		$('#btnNavbarSearch').click(function(e)
		{
			e.preventDefault();
			var url = "/togetherlion/admin_member_all.lion";
			url += "?searchType=" + $('#searchType').val();
			url += "&keyword=" + $('#keyword').val();
			
			location.href = url;
		});	
	});

	// 이전 버튼
	function fn_prev(page, range, rangeSize)
	{
		var page = (range - 1) * rangeSize;
		var range = range - 1;
		
		var url = "/togetherlion/admin_member_all.lion";
		url += "?page=" + page;
		url += "&range=" + range;
		url += "&searchType=" + $('#searchType').val();
		url += "&keyword=" + $('#keyword').val();
		
		location.href = url;
	}
	
	// 페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword)
	{
		var url = "/togetherlion/admin_member_all.lion";
		url += "?page=" + page;
		url += "&range=" + range;
		url += "&searchType=" + $('#searchType').val();
		url += "&keyword=" + $('#keyword').val();
		
		location.href = url;	
	}
	
	// 다음 버튼
	function fn_next(page, range, rangeSize)
	{
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		
		var url = "/togetherlion/admin_member_all.lion";
		url += "?page=" + page;
		url += "&range=" + range;
		url += "&searchType=" + $('#searchType').val();
		url += "&keyword=" + $('#keyword').val();
		
		location.href = url;
	}
	
</script>	
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
						<div class="collapse show" id="member" aria-labelledby="headingOne"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link current-menu" href="admin_member_all.jsp">전체회원</a> 
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
						<div class="collapse" id="report" aria-labelledby="headingFive"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_report_receptionList.jsp">접수내역</a> 
								<a class="nav-link" href="admin_report_handlingList.jsp">처리내역</a> 
								<a class="nav-link" href="admin_report_reasonList.jsp">사유관리</a>
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
					<div class="card mb-4 admin-table-body">

						<!--  Breadcrumb -->
						<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">회원조회</li>
								<li class="breadcrumb-item active" aria-current="page"><a
									href="#">전체회원</a></li>
							</ol>
						</nav>

						<div>
							<!-- searchBar -->
							<select class="form-select" name="searchType" id="searchType" 
							aria-label="Default select example" >
								<option value="ID" ${pagination.searchType == 'ID' ? 'selected="selected"' : '' }>이메일(ID)</option>
								<option value="NAME" ${pagination.searchType == 'NAME' ? 'selected="selected"' : '' }>이름</option>
							</select> 
							<input class="form-control" type="text" name="keyword" id="keyword" 
							value="${pagination.keyword}" aria-label="Search for..." aria-describedby="btnNavbarSearch" />
							<button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
							
						</div>
						<div class="card-body">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>번호</th>
										<th>이메일(ID)</th>
										<th>이름</th>
										<th>닉네임</th>
										<th>전화번호</th>
										<th>신고횟수</th>
										<th>휴면여부</th>
										<th>가입일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="member" items="${list }">
									<tr>
										<td>${member.num }</td>
										<td>${member.id }</td>
										<td>${member.name }</td>
										<td>${member.nickname }</td>
										<td>${member.tel }</td>
										<td>${member.reported_count }</td>
										<td>${member.dormant }</td>
										<td>${member.regist_datetime }</td>
									</tr>
									</c:forEach> 
								</tbody>
							</table>
						</div>

						<!-- page navigation -->
					
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<c:if test="${pagination.prev }">
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Previous"
										onclick="fn_prev('${pagination.page}', '${pagination.range }', '${pagination.rangeSize }')"> 
										<span aria-hidden="true">&laquo;</span></a>
									</li>
								</c:if>
								<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">				
									<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
										<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a>
									</li>			
								</c:forEach>
								<c:if test="${pagination.next}">				
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Next"
										onclick="fn_next('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')" >
										<span aria-hidden="true">&raquo;</span></a>
									</li>			
								</c:if>
							</ul>
						</nav> 
					</div>
				</div>
			</main>

			<!-- import FOOTER -->
			<c:import url="admin_footer.jsp"></c:import>

		</div>
	</div>
</body>
</html>

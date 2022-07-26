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

</head>
<body class="sb-nav-fixed">

	<!-- import HEADER -->
	<c:import url="admin_header.jsp"></c:import>
	
	<div id="layoutSidenav">

		<!-- import MENUBAR -->
		<c:import url="admin_menubar.jsp"></c:import>

		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<div class="card mb-4">
						<div class="main-card-body">
						
							<div class="alarm">
								<div class="alarm-name">
									<i class="fa-solid fa-box-archive"></i><span
										class="position-absolute translate-middle badge rounded-pill bg-danger main-alarm">
										3</span>
									<h4><a href="admin_cancel_receptionList.jsp">미진행 취소</a></h4>
								</div>
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>공동구매 게시물번호</th>
											<th>진행자ID</th>
											<th>취소신청자ID</th>
											<th>거래희망일</th>
											<th>신청접수일</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>3</td>
											<td><a href="#">g3988</a></td>
											<td>gachi394@gmail.com</td>
											<td>hjrdt@naver.com</td>
											<td>2022-05-31</td>
											<td>2022-05-19</td>
										</tr>
										<tr>
											<td>2</td>
											<td><a href="#">g3992</a></td>
											<td>dfaf2@naver.com</td>
											<td>yuije@gmail.com</td>
											<td>2022-05-25</td>
											<td>2022-05-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="#">g3990</a></td>
											<td>dfad33@gmail.com</td>
											<td>etwerf@naver.com</td>
											<td>2022-05-30</td>
											<td>2022-05-30</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="alarm">
								<div class="alarm-name">
									<i class="fa-solid fa-box-archive"></i><span
										class="position-absolute translate-middle badge rounded-pill bg-danger main-alarm">
										10</span>
									<h4><a href="admin_report_receptionList.jsp">미처리 신고</a></h4>
								</div>
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>피신고자ID</th>
											<th>게시물종류</th>
											<th>게시물번호</th>
											<th>신고자ID</th>
											<th>신고사유</th>
											<th>신고접수일</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>3</td>
											<td>saza123@gmail.com</td>
											<td>공동구매</td>
											<td><a href="admin_report_receptionDetail.jsp">g7512</a></td>
											<td>gachi394@gmail.com</td>
											<td>판매금지품목</td>
											<td>2022-05-27</td>
										</tr>
										<tr>
											<td>2</td>
											<td>dfjad@gmail.com</td>
											<td>커뮤니티</td>
											<td><a href="admin_report_receptionDetail.jsp">g7512</a></td>
											<td>elfnaj589@gmail.com</td>
											<td>친목</td>
											<td>2022-05-28</td>
										</tr>
										<tr>
											<td>1</td>
											<td>qosjfq@gmail.com</td>
											<td>댓글</td>
											<td><a href="admin_report_receptionDetail.jsp">r9582</a></td>
											<td>xfnqp33@gmail.com</td>
											<td>부적절한 내용</td>
											<td>2022-05-29</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="alarm">
								<div class="alarm-name">
									<i class="fa-solid fa-box-archive"></i><span
										class="position-absolute translate-middle badge rounded-pill bg-danger main-alarm">
										99</span>
									<h4><a href="admin_inquiry_inquiryList.jsp">미처리 문의</a></h4>
								</div>
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성자ID</th>
											<th>작성일</th>
											<th>답변상태</th>
											<th>답변일</th>
											<th>담당자</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>10</td>
											<td><a href="admin_inquiry_inquiryAnswerInsertForm.jsp">진행잔데
													취소 가능한가요?</a></td>
											<td>sus234@naver.com</td>
											<td>2022-05-24</td>
											<td><span
												class="badge rounded-pill bg-danger report-handling-badge">미답변</span>
											</td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td>9</td>
											<td><a href="admin_inquiry_inquiryAnswerInsertForm.jsp">나눔날짜
													변경가능할까요?</a></td>
											<td>wus234@naver.com</td>
											<td>2022-05-25</td>
											<td><span
												class="badge rounded-pill bg-danger report-handling-badge">미답변</span>
											</td>
											<td></td>
											<td></td>
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

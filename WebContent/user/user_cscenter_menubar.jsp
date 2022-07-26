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
<title>같이사자</title>
</head>
<body>

	<div class="col-lg-3 col-md-5">
		<div class="sidebar">
			<div class="sidebar__item">
				<h3>고객센터</h3>
				<ul>
					<li><a href="user_cscenter_noticeMain.jsp">공지사항<i class="bi bi-chevron-right"></i></a></li>
					<li><a href="user_cscenter_faqMain.jsp">FAQ<i class="bi bi-chevron-right"></i></a></li>
					<li><a href="user_cscenter_inquiryMain.jsp">1:1 문의<i class="bi bi-chevron-right"></i></a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>
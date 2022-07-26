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
				<h3>마이페이지</h3>
				<ul>
					<li><a href="user_mypage_myBuypost.jsp">MY 공구<i class="bi bi-chevron-right"></i></a></li>
					<li><a href="user_mypage_myArticle.jsp">게시물 관리<i class="bi bi-chevron-right"></i></a></li>
					<li><a href="user_mypage_wishlist.jsp">찜<i class="bi bi-chevron-right"></i></a></li>
					<li><a href="user_mypage_point.jsp">포인트<i class="bi bi-chevron-right"></i></a></li>
					<li><a href="user_mypage_myInfo_pwCheck.jsp">개인 정보 수정<i class="bi bi-chevron-right"></i></a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>
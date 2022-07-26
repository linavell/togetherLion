<%@page import="com.test.mybatis.MemberDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String member_code = (String)session.getAttribute("member_code");
	String nickName = (String)session.getAttribute("nickName");
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
</head>
<body>	
  
    <header class="header">
        <div class="header__top lion_header_top"></div>
        
        <%
        /* MemberDTO dto = null;
        dto = (MemberDTO)request.getAttribute("result");
        if (dto == null) */
        if (member_code == null)
        {
        %>

        <div class="header__top">
        	<div class="header__top__right">
        		<div class="header__top__right__social">
        			<a href="<%=cp %>/user/user_joinInsertForm.jsp">회원가입</a>
                </div>
                <div class="header__top__right__auth">
                    <a href="<%=cp %>/loginform.lion">로그인</a>
                </div>
                <div class="header__top__right__language">
                	<div><a href="<%=cp %>/user/user_cscenter_noticeMain.jsp">고객센터</a></div>
                    <span class="arrow_carrot-down"></span>
                    <ul class="cscenter_list">
                    	<li><a href="<%=cp %>/user/user_cscenter_noticeMain.jsp">공지사항</a></li>
                    	<li><a href="<%=cp %>/user/user_cscenter_faqMain.jsp">FAQ</a></li>
                    	<li><a href="<%=cp %>/user/user_cscenter_inquiryMain.jsp">1:1 문의</a></li>
                    </ul>
                 </div>
             </div> 
        </div>
		<% 
        }
        else
        {
		%>

        <div class="header__top">
        	<div class="header__top__right">
                <div class="header__top__right__language header__nickname">
                	<%-- <div><span id="nickname"><%=dto.getNickname() %></span> 님</div> --%>
                	<div><span id="nickname"><%=nickName != null ? nickName : "관리자" %></span> 님</div>
                    <span class="arrow_carrot-down"></span>
                    <ul>
                    	<li><a href="<%=cp %>/user/user_mypageMain.jsp">마이페이지</a></li>
                    	<li><a href="<%=cp %>/logout.lion">로그아웃</a></li>
                    </ul>
                 </div>
                <div class="header__top__right__language">
                	<div>고객센터</div>
                    <span class="arrow_carrot-down"></span>
                    <ul class="cscenter_list">
                    	<li><a href="<%=cp %>/user/user_cscenter_noticeMain.jsp">공지사항</a></li>
                    	<li><a href="<%=cp %>/user/user_cscenter_faqMain.jsp">FAQ</a></li>
                    	<li><a href="<%=cp %>/user/user_cscenter_inquiryMain.jsp">1:1 문의</a></li>
                    </ul>
                 </div>
             </div> 
        </div>
        <%
        }
        %>
             
        <!-- LOGO -->
        <div class="header__logo">
        	<a href="<%=cp %>/main.lion">
        		<img class="user_logo" src="<%=cp %>/img/lion_logo.png"/>
        		같이사자
       		</a>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>전체 카테고리</span>
                        </div>
                        <ul style="display: none;">
                            <li><a href="<%=cp %>/user/user_buyPost_category.jsp">쌀/면/빵/떡</a></li>
                            <li><a href="#">과일/채소</a></li>
                            <li><a href="#">수산/정육/계란</a></li>
                            <li><a href="#">밀키트/간편식/냉동</a></li>
                            <li><a href="#">국/반찬</a></li>
                             <li><a href="#">간식/과자</a></li>
                            <li><a href="#">우유/유제품</a></li>
                            <li><a href="#">물/음료/커피/차</a></li>
                            <li><a href="#">양념/소스</a></li>
                        </ul>
                    </div>
                </div>
				<div class="col-lg-4">
					<nav class="header__menu">
						<ul>
							<li class="active recent"><a href="<%=cp %>/buypostnew.lion">최근공구</a></li>
							<li class="final"><a href="<%=cp %>/user/user_buyPost_final.jsp">마감임박</a></li>
							<%-- <li><a href="<%=cp %>/user/user_communityMain.jsp">커뮤니티</a></li> --%>
						</ul>
					</nav>
				</div>
				<div class="col-lg-5">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="<%=cp %>/user/user_buyPost_search.jsp">
								<input type="text" placeholder="검색어를 입력해주세요.">
								<button type="submit" class="site-btn">
									<i class="bi bi-search"></i>
								</button>
							</form>
						</div>
						<div class="header__cart">
							<ul>
								<li><a href="#"><i class="bi bi-bell"></i> <span>8</span></a></li>
								<li><a href="#"><i class="fa fa-heart-o" aria-hidden="true" title="사진첨부"></i></a></li>
								<li><a href="<%=cp %>/user/user_buyPostInsertFrom.jsp"><i class="bi bi-pencil-square"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
        </div>
    </section>
    <!-- Hero Section End -->

</body>
</html>
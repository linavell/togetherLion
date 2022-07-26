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
.sidebar__item ul li:nth-child(2) {
	background-color: #f5f3ed;
}
.sidebar__item ul li:nth-child(2) a {
	color: #fc9942;
}
.sidebar__item ul li:nth-child(2) a i {
	color: #fc9942;
}

/* sweetalert */
h2#swal2-title {
    font-size: 23px;
    padding-top: 40px;
    padding-bottom: 10px;
}
input.swal2-input {
    margin-bottom: 10px;
}
input.swal2-input:focus {
    box-shadow: none;
    border: 2px solid #fca652;
}
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 100px;
    margin-right: 20px;
}
button.swal2-cancel.swal2-styled {
    width: 100px;
    margin-right: 20px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
button.swal2-cancel.swal2-styled:focus {
    box-shadow: none;
}
</style>
<script type="text/javascript">

	$(document).ready(function()
	{	
		$(".titlebuypost").click(function()
		{
			location.href = "buypostarticle.lion?code=" + $(this).val();
		});
		
		$(".titlereplybuypost").click(function()
		{
			location.href = "buypostarticle.lion?code=" + $(this).val();
		});
	});

	$(document).ready(function()
	{	
		var valueArr = new Array();
		var list = $("input[name='article_check']");
		
		$(".buypost_deleteBtn").click(function()
		{
			if ($("input[name='article_check']:checked").length != 0)
			{
				Swal.fire
				({
				  title: '글을 삭제하시겠습니까?',
				  icon: 'warning',
				  iconColor: '#f27474',
				  showCancelButton: true,
				  confirmButtonText: '삭제',
				  cancelButtonText: '취소',
				  reverseButtons: true
				}).then((result) => {
					if (result.isConfirmed) 
					{
	                    // Delete 완료 후, 띄울 알림창
	  				 	Swal.fire
	  				 	({
	  				 		title: '삭제 완료!',
	    			    	icon: 'success',
	    			    	confirmButtonText: '확인'
	    			    }).then(() => {
	    			    	// Delete 작업 처리 코드 작성하기!
	
	    			    	for(var i = 0; i < list.length; i++)
							{
								if(list[i].checked)
								{
									valueArr.push(list[i].value);
								}
							}
								
							//선택된 체크박스의 값을 콘솔에 출력
							var str = '';
							for(var i in valueArr)
							{
								str += valueArr[i] + ',';
							}    
							
							str = str.replace(/,$/, '');
			        		$(location).attr("href", "myarticledelete.lion?code=" + str);
							
		        			
	    			    });
		    	  }
				});
			}
			
		});

	});
	
	$(document).ready(function() 
	{
		$('#myArticleBuypost').show();
	    $('#myArticleBuypostReply').hide();
		
		$('#myArticleSelectBox').change(function() 
		{
			var result = $('#myArticleSelectBox option:selected').val();
		    if (result == '0') 
		    {
		      $('#myArticleBuypost').show();
		      $('#myArticleBuypostReply').hide();
		    } else 
		    {
		      $('#myArticleBuypost').hide();
		      $('#myArticleBuypostReply').show();
		    }
		 }); 
	});
	
	$(window).load(function(){
	    // 글 전체 선택
		$("input[name='article_checkAll']").click(function () {
	        var chk_listArr = $("input[name='article_check']");
	        for (var i=0; i < chk_listArr.length; i++) {
	            chk_listArr[i].checked = this.checked;
	        }
	    });
	    
	    $("input[name='article_check']").click(function () { 
	        if ($("input[name='article_check']:checked").length == 10) {
	            $("input[name='article_checkAll']")[0].checked = true;
	        } else  {                                                
	            $("input[name='article_checkAll']")[0].checked = false; 
	        }
	    });

	});
	
	
</script>
</head>
<body>

	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>
    
    <!-- import Mypage Header -->
	<c:import url="user_mypage_header.jsp"></c:import>
	
	<!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
			<div class="row featured__filter">

				<!-- import mypage_MENUBAR -->
				<c:import url="user_mypage_menubar.jsp"></c:import>

				<div class="col-lg-9 col-md-7">
					<div class="product__discount mypage-title-box">
						<div class="section-title myBuypost-title">
							<h2>게시물 관리</h2>
						</div>
						<div class="myBuypost-form-box">
							<form action="#">
								<div class="myBuypost-select myBuypost-select-one">
									<select id = "myArticleSelectBox"class="form-select myBuypost-selectBox" aria-label="Default select example">
										<option value="0" selected>공동구매 게시물</option>
										<option value="1">공동구매 댓글</option>
									</select>
								</div> 
							</form>
						</div>
					</div>
					
					<!-- if, ① 공동구매 게시물 -->
					<div id = "myArticleBuypost">
						<table class="table noticeTable mypage-buypostTable">
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">내용</th>
									<th scope="col">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="buypost" items="${buypost }">
									<tr>
										<th scope="row"> ${buypost.num }</th>
										<td class="title"><input class="titlebuypost" type="button" value="${buypost.code }">${buypost.title}</td>
										<td>${buypost.write_datetime }</td>
									</tr>
								</c:forEach>
						<!-- 
								<tr>
									<th scope="row">3</th>
									<td class="title"><a href="">도지마롤 1kg 같이사요~(10/15)</a></td>
									<td>2022-05-15</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td class="title"><a href="">청경재 1kg 같이사영(8/9)</a></td>
									<td>2022-04-04</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td class="title"><a href="">장인약과 5kg 공구모집함(22/30)</a></td>
									<td>2022-03-15</td>
								</tr>
						-->
							</tbody>
						</table>
					</div>
					
					<!-- if, ② 공동구매 댓글 -->
					
					<form id = "myArticleBuypostReply" class="myArticle-form" >
						<button type="button" class="btn btn-primary inquiryBtn article-deleteBtn buypost_deleteBtn">선택삭제</button>
						<table class="table noticeTable mypage-buypostTable">
							<thead>
								<tr>
									<th scope="col" class="myArticle-checkbox">
										<input class="form-check-input allCheck" type="checkbox" name="article_checkAll" id="article_checkAll">
									</th>
									<th scope="col">내용</th>
									<th scope="col">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="buypost_reply" items="${buypost_reply }">
								<tr>
									<td class="myArticle-checkbox">
										<input class="form-check-input" type="checkbox" name="article_check" id="article_check" value="${buypost_reply.code }">
									</td>
									<td class="title"><input class="titlereplybuypost" type="button" value="${buypost_reply.buypost_code }">${buypost_reply.content }</td>
									<td>${buypost_reply.write_datetime }</td>
								</tr>
								</c:forEach>
								<!-- <tr>
									<td class="myArticle-checkbox">
										<input class="form-check-input" type="checkbox" name="article-check" value="">
									</td>
									<td class="title"><a href="">사이트 링크가 이상한 곳으로 연결되는데요?</a></td>
									<td>2022-05-20</td>
								</tr>
								<tr>
					  				<td class="myArticle-checkbox">
										<input class="form-check-input" type="checkbox" name="article-check" value="">
									</td>
									<td class="title"><a href="">저 추가 구매하려구여~</a></td>
									<td>2022-05-17</td>
								</tr>
								<tr>
									<td class="myArticle-checkbox">
										<input class="form-check-input" type="checkbox" name="article-check" value="">
									</td>
									<td class="title"><a href="">진행자님 이거 원가가 얼마인가요?</a></td>
									<td>2022-05-15</td>
								</tr>
								<tr>
									<td class="myArticle-checkbox">
										<input class="form-check-input" type="checkbox" name="article-check" value="">
									</td>
									<td class="title"><a href="">진행 좀 빨리해주세요</a></td>
									<td>2022-04-04</td>
								</tr>
								<tr>
									<td class="myArticle-checkbox">
										<input class="form-check-input" type="checkbox" name="article-check" value="">
									</td>
									<td class="title"><a href="">물건 구매는 언제 하시나요?</a></td>
									<td>2022-03-15</td>
								</tr> -->
							</tbody>
						</table>
					</form>
					
					<nav class="pageNav" aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">1</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">2</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">3</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">4</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);">5</a></li>
							<li class="page-item"><a class="page-link"
								href="javascript:void(0);" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
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
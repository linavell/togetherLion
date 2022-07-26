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
<link rel="stylesheet" href="<%=cp %>/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="<%=cp %>/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="<%=cp %>/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="<%=cp %>/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="<%=cp %>/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="<%=cp %>/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="<%=cp %>/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="<%=cp %>/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="<%=cp %>/css/userStyle.css" type="text/css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

<style type="text/css">
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

	//sweetalert
	$(function()
	{
		// <참여하기> 
		$(".participateBtn").click(function()
    	{
			// 회원/비회원 분기처리
			if (true) 
			{
	    		// 결제팝업
				window.open("user_buypost_pay_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
			}
			else 
			{
	    		Swal.fire({
	    			  title: '로그인 후 이용가능한 서비스입니다.',
	    			  icon: 'warning',
	    			  iconColor: '#f27474',
	    			  confirmButtonText: '확인'
	    			}).then(() => {
	    				// 로그인폼으로 이동
    			    	location.href="<%=cp%>/user/user_loginForm.jsp";
    			    });				
			}
        });		
			
		
		// <참여취소> 
		$(".cancelParticipateBtn").click(function()
    	{
			// 남은 시간이 > 24시간
			if (true) 
			{
	    		Swal.fire({
	    			  title: '정말 참여 취소하겠습니까?',
	    			  html: '취소 이후에 모집 상품개수가 채워질 경우,<br> 다시 참여하지 못할 수도 있습니다.',
	    			  icon: 'warning',
	    			  iconColor: '#f27474',
	    			  showCancelButton: true,
	    			  confirmButtonText: '취소',
	    			  cancelButtonText: '나가기',
	    			  reverseButtons: true
	    			}).then((result) => {
	    			  if (result.isConfirmed) {
	    				  
	     				  // 참여취소 작업 처리 코드 작성하기!
	     					
	     					
	     				  // 참여취소 완료 후, 띄울 알림창
	    				  Swal.fire({
	      			    	title: '참여가 취소되었습니다.',
	      			    	text: '결제 포인트는 환불 처리됩니다.',
	      			    	icon: 'success',
	      			    	confirmButtonText: '확인'
	      			    }).then(() => {
	      			    	location.href="#";
	      			    });
	  		    	  }
	    			})
			}
			else
			{
	    		Swal.fire({
	    			  title: '마감까지 남은기간이 24시간 이하인 게시물은 참여 취소 불가능합니다.',
	    			  icon: 'warning',
	    			  iconColor: '#f27474',
	    			  confirmButtonText: '확인'
	    			})				
			}  			

        });		
		
		
		// 대기상태회원 → <참여하기> 
		$(".reparticipateBtn").click(function()
    	{
			// 대기→재참여 작업 처리 코드 작성하기!
				
				
			// 대기→재참여 후, 띄울 알림창 
    		Swal.fire({
  			  title: '참여 완료!',
  			  icon: 'success',
  			  confirmButtonText: '확인',
  			}).then(() => {
  				location.href="#!";
			});
        });
		
		
		// <수정> 
		$(".buypostUpdateBtn").click(function()
    	{
			// 남은 시간이 > 24시간
			if (false) 
			{
	    		Swal.fire({
	    			  title: '정말 공동구매 진행을 취소하겠습니까?',
	    			  text: '수정 시, 참여자들이 모두 대기상태로 전환됩니다.',
	    			  icon: 'warning',
	    			  iconColor: '#f27474',
	    			  showCancelButton: true,
	    			  confirmButtonText: '수정',
	    			  cancelButtonText: '취소',
	    			  reverseButtons: true
	    			}).then((result) => {
	    			  if (result.isConfirmed) {
	     				  // 수정폼으로 이동
	     				  location.href="<%=cp%>/user/user_buyPostUpdateForm.jsp";
			    	  }
	    			})
			}
			else
			{
	    		Swal.fire({
	    			  title: '마감까지 남은기간이 24시간 이하인 게시물은 수정이 불가능합니다.',
	    			  icon: 'warning',
	    			  iconColor: '#f27474',
	    			  confirmButtonText: '확인'
	    			})				
			}
        });
		
		
		// <진행취소> 
		$(".buypostCancelBtn").click(function()
    	{
    		Swal.fire({
    			  title: '정말 공동구매 진행을 취소하겠습니까?',
    			  icon: 'warning',
    			  iconColor: '#f27474',
    			  showCancelButton: true,
    			  confirmButtonText: '취소',
    			  cancelButtonText: '나가기',
    			  reverseButtons: true
    			}).then((result) => {
    			  if (result.isConfirmed) {
    				  
     				  // 공동구매 진행취소 작업 처리 코드 작성하기!
     					
     					
     				  // 진행취소 완료 후, 띄울 알림창
    				  Swal.fire({
      			    	title: '진행이 취소되었습니다.',
      			    	text: '결제 포인트는 환불 처리됩니다.',
      			    	icon: 'success',
      			    	confirmButtonText: '확인'
      			    }).then(() => {
      			    	// 메인으로 이동
      			    	location.href="<%=cp%>/user/user_main.jsp";
      			    });
		    	  }
    			})
        });
		
	});

	$(function()
	{
		// 찜
		$("a.heart-icon").click(function()
		{
			if ($("a>i.buypost-wish").hasClass("fa-heart-o"))
			{
				$("a>i.buypost-wish").removeClass("fa-heart-o");
				$("a>i.buypost-wish").addClass("fa-heart");
			}
			else
			{
				$("a>i.buypost-wish").removeClass("fa-heart");
				$("a>i.buypost-wish").addClass("fa-heart-o");
			}
				
		});
		
		// 댓글
		$(".reply-update").click(function()
		{
			$(".reply-content-box").css("display", "none");
			$(".reply-content-update-box").css("display", "block");
		});
		$(".reply-updateBtn").click(function()
		{
			$(".reply-content-box").css("display", "block");
			$(".reply-content-update-box").css("display", "none");
		});
		
	});
	
	
	// 팝업창
	// 결제
	function pay()
	{	
		window.open("user_buypost_pay_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
	}
	// 신고
	function report()
	{	
		window.open("user_buypost_report_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
	}
	// 취소신청
	function cancel()
	{
		window.open("user_buypost_cancel_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
	}
	// 구매완료 스크린샷 업로드
	function imgUpload()
	{
		window.open("user_buypost_buyImgInsertForm_popup.jsp", "_blank", "top=150,left=550,width=970,height=600");
	}
	// 구매완료 스크린샷 확인
	function imgCheck()
	{
		window.open("user_buypost_buyImgCheck_popup.jsp", "_blank", "top=150,left=550,width=970,height=600");
	}
	
</script>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="/header.lion"></c:import>

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 pic-container">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<img class="product__details__pic__item--large"
								src="img/buypost/${buypost.goods_photo_name }" alt="">
							<div class="product__url">
								<a href="${buypost.url }"
                            	target="_blank"><i
									class="fa fa-link" aria-hidden="true"></i>상품링크</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-5 detail-container">
					<div class="product__category">
						<a href="<%=cp %>/buypostmaincate.lion?code=${buypost.main_cate_code }" class="category">${buypost.main_cate_name }</a> 
						<i class="fa fa-angle-right" aria-hidden="true"></i> 
						<a href="<%=cp %>/buypostsubcate.lion?code=${buypost.sub_cate_code }" class="category">${buypost.sub_cate_name }</a>
					</div>
					<div class="product__details__text">
						<h3>${buypost.title }</h3>
						<a href="#!">
							<div class="product__details__profile">
								<div class="buypost_profile_photo">
									<!-- 회원 매너지수 계산해서 매너지수사진테이블에서 해당 점수대의 사진 가져와야 합니다. -->
									<img src="<%=cp%>/img/mannerLevel/manner_3.png" />
								</div>
								<div class="buypost_profile_nickname">${writer.nickname }</div>
							</div>
						</a>
						<div class="product__details__box">
							<div class="product__details__label">1인 가격</div>
							<div class="product-price">${buypost.person_price }</div>
						</div>
						<div class="product__details__box">
							<div class="product__details__label">유통기한</div>
							<div class="product__details__value">${buypost.expiration_datetime }</div>
						</div>
						<div class="product__details__box">
							<div class="product__details__label totalBuyNum_label">
								현재 구매한 상품 개수<span class="buyNum">${buypost.count }</span>
							</div>
							<div class="progress buypost-progress">
								<div class="progress-bar bg-warning" role="progressbar"
									style="width: 75%" aria-valuenow="75" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div class="product__details__box">
							<div class="product__details__label">거래 위치 ${waitState }</div>
							<div class="product__details__value">서울 마포구 서교동 445-7</div>
						</div>
						<div class="product__details__box">
							<div class="product__details__label">거래희망일</div>
							<div class="product__details__value">${buypost.trade_datetime }</div>
						</div>
						<div class="product__details__box">
							<c:choose>
							<c:when test="${state == '모집' }">
							<div class="product__details__label">마감까지 남은 시간</div>
							</c:when>
							<c:otherwise>
							<div class="product__details__label"></div>
							</c:otherwise>
							</c:choose>
							<div class="product__details__value">
								<c:choose>
								<c:when test="${state == '모집' }">
									<c:choose>
		                        	<c:when test="${buypost.day != '0' }">
		                        		${buypost.day }일 
		                        	</c:when>
		                        	</c:choose>
		                        	<c:choose>
		                        	<c:when test="${buypost.hour != '0' }">
		                        		${buypost.hour }시간 
		                        	</c:when>
		                        	</c:choose>
		                        	<c:choose>
		                        	<c:when test="${buypost.minute != '0' }">
		                        		${buypost.minute }분                   
		                        	</c:when>
		                        	</c:choose>
								</c:when>
								<c:otherwise>
									<br>
								</c:otherwise>
								</c:choose>
							</div>
						</div>

						<div class="product__details__quantity">
							<div class="quantity">
								<div class="pro-qty">
									<input type="text" value="1">
								</div>
							</div>
						</div>

						<!-- 버튼종류 -->
						<c:choose>
						<c:when test="${state == '취소' or state == '완료' }">
							<button type="button" class="primary-btn buypost-end-btn" disabled="disabled">공동구매가 마감되었습니다.</button>
						</c:when>
						<c:otherwise>
							<c:choose>
							<c:when test="${state == '모집' }">
								<c:choose>
								<c:when test="${memberState == '진행자' }">
									<button type="button" class="primary-btn two-btn buypostUpdateBtn">수정</button>
                        			<button type="button" class="primary-btn two-btn buypostCancelBtn">진행취소</button>
								</c:when>
								<c:when test="${memberState == '참여자' }">
									<c:choose>
									<c:when test="${waitState != null }">	<!-- 대기상태 -->
										<button type="button" class="primary-btn two-btn moreParticipateBtn"
										onclick="javascript:pay()">추가참여</button>
	                        			<button type="button" class="primary-btn two-btn cancelParticipateBtn">참여취소</button>
									</c:when>
									<c:otherwise>
	                        			<button type="button" class="primary-btn two-btn reparticipateBtn">참여하기</button>
                        				<button type="button" class="primary-btn two-btn cancelParticipateBtn">참여취소</button>
									</c:otherwise>
									</c:choose>
								</c:when>
								<c:when test="${memberState == '이용자' }">
									<button type="button" class="primary-btn participateBtn">참여하기</button>
								</c:when>
								<c:otherwise>	<!-- 비회원인 경우 --> 
									<button type="button" class="primary-btn participateBtn">참여하기</button>
								</c:otherwise>
								</c:choose>
							</c:when>
							<c:when test="${state == '진행' }">
								<c:choose>
								<c:when test="${memberState == '진행자' }">		<!-- 상품구매여부 -->
									<c:choose>
									<c:when test="${buyScreenshot == null }">
										<button type="button" class="primary-btn uploadBuypostImgBtn"
                        				onclick="javascript:imgUpload()">구매완료 스크린샷 업로드하기</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="primary-btn checkBuypostImgBtn"
                        				onclick="javascript:imgCheck()">구매완료 스크린샷 확인하기</button>
									</c:otherwise>
									</c:choose>									
								</c:when>
								<c:when test="${memberState == '참여자' }">		<!-- 상품구매여부 -->
									<c:choose>
									<c:when test="${buyScreenshot == null }">
										<button type="button" class="primary-btn" id="notUploadImg">진행자가 상품을 구매하기 전이에요</button>								
									</c:when>
									<c:otherwise>
										<button type="button" class="primary-btn checkBuypostImgBtn"
                        				onclick="javascript:imgCheck()">구매완료 스크린샷 확인하기</button>
									</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>	<!-- 이용자 || 비회원 -->
									<button type="button" class="primary-btn buypost-end-btn" disabled="disabled">공동구매가 마감되었습니다.</button>
								</c:otherwise>
								</c:choose>
							</c:when>
							</c:choose>
						</c:otherwise>
						</c:choose>
						
						<!-- 찜 → 모집중인 게시물에만 띄움 -->
						<!-- 1) 찜 하기 전, 비어있는 하트 -->
						<a href="#!" class="heart-icon"><i class="fa fa-heart-o buypost-wish" aria-hidden="true"></i></a>
						<!-- 2) 찜 했을 때, 색칠된 하트 -->
						<!-- <a href="#!" class="heart-icon"><i class="fa fa-heart buypost-wish" aria-hidden="true"></i></a> -->
					</div>
				</div>

				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">상세내용</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">참여자목록</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc buypost-location">
									<div id="map" class="buypost-map"></div>

									<div class="location-text">
										<div class="map-label">거래위치</div>
										<input type="text" id="detailAddr" class="buypost-addr"
											readonly="readonly" />
									</div>
								</div>

								<!-- 상세내용 -->
								<div class="col-lg-12">
									<hr />
									<div class="buypost-detail-content">
										${buypost.content }
									</div>
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div
									class="product__details__tab__desc participate-profile-detail">

									<!-- 참여자목록 -->
									<!-- 회원 매너지수 계산해서 매너지수사진테이블에서 해당 점수대의 사진 가져와야 합니다. -->
									<c:forEach var="parti" items="${partiList }">
										<a href="#!">
											<div class="product__details__profile participate-profile">
												<div class="buypost_profile_photo participate-profile-photo">
													<img src="<%=cp%>/img/mannerLevel/manner_3.png" />
												</div>
												<div
													class="buypost_profile_nickname participate-profile-nickname">${parti.nickname }</div>
											</div>
										</a>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="post-bottom">
						<a class="share" href="#!">공유</a>|<a class="report" href="javascript:report()">신고</a>
						<div class="buypost-cancel-apply">
							<button type="button" class="btn buypost-cancel-apply-btn">
								<div>
									공동구매 진행에 문제가 있나요?<br /> <span id="cancel-apply">공동구매 취소
										신청하러 가기</span>
								</div>
								<i class="bi bi-chevron-right cancle-apply-icon"></i>
							</button>
						</div>
					</div>
					<hr />
				</div>

				<!-- 댓글 -->
				<!-- 회원 매너지수 계산해서 매너지수사진테이블에서 해당 점수대의 사진 가져와야 합니다. -->
				<div class="col-lg-12">
					<div class="reply-container">
						<h3 class="buypost-reply-title">댓글</h3>
					</div>
					<div class="card-body reply-body">
						<form class="mb-4">
							<textarea class="form-control reply-form" rows="3"
								placeholder="댓글을 입력해주세요."></textarea>
								
							<!-- 지금은 submit 으로 해놓으면 오류나서 button 으로 해놓음 -->
							<button type="button" class="primary-btn reply-btn">등록</button>
						</form>
						
						<div class="d-flex mb-4 reply-box">
							<div class="buypost_profile_photo reply-profile-photo">
								<img src="<%=cp%>/img/mannerLevel/manner_3.png" />
							</div>
							<div class="reply">
								<div class="fw-bold reply-nickname">
								
									<!-- if, ① 본인 댓글 (진행자 Ⅹ) -->
									<!-- 
									알니니
									<div class="reply-control">
										<a class="reply-update" href="#!">수정</a> | <a class="reply-delete" href="#!">삭제</a>
									</div>
									-->
									
									<!-- if, ② 본인 댓글 (진행자) → 댓글 고정 Ⅹ -->	
									<!-- 
									<span class="pin-nickname">알니니</span>
									<div class="reply-control">
										<a class="reply-pin-cancel" href="#!">고정하기</a> | <a
											class="reply-update" href="#!">수정</a> | <a 
											class="reply-delete" href="#!">삭제</a>
									</div>
									-->
									
									<!-- if, ② 본인 댓글 (진행자) → 댓글 고정 ○ -->
									<!-- 
									<span class="pin-nickname">알니니</span><i class="bi bi-pin-fill"></i>
									<div class="reply-control">
										<a class="reply-pin-cancel" href="#!">고정취소</a> | <a
											class="reply-update" href="#!">수정</a> | <a 
											class="reply-delete" href="#!">삭제</a>
									</div>
									-->
									
									<!-- if, ③ 타회원 댓글 -->	
									< 
									알니니
									<div class="reply-control">
										<a class="report reply-report" href="javascript:report()">신고</a>
									</div>
									
								</div>
								
								<!-- if, 댓글 수정버튼 누르면 .reply-content-box → display:none; & .reply-content-update-box → display: block; 하고 -->
								<!-- 수정창에서 [수정]하면, .reply-content-box → display:block; & .reply-content-update-box → display: none;   하면 될 듯?-->
								<!-- 댓글내용 -->
								<div class="reply-content-box">
									<span class="reply-text">햇반햇반햇반햇반햇반</span> 
								</div>
								<!-- 댓글수정 시, -->
								<div class="reply-content-update-box">
									<form class="mb-4">
										<textarea class="form-control reply-form reply-update-form" rows="3"
											placeholder="댓글을 입력해주세요." >햇반햇반햇반햇반햇반</textarea>
										<button type="button" class="primary-btn reply-btn reply-updateBtn">수정</button>
									</form>
								</div>
							</div>
						</div>
						
						<div class="d-flex mb-4 reply-box">
							<div class="buypost_profile_photo reply-profile-photo">
								<img src="<%=cp%>/img/mannerLevel/manner_1.png" />
							</div>
							<div class="ms-3 reply">
								<div class="fw-bold reply-nickname">
									거꾸로해도정은정
									<div class="reply-control">
										<a class="reply-report" href="#!">신고</a>
									</div>
								</div>
								<span class="reply-text">엄머나,,,바로 참여했습니다~ *^^* ~ ㅎㅎ</span>
							</div>
						</div>
						<div class="d-flex mb-4 reply-box">
							<div class="buypost_profile_photo reply-profile-photo">
								<img src="<%=cp%>/img/mannerLevel/manner_5.png" />
							</div>
							<div class="ms-3 reply">
								<div class="fw-bold reply-nickname">
									yong__go_og
									<div class="reply-control">
										<a class="reply-report" href="#!">신고</a>
									</div>
								</div>
								<span class="reply-text">마침 햇반 다 떨어졌는데 타이밍 ㄴㅇㅅ~</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Details Section End -->

	<!-- Related Product Section Begin -->
	<section class="related-product">
		<div class="container"></div>
	</section>
	<!-- Related Product Section End -->

	<!-- import FOOTER -->
	<c:import url="user_footer.jsp"></c:import>

	<!-- Js Plugins -->
	<script src="<%=cp %>/js/jquery-3.3.1.min.js"></script>
	<script src="<%=cp %>/js/bootstrap.min.js"></script>
	<script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
	<script src="<%=cp %>/js/jquery-ui.min.js"></script>
	<script src="<%=cp %>/js/jquery.slicknav.js"></script>
	<script src="<%=cp %>/js/owl.carousel.min.js"></script>
	<script src="<%=cp %>/js/main.js"></script>

	<!-- map API -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1cf593d625e664e728990121f9c38ac7&libraries=services"></script>
	<script src="<%=cp %>/js/map-buyPostArticle.js"></script>
</body>
</html>
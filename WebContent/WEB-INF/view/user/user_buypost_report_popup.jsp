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
<title>같이사자 신고</title>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
			integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
			crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

<style type="text/css">
.sidebar__item ul li:nth-child(2){
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
<script>
	
	$(document).ready(function()
    {
		$(".reportBtn").click(function()
    	{
    		Swal.fire({
    			  title: '신고하시겠습니까?',
    			  text: '신고 후, 취소 불가합니다.',
    			  icon: 'warning',
    			  iconColor: '#f27474',
    			  showCancelButton: true,
    			  confirmButtonText: '신고',
    			  cancelButtonText: '취소',
    			  reverseButtons: true
    			}).then((result) => {
    			  if (result.isConfirmed) {
    				  
     				  // 신고접수 작업 처리 코드 작성하기!
     					
     					
     				  // 신고접수 완료 후, 띄울 알림창
    				  Swal.fire({
      			    	title: '신고가 접수되었습니다.',
      			    	icon: 'success',
      			    	confirmButtonText: '확인'
      			    }).then(() => {
      			    	window.close();
      			    });
		    	  }
    			})
        });
    });
</script>
</head>
<body class="popup">
	<div class="report-container">
		<div class="report-title">
			<h2>신고하기</h2>
			<hr class="report-line"/>
		</div>
		
		<form action="">
			<div class="accordion" id="accordionExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							<input class="form-check-input report-radio" type="radio" name="main-cate-code" checked>
							<span class="main-cate">판매금지 물품이에요</span>
							<i class="fa-solid fa-angle-down report-down"></i>
						</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p class="report-content">
								- 무허가 식품<br />
								- 건강 식품<br />
								- 위조 식품
							</p>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							<input class="form-check-input report-radio" type="radio" name="main-cate-code">
							<span class="main-cate">필수사항을 기재하지 않았어요</span>
							<i class="fa-solid fa-angle-down report-down"></i>
						</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p class="report-content">
								- 필수항목 수정이 필요한 경우<br />
								- 잘못된 카테고리 선택<br />
								- 상품설명 부족<br />
								- 부적절한 내용 기재 (음란성, 명예훼손, 저작권침해)
							</p>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							<input class="form-check-input report-radio" type="radio" name="main-cate-code">
							<span class="main-cate">전문판매업자 같아요</span>
							<i class="fa-solid fa-angle-down report-down"></i>
						</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p class="report-content">
								- 여러 계정 또는 하나의 계정으로 같은 물건의 공동구매를 진행<br />
								- 해외 구매 대행
							</p>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingFour">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseFour"
							aria-expanded="true" aria-controls="collapseFour">
							<input class="form-check-input report-radio" type="radio" name="main-cate-code">
							<span class="main-cate">웹 사이트 밖에서 거래를 유도해요</span>
							<i class="fa-solid fa-angle-down report-down"></i>
						</button>
					</h2>
					<div id="collapseFour" class="accordion-collapse collapse"
						aria-labelledby="headingFour" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p class="report-content">
								- SNS 아이디 기재<br />
								- 가짜 안전 거래 사이트 기재<br />
								- 개인 계좌번호 기재
							</p>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingFive">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseFive"
							aria-expanded="false" aria-controls="collapseFive">
							<input class="form-check-input report-radio" type="radio" name="main-cate-code">
							<span class="main-cate">대리 구매를 요구해요</span>
							<i class="fa-solid fa-angle-down report-down"></i>
						</button>
					</h2>
					<div id="collapseFive" class="accordion-collapse collapse"
						aria-labelledby="headingFive" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p class="report-content"></p>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingSix">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseSix"
							aria-expanded="false" aria-controls="collapseSix">
							<input class="form-check-input report-radio" type="radio" name="main-cate-code">
							<span class="main-cate">부적절한 글이에요</span>
							<i class="fa-solid fa-angle-down report-down"></i>
						</button>
					</h2>
					<div id="collapseSix" class="accordion-collapse collapse"
						aria-labelledby="headingSix" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p class="report-content">
								- 광고글<br />
								- 동일하거나 유사한 내용 반복 게시<br />
								- 직, 간접적인 욕설을 사용하여 타인에게 모욕감을 주는 내용<br />
								- 함께하는 공간에 다른 유저들의 불편함 유발<br />
								- 불법 행위, 불법 링크에 대한 정보 제공
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<button type="button" class="btn btn-primary lion-primary-btn reportBtn">신고하기</button>
		</form>
	</div>


	<!-- js plugins -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
		integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
		crossorigin="anonymous"></script>
	<script src="<%=cp %>/js/jquery-3.3.1.min.js"></script>
	<script src="<%=cp %>/js/bootstrap.min.js"></script>
	<script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
	<script src="<%=cp %>/js/jquery-ui.min.js"></script>
	<script src="<%=cp %>/js/jquery.slicknav.js"></script>
	<script src="<%=cp %>/js/owl.carousel.min.js"></script>
	<script src="<%=cp %>/js/main.js"></script>
</body>
</html>
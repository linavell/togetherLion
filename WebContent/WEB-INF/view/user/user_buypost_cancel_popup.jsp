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
<title>같이사자 공동구매</title>
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
		
		// <취소 신청하기> 버튼 클릭 시, 
		$("#cancelApplyBtn").click(function()
		{
    		Swal.fire({
  			  title: '취소 신청하시겠습니까?',
  			  text: '신청 후에는 철회가 불가능합니다.',
  			  icon: 'warning',
  			  iconColor: '#f27474',
  			  showCancelButton: true,
  			  confirmButtonText: '신청',
  			  cancelButtonText: '취소',
  			  reverseButtons: true
  			}).then((result) => {
  			  if (result.isConfirmed) {
  				  
   				  
   				  // 일단 if 조건은 그냥 true/false 로 해놨으니 참고~!
   				  // 1) 구매미진행인 경우 → 바로 환불처리
   				  // 코드를 적어주세영 
   				  
   				  
   				  // 처리 완료 후, 띄울 알림창
   				  if (true) {
   					Swal.fire({
    			    	title: '공동구매 취소가 완료되었습니다.',
    			    	text: '결제 포인트는 환불 처리됩니다.',
    			    	icon: 'success',
    			    	confirmButtonText: '확인'
    			    }).then(() => {
    			    	opener.parent.location.reload();
    			    	window.close();
    			    });
   				  }
   				  
   				  
   				  // 2) 거래미진행인 경우 → 신청 접수 → 5일 뒤, 확인 후 환불or진행
   				  // 코드를 적어주세영
   				  
   				  
   				  // 처리 완료 후, 띄울 알림창
   				  if (false) {
   					Swal.fire({
    			    	title: '공동구매 취소가 접수되었습니다.',
    			    	icon: 'success',
    			    	confirmButtonText: '확인'
    			    }).then(() => {
    			    	window.close();
    			    });
   				  }
   				  
   				  
   				  // 3) 참여자이기는 하지만, 둘 다 해당없는경우
   				  // 코드를 적어주세영 
   				  
   				  
   				  // 처리 완료 후, 띄울 알림창
   				  if (false) {
   					Swal.fire({
    			    	title: '취소 조건에 해당되지 않는 공동구매입니다.',
    			    	confirmButtonText: '확인'
    			    }).then(() => {
    			    	window.close();
    			    });
   				  }
		    	}
  			})
		});
    });
		
</script>
</head>
<body class="popup">
	<div class="report-container">
		<div class="report-title">
			<h2>공동구매 취소 신청</h2>
			<hr class="report-line"/>
		</div>
		
		<div class="cancel-content-box">
			<p class="box1">참여자는 아래와 같은 상황에 공동구매 취소 신청을 할 수 있으며, 신청 후에는 철회가 불가능합니다.</p>
			<p class="box2">
				<span class="important">① 진행자가 공동구매 진행 이후, 4일 내로 상품 구매 인증사진을 업로드 하지 않았을 경우</span><br />
				→ 공동구매가 바로 취소 처리됩니다. 
			</p>
			<p class="box3">
				<span class="important">② 진행자가 거래날에 나오지 않은 경우</span><br />
				→ 거래희망일 기준 5일 내로 거래가 재개되지 않을 시, 공동구매가 취소 처리됩니다. 
			</p>
		</div>
		
		
		<!-- if, 해당 공동구매 참여자 (버튼 활성화) -->	
		<button type="button" class="btn btn-primary lion-primary-btn buypostPopupBtn cancelBtn" id="cancelApplyBtn">
			취소 신청하기
		</button>
		<!-- else, 참여자 아닌 경우 (버튼 비활성화) -->
		<!-- 
		<button type="button" class="btn btn-primary lion-primary-btn buypostPopupBtn cancelBtn" disabled>
			취소 신청하기
		</button>
		-->
		<hr class="report-line"/>
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
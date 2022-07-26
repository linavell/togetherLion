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
<title>같이사자 계좌관리</title>
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
		
		// <인출> 버튼 클릭 시, 
		$(".point-withdrawBtn").click(function()
	   	{
			(async () => {
			    const { value: password } = await Swal.fire({
			        title: '비밀번호를 입력해주세요.',
			        input: 'password',
			        inputPlaceholder: '비밀번호 입력',
			        showCancelButton: true,
			        reverseButtons: true,
			        confirmButtonText: '확인',
			        cancelButtonText: '취소'
			    })
			    // 비밀번호가 맞다면, 인출 진행
			    if (password) {
			    	if (password=='1234') {
			    		
			    		// 인출 처리 코드 작성! (지금은 그냥 인출되게)
			    		
			    		
			    		// 인출 완료 후, 띄울 알림창
			    		Swal.fire({
			    			icon: 'success',
			    			text: '인출이 완료되었습니다.',
			    			confirmButtonText: '확인'
			    		}).then(() => {
			    			opener.parent.location.reload();
	      			    	window.close();
	      			    });
			    	}else {
			    		Swal.fire({
			    			icon: 'error',
			    			text: '비밀번호가 일치하지 않습니다.',
			    			showConfirmButton: false,
			    			showCancelButton: true,
			    			cancelButtonText: '확인'
			    		})
			    	}
			    }
			})()
	    });
    });
	
	// <계좌등록> 버튼 클릭 시, 
	function accountInsertForm() 
	{
		location.href="user_mypage_point_accountInsertForm_popup.jsp";
	}	

</script>
</head>
<body class="popup">
	<div class="report-container">
		<div class="report-title">
			<h2>포인트 인출</h2>
			<hr class="report-line"/>
		</div>
		
		<form action="">
			<table class="table accountTable accountInsertTable pointWithdrawTable">
				<thead></thead>
				<tbody>
					<tr>
						<th>인출 가능 포인트</th>
						<td><span class="userPoint">80,540</span>원</td>
					</tr>
					<tr>
						<th>인출할 포인트</th>
						<td>
							<!-- 본인 보유 포인트보다 큰 금액 입력하면, 자동으로 본인 보유 포인트로 입력되게 -->
							<input type="text" class="withdrawPoint" placeholder="본인 명의 계좌만 인출가능"/>
						</td>
					</tr>
					<tr>
						<th>인출 계좌</th>
						<td>   
							<select class="form-select bank-select withdrawAccount-select" aria-label="Default select example">
								<option value="0" selected>------- 계좌를 선택해주세요 -------</option>
								<option value="1">KB국민 593***0396</option>
								<option value="2">신한 392***5410</option>
								<option value="3">하나 394***6665</option>
							</select>
						</td>
					</tr>
				</tbody>
			</table>
			
			<button type="button" class="btn accountManage-btn charge-accountInsertBtn"
			onclick="javascript:accountInsertForm()">
				<i class="bi bi-plus account-plus"></i>계좌 등록
			</button>
			<button type="button" class="btn btn-primary lion-primary-btn point-withdrawBtn">인출하기</button>
		</form>
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
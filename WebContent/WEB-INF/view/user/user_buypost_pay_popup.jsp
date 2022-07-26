<%@page import="com.test.mybatis.BuypostDTO"%>
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

	let referrer = document.referrer;
	// http://localhost:8090/togetherlion/user/user_buyPostArticle.jsp
	// http://localhost:8090/togetherlion/user/user_buyPostInsertForm.jsp
	
	// 공동구매 게시물 쪽에서 넘어온 경우 (참여자)
	if (referrer === 'http://localhost:8090/togetherlion/user/user_buyPostArticle.jsp')
	{
		$(function()
		{
			$('.hostMsg').css('display', 'none');
		});
	}
	// 공동구매 입력폼에서 넘어온 경우 (진행자)
	else if (referrer === 'http://localhost:8090/togetherlion/user/user_buyPostInsertForm.jsp')
	{
		$(function()
		{
			$('.participantMsg').css('display', 'none');
		});
	}

	$(document).ready(function()
    {
		// <결제하기> 버튼 클릭 시, 
		$(".buypostPayBtn").click(function()
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
			    // 비밀번호가 맞다면, 결제 진행
			    if (password) {
			    	if (password=='1234') {
			    		
			    		$("#buypostValue").submit();
			    		
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
	
	// <충전하러 가기> 버튼 클릭 시, 
	function charge()
	{	
		location.href="user_mypage_point_charge_popup.jsp";
	}
</script>
</head>
<body class="popup">

<!-- 
	이 팝업창을 호출한 부모창이 buyPostInsertForm.jsp 인지, buyPostArticle.jsp를 이용해서 
	아래에서 보여지는 내용 다르게 처리 
-->

	<!-- 받아온 buypost 를 다시 넘겨주기 위해.. 이렇게 처리 -->
	<form id="buypostValue" action="<%=cp%>/buypostinsert.lion" method="post">
		<input type="hidden" name="title" value="${buypost.title }">
		<input type="hidden" name="sub_cate_code" value="${buypost.sub_cate_code }">
		<input type="hidden" name="url" value="${buypost.url }">
		<input type="hidden" name="expiration_datetime" value="${buypost.expiration_datetime }">
		<input type="hidden" name="total_price" value="${buypost.total_price }">
		<input type="hidden" name="goods_num" value="${buypost.goods_num }">
		<input type="hidden" name="deadline" value="${buypost.deadline }">
		<input type="hidden" name="trade_datetime" value="${buypost.trade_datetime }">
		<input type="hidden" name="content" value="${buypost.content }">
		<input type="hidden" name="buy_number" value="${buypost.buy_number }">
	</form>

	<div class="report-container">
		<div class="report-title">
			<c:choose>
			<%-- buyPostInsertForm 인 경우 --%>
			<c:when test="${state == 'host' }">
				<h2 class="hostMsg">공동구매 진행 결제창</h2>
			</c:when>
			<%-- buyPostArticle 인 경우 --%>
			<c:otherwise>
				<h2 class="participantMsg">공동구매 참여 결제창</h2>
			</c:otherwise>
			</c:choose>
			<hr class="report-line"/>
		</div>
		
		<form action="">
			<table class="table buypostPayTable">
				<thead></thead>
				<tbody>
					<tr>
						<th colspan="2">
						<c:choose>
						<%-- buyPostInsertForm 인 경우 --%>
						<c:when test="${state == 'host' }">
							<h4 class="hostMsg">포인트 결제 후, 공동구매 진행이 시작됩니다.</h4>
						</c:when>
						<%-- buyPostArticle 인 경우 --%>
						<c:otherwise>
							<h4 class="participantMsg">포인트 결제 후, 공동구매 참여가 완료됩니다.</h4>
						</c:otherwise>
						</c:choose>						
						</th>
					</tr>
					<tr>
						<th>구매 수량</th>
						<td class="number">${buypost.buy_number }</td>
					</tr>
					<tr>
						<th>잔여 포인트</th>
						<td class="number">${point }</td>
					</tr>
					<tr>
						<th>결제 포인트</th>
						<td class="number">${price }</td>
					</tr>
					<tr>
						<td colspan="2" class="notice">
							<c:choose>
							<%-- buyPostInsertForm 인 경우 --%>
							<c:when test="${state == 'host' }">
								<span class="payNotice hostMsg">* 게시물 수정 시, 참여자들은 대기 상태로 전환됩니다.</span><br />
								<span class="payNotice hostMsg">* 진행 취소 시, 포인트는 환불 처리됩니다.</span><br />
								<span class="payNotice hostMsg">* 공동구매 마감 24시간 전에는 수정 및 취소 불가능합니다.</span>
							</c:when>
							<%-- buyPostArticle 인 경우 --%>
							<c:otherwise>
								<span class="payNotice participantMsg">* 참여 취소 시, 포인트는 환불 처리됩니다.</span><br />
								<span class="payNotice participantMsg">* 공동구매 마감 24시간 전에는 취소 불가능합니다.</span>
							</c:otherwise>
							</c:choose>						
						</td>
					</tr>
				</tbody>
			</table>
			
			
			<!-- if, 잔여포인트 < 결제포인트 -->
			<c:choose>
			<c:when test="${price <= point }">
				<button type="button" class="btn btn-primary lion-primary-btn popupBtn buypostPayBtn">결제하기</button>
			</c:when>
			<c:otherwise>
				<button type="button" class="btn btn-primary lion-primary-btn popupBtn linkPayToChargeBtn"
				onclick="javascript:charge()">
					포인트가 부족합니다. <br />
					포인트 충전하러 가기 Click!				
				</button>
			</c:otherwise>
			</c:choose>			
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
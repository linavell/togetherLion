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
/* sweetalert */
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 100px;
}
button.swal2-cancel.swal2-styled {
    width: 100px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
</style>
<script type="text/javascript">
	
	$(function()
	{
		$('.findBtn').click(function()
		{	
			if ($("#pw").val() == "")
			{
				alert("비밀번호를 입력해주세요.");
			}
			else if ($("#pwCheck").val() == "")
			{
				alert("비밀번호를 재입력해주세요.");
			}
    		else 
    		{
    		  if (!isValidPw($("#pw").val()))
  	          {
    			 alert("올바른 비밀번호 형식을 입력하세요. \n(6~15자의 영문, 숫자, 특수기호 조합)");
  	          }
    		  else if ($("#pw").val() != $("#pwCheck").val())
    		  {
    			 alert("비밀번호가 일치하지 않습니다.");  			  
    		  }
    		  else if ($("#pw").val() == $("#pwCheck").val())
    	      {
    			  alert("비밀번호가 변경되었습니다.");
    			  
    			  $("form").submit();  
    	      }
    		}
		});	
	});
	
	
	function isValidPw(pw)
	{		
		var reg_pw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,15}$/;		
		if(!reg_pw.test(pw))
		{
			return false;
		}
		
		return true;	
	}

</script>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="/header.lion"></c:import>
    
    <section class="featured spad">

		<div class="join-title-container">
			<h2 class="findForm-title">비밀번호 재설정</h2>
			<hr class="findForm-hr"/>
		</div>

		<div class="join-container">
			<form action="<%=cp %>/pwmodifyok.lion" class="join-form" method="post">
				<table class="join-table">
					<thead>
					</thead>
					<tbody>
						<tr>
							<th>새 비밀번호</th>
							<td>
								<input type="password" name="pw" id="pw" placeholder="6~15자의 영문, 숫자, 특수기호 조합" required="required"/>
							</td>
						</tr>
						<tr>
							<th>새 비밀번호 확인</th>
							<td>
								<input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 다시 입력" required="required"/>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="button" class="btn btn-primary lion-primary-btn findBtn">확인</button>
								<input type="hidden" name="id" value="${id }">
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</section>

	<!-- import FOOTER -->
	<c:import url="user_footer.jsp"></c:import>
 
    <!-- js plugins -->
    <script src="<%=cp%>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=cp %>/js/bootstrap.min.js"></script>
    <script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
    <script src="<%=cp %>/js/jquery-ui.min.js"></script>
    <script src="<%=cp %>/js/jquery.slicknav.js"></script>
    <script src="<%=cp %>/js/owl.carousel.min.js"></script>
    <script src="<%=cp %>/js/main.js"></script>
</body>
</html>
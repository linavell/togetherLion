<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alertPage</title>

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
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 100px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
</style>

<script type="text/javascript">

	$(document).ready(function()
	{
		var url_href = window.location.href;

		var url = new URL(url_href);
		var code = url.searchParams.get("code");
		
		if (code == 1)
		{
			Swal.fire({
				  title: '아이디/비밀번호 오류',
				  text: '가입된 회원 아이디가 아니거나 비밀번호가 틀립니다.',
				  icon: 'warning',
				  iconColor: '#f27474',
				  confirmButtonText: '확인',
				}).then((result) => {
					location.href='loginform.lion';
				})
		}
		else if (code == 2)
		{
			Swal.fire({
				  title: '이용 제한 안내',
				  text: '이용이 정지된 계정입니다. 참여/진행 중인 공동구매는 모두 취소처리 됩니다.',
				  icon: 'warning',
				  iconColor: '#f27474',
				  confirmButtonText: '확인',
				}).then((result) => {
					location.href='main.lion';
				})
		}
		else if (code == 3)
		{
			Swal.fire({
				  title: '정보 불일치',
				  text: '입력하신 정보와 일치하는 아이디가 없습니다.',
				  icon: 'warning',
				  iconColor: '#f27474',
				  confirmButtonText: '확인',
				}).then((result) => {
					location.href='idfind.lion';
				})
		}

	});
</script>


</head>
<body>



</body>
</html>
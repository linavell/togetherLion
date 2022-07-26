
function ajax(url, params,callback, method) 
{
	if($.trim($('#tel').val()) == '') 
	{        
		alert("휴대폰 번호를 입력해주세요.");   
		$('#tel').focus();     
		return false;    
	}    
	
	var reg_tel = /^\d{3}-\d{3,4}-\d{4}$/;
	
	if(!reg_tel.test($('#tel').val()))
	{     
		 alert("올바른 휴대폰번호 형식을 입력하세요.");
		 return false;
	}
	else
	{
		var xhttp = new XMLHttpRequest()
		
		method = method.toUpperCase()
		if(method != 'POST'){method='GET'}
		if(method == 'GET'){url = url+"?"+params}
		
		xhttp.open(method, url, true)
		xhttp.setRequestHeader('Content-Type', 'application/x-www-form-unlencoded')
		xhttp.send(method == 'POST' ? params : null)
		xhttp.onreadystatechange = callback
	}
	
	
}
/******************
	findFn.js
*******************/

	function telAuth()
	{
		if($.trim($('#tel').val()) == '') 
		{        
			alert("휴대폰 번호를 입력해주세요.");   
		}    
		else
		{
			if($('#tel').val().indexOf("-") != -1) 
			{
				alert("하이픈을 제외한 휴대폰 번호를 입력해주세요.");
			}
			else
			{
				$.ajax(
   				{
   					type:"POST"
   					, url:"telcheck2.lion"
   					, data:{id : $("#id").val(), tel : $("#tel").val()}		
   					, dataType:"json"
   					, success:function(result)
   					{
   						if(result.resultNum == 0)
   						{
  							var tel = $('#tel').val();
  							var param = "tel=" + tel;
  							
  							ajax("telauth.lion", param, callback, 'GET');
   							
   						}
   						else if(result.resultNum == 1)
   			            {
   							alert("입력하신 정보와 일치하는 회원이 없습니다.");
   			            }
   					}
   					, error: function(e)			
   					{		
   						alert(e.responseText);		
   					}
   				});
			}
		}
	}
	
	
	function ajax(url, params,callback, method) 
	{
		var xhttp = new XMLHttpRequest();
		
		method = method.toUpperCase();
		
		if(method != 'POST')
		{
			method = 'GET';
		}
		if(method == 'GET')
		{
			url = url + "?" + params;
		};
		
		xhttp.open(method, url, true);
		xhttp.setRequestHeader('Content-Type', 'application/x-www-form-unlencoded');
		xhttp.send(method == 'POST' ? params : null);
		xhttp.onreadystatechange = callback;
		
	}
	
	
	
	function callback()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			alert('인증 번호를 전송했습니다.');
			$("#telCheckBtn").prop('disabled', false);
		}
	}

	
	function authCheck()
	{
		var telCheckNum = $('#telCheckNum').val()
		var param = "telCheckNum=" + telCheckNum;
		
		ajax("telauthok.lion", param, callbackCheck, 'GET');
	}
	
	
	function callbackCheck()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var result = this.responseText.trim();
			
			if(result == 'false')
			{
				alert('인증되었습니다.');
				
				$("#tel").prop('readonly', true);
				
				$("#telCheckNum").prop('readonly', true);
				
				$("#telBtn").prop('disabled', true);
				$("#telCheckBtn").prop('disabled', true);
				
				telAuth=true;
			} 
			else 
			{
				alert('인증 번호가 다릅니다.');
			}
		}
	}
	
	
	
	
	
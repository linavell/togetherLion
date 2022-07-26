/******************
	joinFn.js
*******************/


	function isValidEmail(id)
	{
		var reg_email = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
		if (id.search(reg_email) != -1)
		{
			return true; 
		}
		
		return false;
	}
	
	
	function isValidPw(pw)
	{		
		var reg_pw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,15}$/;		
		if(!reg_pw.test(pw))
		{
			return false;
		}
		
		return true;	
	}
	
	
	function isValidName(name)
	{
		var reg_name = /^[가-힣]{2,4}$/;
		if (!reg_name.test(name))
		{
			return false;
		}
		
		return true;
	}
	
	
	function telAuth()
	{
		if($.trim($('#tel').val()) == '') 
		{        
			alert("휴대폰 번호를 입력해주세요.");   
			return;    
		}    
		else
		{
			if($('#tel').val().indexOf("-") != -1) 
			{
				alert("하이픈을 제외한 휴대폰 번호를 입력해주세요.");
				return;
			}
			else
			{
				$.ajax(
				{
					type:"POST"
					, url:"telcheck.lion"
					, data:{tel : $("#tel").val()}		
					, dataType:"json"
					, success:function(result)
					{
						if(result.resultNum == 0)
						{
							alert("해당 휴대폰 번호로 이미 가입된 아이디가 있습니다.");
							return;
						}
						else
						{
							var tel = $('#tel').val();
							var param = "tel=" + tel;
							
							ajax("telauth.lion", param, callback, 'GET');
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
			
			var telCheckBtn = document.getElementById("telCheckBtn");
			telCheckBtn.disabled = false;
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
				
				var input_tel = document.getElementById("tel");
				tel.readOnly = true;
				
				var telCheckNum = document.getElementById("telCheckNum");
				telCheckNum.readOnly = true;
				
				var telBtn = document.getElementById("telBtn");
				telBtn.disabled = true;
				
				var telCheckBtn = document.getElementById("telCheckBtn");
				telCheckBtn.disabled = true;
				
				telAuth=true;
				inputCheck();
			} 
			else 
			{
				alert('인증 번호가 다릅니다.');
			}
		}
	}
	
	
	function inputCheck() 
	{
		if ($("#nickname").val() == "")
		{
			nickNameCheck == true;
		}
		
		if (idCheck == true && pwCheck == true && nameCheck == true && telAuth == true && nickNameCheck == true && boxCheck == true)
		{
			$("#joinBtn").attr("disabled", false);
		} 
		else 
		{
			$("#joinBtn").attr("disabled", true);
		}
	}
	

	function registerCheck() 
	{   
		Swal.fire({
			  icon: 'success',
			  title: '회원가입이 완료되었습니다.',
			  confirmButtonText: '확인'
			}).then(() => {
				
				$("form").submit(); 
		    });
		       
	}
	
	
	
	
	
	

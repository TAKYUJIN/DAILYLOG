<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<title>계좌 인증</title>
<style>
 .accountTable {
 	font-family: 'Roboto', sans-serif;
 }
 
 .accountTable tr td {
 	font-family: 'Roboto', sans-serif;
 }



/* button */

.btn, .btn-two {
   margin: 9px;
}
.btn-gradient {
   margin: 5px;
}
a[class*="btn"] {text-decoration: none;}
input[class*="btn"], 
button[class*="btn"] {border: 0;}

/* Here you can change the button sizes */
.btn.large, 
.btn-two.large, 
.btn-effect.large {
  padding: 20px 40px; 
  font-size: 22px;
}
.btn.small, 
.btn-two.small, 
.btn-gradient.small, 
.btn-effect.small {
  padding: 8px 18px;  
  font-size: 14px;
}
.btn.mini, 
.btn-two.mini, 
.btn-gradient.mini, 
.btn-effect.mini {
  padding: 4px 12px;  
  font-size: 12px;
}
.btn.block, 
.btn-two.block, 
.btn-gradient.block, 
.btn-effect.block {
  display: block;
  width: 60%;
  margin-left: auto;
  margin-right: auto;
  text-align: center !important;
}
.btn-gradient.large {
  padding: 15px 45px; 
  font-size: 22px;
}

/* Colors for .btn and .btn-two */
.btn.blue, .btn-two.blue     {background-color: #192466;}
.btn.yellow, .btn-two.yellow {background-color: #f0d264;}

.rounded {
  border-radius: 10px;
}

/* default button style */
.btn {
   position: relative;
   border: 0;
   padding: 15px 25px;
   display: inline-block;
   text-align: center !important;
   color: white;
}
.btn:active {
   top: 4px;   
}

/* color classes for .btn */
.btn.blue {box-shadow: 0px 4px #192466;}
.btn.blue:active {box-shadow: 0 0 #192466; background-color: #192466;}
.btn.yellow {box-shadow:0px 4px 0px #D1B757;}
.btn.yellow:active {box-shadow: 0 0 #ff4c4b; background-color: #D6BB59;}

/* Button two - I have no creativity for names */
.btn-two {
   color: white;   
   padding: 15px 25px;
   display: inline-block;
   border: 1px solid rgba(0,0,0,0.21);
   border-bottom-color: rgba(0,0,0,0.34);
   text-shadow:0 1px 0 rgba(0,0,0,0.15);
   box-shadow: 0 1px 0 rgba(255,255,255,0.34) inset, 
                  0 2px 0 -1px rgba(0,0,0,0.13), 
                  0 3px 0 -1px rgba(0,0,0,0.08), 
                  0 3px 13px -1px rgba(0,0,0,0.21);
}
.btn-two:active {
   top: 1px;
   border-color: rgba(0,0,0,0.34) rgba(0,0,0,0.21) rgba(0,0,0,0.21);
   box-shadow: 0 1px 0 rgba(255,255,255,0.89),0 1px rgba(0,0,0,0.05) inset;
   position: relative;
}
/* 3D Button */
.btn-3d {
   position: relative;
   display: inline-block;
   font-size: 22px;
   padding: 20px 60px;
   color: white !important;
   margin: 20px 10px 10px;
   border-radius: 6px;
   text-align: center !important;
   transition: top .01s linear;
   text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-3d.yellow:hover {background-color: #F0D264;}
.btn-3d.blue:hover   {background-color: #192466;}
.btn-3d:active {
   top: 9px;
}

/* 3D button colors */
.btn-3d.yellow {
   background-color: #F0D264;
   box-shadow: 0 0 0 1px #F0D264 inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 8px 0 0 rgba(196, 172, 83, .7),
            0 8px 0 1px rgba(0,0,0,.4),
            0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.yellow:active {
   box-shadow: 0 0 0 1px #F0D264 inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 0 0 1px rgba(0,0,0,0.4);
}
.btn-3d.blue {
   background-color: #192466;
   box-shadow: 0 0 0 1px #6698cb inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 8px 0 0 rgba(110, 164, 219, .7),
            0 8px 0 1px rgba(0,0,0,.4),
            0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.blue:active {
   box-shadow: 0 0 0 1px #192466 inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 0 0 1px rgba(0,0,0,0.4);
}
/* Gradient buttons */
.btn-gradient {
   text-decoration: none;
   color: white !important;
   padding: 7px 15px !important;
   display: inline-block;
   position: relative;
   border: 1px solid rgba(0,0,0,0.21);
   border-bottom: 4px solid rgba(0,0,0,0.21);
   border-radius: 4px;
   text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-gradient.blue {
   background: rgba(102,152,203,1);
   background: -moz-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(102,152,203,1)), color-stop(100%, rgba(92,138,184,1)));
   background: -webkit-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: -o-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: -ms-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: linear-gradient(to bottom, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6698cb', endColorstr='#5c8ab8', GradientType=0 );
}
.btn-gradient.yellow {
   background: rgba(240,210,100,1);
   background: -webkit-gradient(linear, 0 0, 0 100%, from(rgba(240,210,100,1)), to(rgba(229,201,96,1)));
   background: -webkit-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   background: -moz-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   background: -o-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   background: linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f0d264', endColorstr='#e5c960', GradientType=0 );
}

.btn-gradient.yellow:active {background: #DBC05B;}
.btn-gradient.blue:active    {background: #192466;}   


</style>


</head>
<body>
	<div id="primary-info5" class="input-form">
		<table style="width:500px; margin-top:50px; margin-left:30px;" class="accountTable">
			<tr>
				<td style="width: 500px;">
					<div style="border: 1px solid #ddd; background:#f8f8f8; padding:10px; margin-left:10px; width:440px; height:50px;">
						은행명 &nbsp; <select name="bankcode" id="bankcode">
							<option value=''>선택하세요
							<option value='003'>기업은행
								
							<option value='004'>국민은행
								
							<option value='011'>농협중앙회
								
							<option value='012'>단위농협
								
							<option value='020'>우리은행
								
							<option value='031'>대구은행
								
							<option value='005'>외환은행
								
							<option value='023'>SC제일은행
								
							<option value='032'>부산은행
								
							<option value='045'>새마을금고
								
							<option value='027'>한국씨티은행
								
							<option value='034'>광주은행
								
							<option value='039'>경남은행
								
							<option value='007'>수협
								
							<option value='048'>신협
								
							<option value='037'>전북은행
								
							<option value='035'>제주은행
								
							<option value='064'>산림조합
								
							<option value='071'>우체국
								
							<option value='081'>하나은행
								
							<option value='088'>신한은행
								
							<option value='209'>동양종금증권
								
							<option value='243'>한국투자증권
								
							<option value='240'>삼성증권
								
							<option value='230'>미래에셋
								
							<option value='247'>우리투자증권
								
							<option value='218'>현대증권
								
							<option value='266'>SK증권
								
							<option value='278'>신한금융투자
								
							<option value='262'>하이증권
								
							<option value='263'>HMC증권
								
							<option value='267'>대신증권
								
							<option value='270'>하나대투증권
								
							<option value='279'>동부증권
								
							<option value='280'>유진증권
								
							<option value='287'>메리츠증권
								
							<option value='291'>신영증권
								
							<option value='238'>대우증권
							
						</select> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 예금주 &nbsp; <input type="text"
							size="10" name="accpnm" id="accpnm">
						</div>
					</td>
					<td style="width: 200px;">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>
						<div style="border:1px solid #ddd; background:#f8f8f8; padding:10px; margin-left:10px; width:440px; height:50px;">
							계좌번호 &nbsp;<input type="text" size="25"
							placeholder="'-'를 제외하고 입력하세요." name="accnum" id="accnum">
							&nbsp;
							<input type="checkbox" id="sbm-flag" name="checkacc"
							style="display:none">
							<!-- <label id="sbm-no"
							style="background:#FBC52C;color:white;border-radius:3px;padding:3px;font-size:15px; margin-left:10px;">미인증</label>
							<label id="sbm-ok"
							style="background:#192466;color:white;border-radius:3px;padding:3px;display:none;font-size:15px; margin-left:10px;">인증됨</label> -->
							<button class="btn-gradient yellow mini" id="sbm-no" style="font-size:14px;">미인증</button>
							<button class="btn-gradient blue mini" id="sbm-ok" style="display:none; font-size:14px;">인증</button>
						</div>
						<div align="center">
						<br>
							<!-- <button class="btn btn-primary btn-xs" id="confirmacc"
							onclick="fnSearchAccessToken()">확인하기</button> -->
							<!-- <button class="btn btn-primary btn-xs" style="display:none"
							id="changeacc" onclick="">변경하기</button> -->
							
							<button class="btn-gradient yellow mini" id="confirmacc" onclick="fnSearchAccessToken()" style="font-size:14px;">확인</button>
							
							<button class="btn-gradient yellow mini" style="display:none;font-size:14px;" id="changeacc" onclick="logerCalculateApply();">변경</button>
						</div>
						
						<script>
							function logerCalculateApply(){
								window.close();
								window.opener.location.href="logerCalculateApply.lo";
							}
						</script>
						
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
	</div>
	<div>
		<table>

			<colgroup>
				<col style="width: 180px" />
				<col style="width: *" />
			</colgroup>
			<tbody>
				<form name="authCodeFrm" id="authCodeFrm" method="GET"
												action="https://testapi.open-platform.or.kr/oauth/2.0/authorize">
	
					<tr>
						<th>
							<!-- <span class="ess">Client ID</span> -->
						</th>
						<td><span><input type="hidden" id="client_id"
															name="client_id" style="width: 200px"
															value="l7xx74d0702693144d4786dee620460ff230"></span>
					
					</tr>
				</form>
				<tr>
					<th>
						<!-- <span>Client Secret</span> -->
					</th>
					<td><span><input type="hidden" id="client_secret"
														name="client_secret" style="width: 200px"
														value="d57a5dab651e431f989c1cbb264c3a41"></span></td>
				</tr>
				<tr>
					<th>
						<!-- <span>Access Token</span> -->
					</th>
					<td><span><input type="hidden" id="access_token"
														name="access_token" style="background: #e0e0e0"></span> <!-- <button type="button" onclick="fnSearchAccessToken()">토큰발급</button> --></td>
				</tr>
				<tr>
					<th>
						<!-- <span>은행코드</span> -->
					</th>
					<td><span><input type="hidden" class="txt"
														id="bank_code_std" name="bank_code_std"></span></td>
				</tr>
				<tr>
					<th>
						<!-- <span>계좌번호</span> -->
					</th>
					<td><span><input type="hidden" class="txt"
														id="account_num" name="account_num"></span></td>
				</tr>
				<tr>
					<th>
						<!-- <span>예금주 생년월일</span> -->
					</th>
					<td><span><input type="hidden" class="txt"
														id="account_holder_info" name="account_holder_info"
														value="880101" /></span>
				
											</tr>
				<tr>
					<th>
						<!-- <span>요청일시</span> -->
					</th>
					<td><span style="width: 200px"><input type="hidden"
														class="txt" id="tran_dtime" title="요청일시 입력"
														name="tran_dtime" /></span>
						<!-- <button type="button" onclick="fnSearchRealName()">계좌실명조회</button> --></td>
				</tr>
				<!-- <tr> 		
					<th><span>계좌실명조회결과</span></th>
					<td> 				
						<textarea style="height:220px;width:250px" id="real_name" name="real_name"></textarea>
					</td>
				</tr> -->
			</tbody>
		</table>

	</div>

	<script type="text/javascript">
		$.support.cors = true;
		var reqDate = new Date();
		var year = reqDate.getFullYear() +"";
		var month = (reqDate.getMonth() + 1) > 10?reqDate.getMonth() + 1 + "":"0" + (reqDate.getMonth() + 1);
		var date = (reqDate.getDate() > 10?reqDate.getDate() + "":"0" + reqDate.getDate());
		var hour = reqDate.getHours() > 9?reqDate.getHours() + "":"0" + reqDate.getHours();
		var min = reqDate.getMinutes() > 10?reqDate.getMinutes() + "":"0" + reqDate.getMinutes();
		var sec = reqDate.getSeconds() > 10?reqDate.getSeconds() + "":"0" + reqDate.getSeconds();
		
		var currentTime = year + month + date + hour + min + sec;
		console.log(currentTime)
		$("#tran_dtime").val(currentTime);
		/* 사용자인증 Access Token 획득 */
		function fnSearchAccessToken() {
			$("#bank_code_std").val($("#bankcode").val());
			$("#account_num").val($("#accnum").val());
			var client_id = $("#client_id").val();
			var client_secret = $("#client_secret").val();
			var grant_type = "client_credentials";
			var scope = "oob";
			$.ajax({
				//url: "/tpt/test/getOauthToken",
				url : "https://testapi.open-platform.or.kr/oauth/2.0/token",
				type : "POST",
				//cache: false,
				contenType : "application/json",
				data : {
					"client_id" : client_id,
					"client_secret" : client_secret,
					"grant_type" : grant_type,
					"scope" : scope
				},
				dataType : "json",
				success : function(data, data2, data3) {
					var list = JSON.parse(data3.responseText);
					$("#access_token").val(list.access_token);
					$("#user_seq_no").val(list.user_seq_no);
					fnSearchRealName();
				},
				error : function(data, data2, data3) {
					alert('error!!!');
				}
			});
		}
		/* 계좌실명조회API */
		function fnSearchRealName() {
			var bank_code_std = $("#bank_code_std").val();
			var account_num = $("#account_num").val();
			var account_holder_info = $("#account_holder_info").val();
			var tran_dtime = $("#tran_dtime").val();
			var access_token = "Bearer " + $("#access_token").val();
			var resData = {
				"bank_code_std" : bank_code_std,
				"account_num" : account_num,
				"account_holder_info" : account_holder_info,
				"tran_dtime" : tran_dtime
			};
			$
					.ajax({
						url : "https://testapi.open-platform.or.kr/v1.0/inquiry/real_name",
						beforeSend : function(request) {
							request.setRequestHeader("Authorization",
									access_token);
						},
						type : "POST",
						data : JSON.stringify(resData),
						dataType : "json",
						success : function(data, data2, data3) {
							console.log(data)
							if (data.account_holder_name == $("#accpnm").val()) {

								$("#sbm-flag").attr("checked", true);
								$("#sbm-ok").show();
								$("#sbm-no").hide();
								var checkacc = "인증됨";
								var pro_no = $
								{
									pro_no
								}
								;
								var bankcode = $('[name=bankcode]').val();
								var accpnm = $('[name=accpnm]').val();
								var accnum = $('[name=accnum]').val();

								
								alert('인증 성공!!!');
								$("#confirmacc").hide();
								$("#changeacc").show();
								$("#sbm-flag").attr("checked", true);
										$("#sbm-ok").show();
								$("#sbm-no").hide();
								$("[name=accpnm]").attr("readonly",
												"readonly");
								$("[name=accnum]").attr("readonly",
												"readonly");
								$("[name=bankcode]").not(":selected")
												.attr("disabled", "disabled");
								

							} else {
								alert('인증 실패');
								$("#sbm-flag").attr("checked", false);
								$("#sbm-ok").hide();
								$("#sbm-no").show();
							}
						},
						error : function(data, data2, data3) {
							alert('error!!!');
						}
					});
		}
	</script>

							</body>
</html>
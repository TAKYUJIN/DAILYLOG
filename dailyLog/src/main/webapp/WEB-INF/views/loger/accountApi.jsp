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

.accountBtn1 {
	width:90px;
	border:1px solid #A8B7BC;
	border-radius:5px;
	background:#A8B7BC;
	padding:5px;
	color:#FFF;
	margin-left:5px;
	margin-top:5px;
}

.accountBtn2 {
	width:100px;
	border:1px solid #13334A;
	border-radius:5px;
	background:#13334A;
	padding:8px;
	color:#FFF;
	margin-left:10px;
}

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
							<button class="accountBtn1" id="sbm-no" style="font-size:14px;">미인증</button>
							<button class="accountBtn2" id="sbm-ok" style="display:none; font-size:14px;">인증</button>
						</div>
						<div align="center">
						<br>
							<!-- <button class="btn btn-primary btn-xs" id="confirmacc"
							onclick="fnSearchAccessToken()">확인하기</button> -->
							<!-- <button class="btn btn-primary btn-xs" style="display:none"
							id="changeacc" onclick="">변경하기</button> -->
							
							<button class="accountBtn1" id="confirmacc" onclick="fnSearchAccessToken()" style="font-size:14px;">확인</button>
							
							<button class="accountBtn1" style="display:none;font-size:14px;" id="changeacc" onclick="logerCalculateApply();">변경</button>
						</div>
						
						 <script>
							/* function logerCalculateApply(){
								var bankNm = $("#bankcodeID option:selected").text();
								 console.log(bankNm); 
								 window.close();
								window.opener.location.href="logerCalculateApply.lo";
							} */
							
							function logerCalculateApply() {
								var account = $("#accnum").val();
								var accountNm = $("#accpnm").val();
								var bankcode = $("#bankcode").val();
								
								console.log(account);
								console.log(accountNm);
								console.log(bankcode);
								
								window.close();
								window.opener.location.href="logerLastAccount.lo?account="+account+"&&accountNm="+accountNm+"&&bankcode="+bankcode;
								
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
		var month = (reqDate.getMonth() + 1) > 9?reqDate.getMonth() + 1 + "":"0" + (reqDate.getMonth() + 1);
		var date = (reqDate.getDate() > 9?reqDate.getDate() + "":"0" + reqDate.getDate());
		var hour = reqDate.getHours() > 9?reqDate.getHours() + "":"0" + reqDate.getHours();
		var min = reqDate.getMinutes() > 9?reqDate.getMinutes() + "":"0" + reqDate.getMinutes();
		var sec = reqDate.getSeconds() > 9?reqDate.getSeconds() + "":"0" + reqDate.getSeconds();
		
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

								
								alert('인증되셨습니다.');
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
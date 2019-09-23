<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
					<div align="right" style="margin-top:15%;">
						 <nav class="navbar navbar-default navbar-expand-lg navbar-light" style="background:none;">
							<ul class="nav navbar-nav navbar-right ml-auto" style="width:300px;">			
								<li class="nav-item" stlye="border:1px solid #A8B7BC;"> 
									<a href="#none" data-toggle="dropdown" id="subtitle">
										<img src="resources/images/chat.png" style="width:18px; align:right;">
									</a>
									<ul class="dropdown-menu form-wrapper" style="width:280px;border:1px solid #A8B7BC;">					
										<li>
											<div class="form-group" id="sub">
												<table class="noti_table">
													<tr><a id="regSub">채팅</a></tr><br>
												</table>
											</div>
											<!-- 정기후원 -->
											<div id="rSub">
												<div class="noti_text" align="center" style="margin-top:5%;"><b>정기후원</b></div>
												<div align="left" style="margin-left:10%; margin-right:10%;">
													<table class="noti_table">
														<tr><td><small>채널명</small></td></tr>
														<tr><td><b>${ list1[0].chNm }</b></td></tr>
														<tr><td><small>포인트조회</small></td></tr>
														<tr><td><input type="text" class="form-control" id="rPoint" placehold="포인트를 조회하세요" readonly></td></tr>
														<tr>
															<td>
																<button id="selectPoint" style="width:75px;margin-right:2% !important;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn">조회</button>
																<button id="chargeBtn" style="width:75px; text-align:center;margin-top:5%;margin-bottom:5%;" class="btn">충전</button><br>
															</td>
														</tr>
																											
														<tr><td><small>후원</small></td></tr>
														<tr><td><input type="text" class="form-control" id="rPrice" placehold="후원금액을 입력하세요"></td></tr>
														<tr>
															<td>
																<button style="width:75px;margin-right:2% !important;text-align:center;background:#A8B7BC;margin-top:5%;margin-bottom:5%;" class="btn" id="cancle1">취소</button>
																<button id="rOk" style="width:75px; text-align:center;margin-top:5%;margin-bottom:5%;" class="btn">후원</button>
																<br><br>
															</td>
														</tr>
													</table>
												</div>
											</div>
											
										</li>
									</ul>
								</li>


							</ul>
						</nav> 
					</div>
</body>
</html>
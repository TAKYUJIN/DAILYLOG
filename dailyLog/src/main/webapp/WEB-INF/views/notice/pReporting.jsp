<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>WITH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
	body {
		color:#525252 !important;
	}
	p {
		text-align:left !important;
		margin:30px !important;
		margin-left:5% !important;
		color:gray !important;
	}
	.container {
		margin: 0 auto;
		max-width: 100%;
		width: 64em;
	}


		ul.special {
		list-style: none;
		padding-left: 0;
		cursor: default;
		position: relative;
		margin: -2em 0 4em -2em;
	}

		ul.special li {
			-moz-transition: top .15s ease-in-out;
			-webkit-transition: top .15s ease-in-out;
			-ms-transition: top .15s ease-in-out;
			transition: top .15s ease-in-out;
			position: relative;
			display: inline-block;
			top: 0;
			padding: 2em 0 0 2em;
		}

			ul.special li a {
				display: block;
				outline: 0;
			}

				ul.special li a:before {
					-moz-transition: background-color .2s ease-in-out;
					-webkit-transition: background-color .2s ease-in-out;
					-ms-transition: background-color .2s ease-in-out;
					transition: background-color .2s ease-in-out;
					display: block;
					text-align: center;
					background: #c1cac5;
					border-radius: 100%;
					width: 2.25em;
					height: 2.25em;
					line-height: 2.175em;
					font-size: 5em;
				}

			ul.special li:hover {
				top: -1em;
			}

				ul.special li:hover a:before {
					background: #b9d2ce;
				}
	.box.highlight {
		text-align: center;
	}

		.box.highlight h2 {
			font-size: 3em;
			margin: 0 0 0.25em 0;
		}

		.box.highlight header > p {
			font-size: 1.65em;
			margin: 0 0 1.5em 0;
		}

	.box.feature {
		text-align: center;
	}

	.box.post header {
		margin: 0 0 2.5em 0;
	}

	.box.post h3 {
		font-size: 3em;
		margin: 0 0 0.25em 0;
	}

	.box.post header > p {
		font-size: 1.65em;
		margin: 0 0 0.5em 0;
	}

	.box.post ul.meta {
		margin: 0 0 0.5em 0;
	}

	.box.post-summary h3 {
		line-height: 1em;
		margin: 0 0 0.75em 0;
	}

	.box.post-summary .meta {
		margin: 0;
		line-height: 1em;
	}

	.box.page-content header {
		margin: 0 0 2.5em 0;
	}

	.box.page-content h2 {
		font-size: 3em;
		margin: 0 0 0.5em 0;
	}

	.box.page-content header > p {
		font-size: 1.65em;
		margin: 0 0 0.5em 0;
	}

	.box.page-content ul.meta {
		margin: 0 0 0.5em 0;
	}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br><br><br><br>
	<div id="page-wrapper">

		<!-- Main -->
			<div class="container">
				<div class="row gtr-200">
					<div class="col-12">

						<!-- Highlight -->
						<section class="box highlight">
							<ul class="special">
								<li><a href="pVideo.no"><img src="resources/images/multimedia.png" style="width:100px; height:100px; margin:20px;"><span class="label"></span></a><b>동영상</b></li>
								<li><a href="pCopyright.no"><img src="resources/images/lock.png" style="width:100px; height:100px; margin:20px;"><span class="label"></span></a><b>저작권</b></li>
								<li><a href="pLegal.no"><img src="resources/images/contract.png" style="width:100px; height:100px; margin:20px;"><span class="label"></span></a><b>법적정책</b></li>
								<li><a href="pReporting.no"><img src="resources/images/shout.png" style="width:100px; height:100px; margin:20px;"><span class="label"></span></a><b>신고</b></li>
							</ul>
							<header><b>
								<h2>정책 및 안전<small>&nbsp;부적절한 콘텐츠 신고</small></h2><br>
							</header>
						</section>

					</div>
				</div>
			</div>

		</div>
	<section class="box highlight" style="margin-left:20%;margin-right:20%;"><b>
		<br><br>
		<div class="bold" style="text-align:left !important;"><b>부적절한 콘텐츠 신고</b></div>
		<p>
			회원의 부적절한 콘텐츠 신고가 중요한 역할을 합니다. 콘텐츠 신고는 익명으로 진행되므로 다른 사용자는 누가 신고했는지 알 수 없습니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>불량 사용자 신고</b></div>
		<p>
			권리침해 및 왕따/약자에 대한 사이버 괴롭힘,명의 도용,폭력적 위협,아동 방치,보호집단에 대해 적개심이나 증오심의 표현 사용,스팸 및 사기
		</p>
		<div class="bold" style="text-align:left !important;"><b>법적 위반사항 신고</b></div>
		<p>
			모욕/괴롭힘 ,개인정보 보호,상표권 침해,저작권 침해,명예훼손,모조품,기술적 조치의 우회	
		</p>
		<div class="bold" style="text-align:left !important;"><b>개인정보 침해 신고</b></div>
		<p>
			자신의 모습이 담긴 콘텐츠가 daily log에 표시되는 것을 원치 않을 수도 있으므로, 
			daily log은 개인정보 침해 신고 제출에 도움이 되는 절차를 마련했습니다. 
			개인정보 침해 신고 절차를 시작하기 전, 신고하려는 콘텐츠에서 본인을 고유하게 식별할 수 있는지 확인하시기 바랍니다.
		</p>		
		<div class="bold" style="text-align:left !important;"><b>연령 제한</b></div>
		<p>
			동영상이 가이드를 위반하지 않지만 일부 시청자에게는 적합하지 않은 경우 연령 제한이 적용될 수 있습니다. 
			연령제한이 적용되는 경우(저속한 언어,폭력적이고 혐오스러운 이미지,과도한 노출 및 선정적인 콘텐츠,유해하거나 위험한 행위 묘사)	
		</p>
		<div class="bold" style="text-align:left !important;"><b>커뮤니티 가이드 위반 경고 기본 사항</b></div>
		<p>
			커뮤니티 가이드 위반과 관계없이 당사자의 개인정보 침해 신고, 법원 명령 등의 이유로 인해 콘텐츠가 삭제될 수도 있습니다. 
			이러한 경우 로거는 경고를 받지 않지 않습니다.	
		</p>
		<div class="bold" style="text-align:left !important;"><b>경고를 받는 경우 초래되는 결과</b></div>
		<p>
			경고를 받으면 관련 정보가 이메일로 발송됩니다.삭제된 콘텐츠,위반한 정책(예: 성적인 콘텐츠 또는 폭력),내 채널에 미치는 영향	
		</p>
		<div class="bold" style="text-align:left !important;"><b>계정 해지</b></div>
		<p>
			커뮤니티 가이드를 심각하게 위반하거나 반복적으로 위반하는 계정은 해지될 수 있습니다.
		</p>		
		<div class="bold" style="text-align:left !important;"><b>저작권 위반으로 인한 폐쇄</b></div>
		<p>
			저작권 침해 신고로 인해 채널이 폐쇄되었지만 계정에 대한 저작권 침해 신고가 잘못되었다고 생각되는 경우 반론 통지를 제출할 수 있습니다. 
			채널이 폐쇄된 사용자도 이 절차를 밟을 수 있지만, 반론 통지 웹 양식은 이용할 수 없습니다. 자유 형식으로 반론 통지를 제출할 수 있습니다.			
		</p>		
	</section>
<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
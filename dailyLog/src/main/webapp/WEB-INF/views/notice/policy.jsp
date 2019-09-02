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
		background:white !important;
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
					color: #fff;
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
								<h2>정책 및 안전</h2><br>
								<p>다음과 같은 몇 가지 상식적인 규칙을 지키면 별문제 없이<br> DAILY LOG 커뮤니티 활동을 즐기실 수 있으니 규정을 준수해 주시기 바랍니다.</p></b>
							</header>
							<p style="color:gray"><b>
								가이드를 빠져나갈 구멍을 찾으려고 하기보다 가이드를 이해하고 가이드가 만들어진 근본적인 이유를 존중하세요.<br>
								DAILY LOG 플랫폼 안팎에서 크리에이터의 행위가 DAILY LOG 사용자, 커뮤니티, 직원이나 생태계에 해를 끼치는 경우 <br> 
								DAILY LOG는 크리에이터 행위의 과실이 얼마나 심각한지, <br>유해한 행위에 패턴이 존재하는지 여부를 포함하나 이에 국한되지 않는 다양한 요소를 고려하여 대처할 수 있습니다. <br>
								DAILY LOG에서는 크리에이터의 권한 정지부터 계정 해지에 이르기까지 다양한 조치를 취합니다.</b>
							</p>
						</section>

					</div>
				</div>
			</div>

		</div>
<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
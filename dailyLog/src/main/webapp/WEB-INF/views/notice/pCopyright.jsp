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
								<h2>정책 및 안전<small>&nbsp;저작권</small></h2><br>
							</header>
						</section>

					</div>
				</div>
			</div>

		</div>
	<section class="box highlight" style="margin-left:20%;margin-right:20%;"><b>
		<br><br>
		<div class="bold" style="text-align:left !important;"><b>저작권</b></div>
		<p>
			직접 만들었거나 사용 허가를 받은 동영상만 업로드하며 직접 만들지 않은 동영상을 업로드하거나 음악 트랙,저작권 보호를 받는 프로그램 일부,다른 사용자가 만든 동영상 등 
 			다른 사람이 저작권을 소유하고 콘텐츠가 동영상에 포함되어 있다면 필요한 승인을 받지 않고 업로드 해서는 안됩니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>저작권의 적용</b></div>
		<p>
			TV 프로그램, 영화, 온라인 동영상 등의 시청각 작품,음원 및 음악작품,강연, 기사, 도서, 음악작품 등의 저술 작품,그림, 포스터, 광고 등의 
			시각 작품,비디오 게임 및 컴퓨터 소프트웨어,연극, 뮤지컬 등의 극 작품
		</p>
		<div class="bold" style="text-align:left !important;"><b>소유자의 콘텐츠</b></div>
		<p>
			저작권 소유자를 명시한다고 해서 그들의 저작물을 사용할 수 있는 권리가 자동으로 부여되지는 않습니다. 
			동영상을 daily log에 업로드하기 전에 동영상에서 사용이 허가되지 않은 모든 요소에 대한 권리를 확보해야하며 
			공정 사용에 의존하는 경우 동영상에서 타인의 저작물에 독창적인 요소를 가미했더라도 공정 사용에 해당하지 않을 수 있습니다.	
		</p>
		<div class="bold" style="text-align:left !important;"><b>비영리 명시</b></div>
		<p>
			저작권 보호 저작물을 통한 수익 창출을 시도하지 않아도 저작권 침해 신고의 대상이 될 수 있습니다. 
			동영상을 업로드할 때 '오락용' 또는 '비영리'라고 명시하는 것만으로 충분하지 않습니다. 
			공정 사용과 관련하여 법정에서 공정 여부를 파악할 때 사용 목적을 신중하게 살펴봅니다.
			 '비영리' 사용의 경우 공정 사용을 판단할 때 유리할 수는 있지만 그 자체만으로 보호받지는 못합니다.
		</p>		
		<div class="bold" style="text-align:left !important;"><b>구입한 콘텐츠</b></div>
		<p>
			콘텐츠를 구매했다고 해서 dailly log에 구매한 콘텐츠를 업로드할 권한을 소유한 것은 아닙니다. 
			저작권 소유자의 출처를 밝힌 경우에도 구매한 콘텐츠가 포함된 동영상을 게시하면 저작권법을 위반할 수 있습니다
		</p>
		<div class="bold" style="text-align:left !important;"><b>직접 녹회 / 녹음한 콘텐츠</b></div>
		<p>
			콘텐츠를 직접 녹화했다고 해서 이 콘텐츠를 daily log에 업로드할 수 있는 권리를 소유했다고 볼 수 없습니다. 
			저작권 보호 음악이 배경 음악으로 재생되는 등 녹화한 동영상에 다른 사람의 저작권 보호 콘텐츠가 포함되어 있는 경우
			 적절한 권리 소유자의 허가를 받아야 합니다
		</p>
		<div class="bold" style="text-align:left !important;"><b>저작권 침해 의사 없음 명시</b></div>
		<p>
			모든 권리는 작성자에게 있음', '침해 의사 없음'이나 '다른 사용자의 자료'와 같은 면책조항 표현을 사용한다고 해서 
 			콘텐츠를 게시하도록 저작권 소유자의 허가를 받았다거나 자료를 공정 사용할 수 있다는 것을 의미하지 않습니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>다른 크리에이터와 비교</b></div>
		<p>
			자신이 업로드한 동영상과 유사한 동영상이 사이트에 남아 있다고 해서 해당 콘텐츠를 게시할 권리를 갖게 되는 것은 아닙니다. 
			간혹 저작권자가 자신의 작품 일부만을 사이트에 올리도록 허가하는 경우도 있습니다. 또한 매우 유사한 동영상을 
			여러 저작권 소유자가 소유하는 경우 한 사람은 허가하는 반면 다른 사람은 허가하지 않을 수도 있습니다.
		</p>		
		<div class="bold" style="text-align:left !important;"><b>저작권 보호 콘텐츠 사용</b></div>
		<p>
			단 몇 초일지라도 저작권 보호 콘텐츠를 허가 없이 사용하면 동영상에 Content ID 소유권 주장이 제기되거나 
			저작권 소유자에 의해 게시 중단될 수 있습니다. 
			공정 사용을 주장할 수는 있지만 공정 사용 여부는 법정에서만 판가름된다는 점을 유의하시기 바랍니다.	
		</p>
	</section>
<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
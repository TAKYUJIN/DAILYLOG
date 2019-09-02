<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
	body {
		background:white !important;
	}
	.bold b {
		color:red !important;
		text-align:left !important;
		margin:30px !important;
		margin-left:5% !important;
	}
	p {
		text-align:left !important;
		margin:30px !important;
		margin-left:5% !important;
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
					</ul><br><br><br>
					<header><b>
						<h2>정책 및 안전 <small>법적정책</small></h2>
					</header>
				</section>
			</div>
		</div>
	</div>
	<br>
	<section class="box highlight">
		<br><br>
		<div class="bold" style="text-align:left !important;"><b>상표권</b></div>
		<p>
			사용자 이름, 태그 또는 동영상 제목에 타인의 상표권을 사용한다고 해서 반드시 상표권 침해가 성립하는 것은 아닙니다. <br>
			하지만 프로필의 콘텐츠나 동영상에 시청자가 해당 페이지나 콘텐츠를 상표 소유자가 만들었거나 후원하는 것으로 혼동할 수 있는 내용이 있는 경우 상표 소유자의 권리가 침해될 소지가 있습니다.<br> 
			이러한 경우 해당 콘텐츠가 삭제될 수 있으므로서 사용자 이름을 선택하거나 동영상에 메타데이터를 추가할 때는 타인의 상표권 사용에 각별히 주의해야 합니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>명예회손</b></div>
		<p>
			호스팅된 콘텐츠로 명예 훼손되었다고 본인 또는 법정 대리인이 판단하는 경우 온라인 웹 양식을 이용하여 신고서를 제출할 수 있습니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>모조품</b></div>
		<p>
			dialy log에서 모조품의 판매 또는 홍보 행위가 금지됩니다. 모조품에는 진품과 동일하거나 매우 흡사해 실질적으로 구별이 불가능한 상표 또는 로고가 사용됩니다. <br>
			위조업자는 브랜드의 특징을 모방하여 해당 브랜드의 진품으로 위장하거나 진품의 모조품, 복제품 또는 위조품임을 드러내고 판매하기도 합니다.	
		</p>
		<div class="bold" style="text-align:left !important;"><b>모조품 신고</b></div>
		<p>
			모조품을 판매하거나 홍보하는 것으로 보이는동영상이나 댓글을 발견하면 웹 양식을 통해 모조품 신고를 제출할 수 있습니다. <br>
			모조품 정책을 위반하는 경우 해당 콘텐츠를 삭제합니다.
		</p>		
	</section>
	
	<br><br>
	
	<jsp:include page="../common/footer.jsp"></jsp:include>	
	
</body>
</html>
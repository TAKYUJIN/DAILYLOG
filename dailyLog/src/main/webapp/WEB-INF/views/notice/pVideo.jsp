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
						<h2>정책 및 안전 <small>동영상</small></h2>
					</header>
				</section>
			</div>
		</div>
	</div>
	<br>
	<section class="box highlight"><b>
		<br><br>
		<div class="bold" style="text-align:left !important;"><b>과도한 노출 및 성적인 콘텐츠</b></div>
		<p>
			포르노나 음란물을 허용하지 않고 자신의 모습을 촬영한 것이라도 Daily Log에 올릴 수 없습니다. <br>
			또는 아동 학대 사실을 발견 했을 경우 법 집행 기관과 협조하여 신고합니다
		</p>
		<div class="bold" style="text-align:left !important;"><b>연령제한 콘텐츠</b></div>
		<p>
			과도한 노출이나 그 밖의 성적인 콘텐츠가 포함되어 있지만 내용을 묘사하지 않을 경우 콘텐츠 연령 제한을 적용하며 <br>
			콘텐츠를 삭제할 것인지 아니면 연령제한을 적용할 것인지 결정합니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>유해/위험한 콘텐츠</b></div>
		<p>
			심각한 신체적 손상 또는 사망으로 이어질 수 있는 위험하거나 불법적인 행동을 독려 하기 위한 콘텐츠는 Daily Log에선 허용되지 않습니다.	
		</p>
		<div class="bold" style="text-align:left !important;"><b>증오성 콘텐츠</b></div>
		<p>
			Daily Log는 자유로운 표현을 위한 플랫폼이지만 Daily Log 인종,민족,종교,장애,성별,연령,국적,군필 여부 ,성적지향,성 정체성에 따라 <br>
			개인이나 그룹에 대한 폭력을 선동하거나 용납하는 콘텐츠 또는 핵심 특성을 기준으로 증오를 조장하는 것이 기본 목적은 콘텐츠를 지원하지 않습니다,<br>
			판별하는 데엔 세심한 주의와 균형 잡힌 판단이 필요,보호대상인 그룹을 공격하는것이 목적이라면 콘텐츠가 선을 넘은 것입니다.<br>
		</p>		
		<div class="bold" style="text-align:left !important;"><b>폭력적이거나 노골적인 콘텐츠	</b></div>
		<p>
			충격적이거나 선정적이거나 필요 이상의 유형과 폭력이 난무하는 콘텐츠를 게시해서는 안됩니다.시청자가 특정 폭력 행위를 따라 하도록 조장하지 마세요	
		</p>
		<div class="bold" style="text-align:left !important;"><b>괴롭힘/사이버 괴롭힘</b></div>
		<p>
			Daily Log에 악성 동영상과 댓글을 게시해서는 안되며 괴롭히는 행위가 도를 넘어 악의적인 공격으로 간주되면 신고되어 삭제될 수 있습니다. <br>
			또한 약간의 짜증을 유발하거나 사소한 정도라면 무시할 수 있습니다.	
		</p>
		<div class="bold" style="text-align:left !important;"><b>스팸,오해,사기</b></div>
		<p>
			스팸을 좋아하는 사람은 없으며 조회수를 늘리기 위해 오해를 일으키는 설명,태그,제목 또는 미리보기 이미지를 만들지 않으며 댓글을 포함한 <br>
			특정 대상의 콘텐츠,원치 않는 콘텐츠 또는 반복적 콘텐츠를 대량으로 올리는 것은 바람직하지 않습니다.	
		</p>
		<div class="bold" style="text-align:left !important;"><b>위협</b></div>
		<p>
			Daily Log 타인의 이익을 침해하는 행위,스토킹,협박,괴롭힘,위협,사생활 침해,타인의 개인정보 누설,폭력 행위 선동,이용약관 위반 조장 등<br>
 			행위에 강경한 입장을 취하고 있으며 이러한 행위가 적발될 경우 가해자는 Daily Log에 영구적으로 차단됩니다.
		</p>		
		<div class="bold" style="text-align:left !important;"><b>개인정보 보호</b></div>
		<p>
			허락 없이 내 개인정보(이미지,음성,이름,금융정보,연락처 정보,기타 개인 식별 정보)를 게시했거나 내가 등장하는 동영상을 업로드한 경우<br>
 			Daily Log 개인정보 보호 관련 가이드에 근거하여 콘텐츠 삭제를 요청할 수 있습니다.			
		</p>
		<div class="bold" style="text-align:left !important;"><b>명의 도용</b></div>
		<p>
			다른 채널이나 개인을 도용하기 위해 만든 계정은 Daily Log 명의 도용 정책에 따라 삭제 됩니다.<br>
			광고 상품 및 서비스의 출처에 대한 혼동을 일으킬 수 있는 채널,채널의 콘테느는 허용되지 않습니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>채널 명의 도용</b></div>
		<p>
			타인의 채널과 비슷하게 보이도록 다른 채널의 프로필, 배경 또는 전반적인 디자인 및 분위기를 모방한 채널입니다. <br>
			다른 채널을 모방하려는 의도가 명확한 경우 100% 동일하지 않아도 채널 명의 도용에 해당됩니다.			
		</p>
		<div class="bold" style="text-align:left !important;"><b>개인 명의 도용</b></div>
		<p>
			타인이 게시한 것처럼 보이도록 의도한 콘텐츠입니다.
		</p>		
		<div class="bold" style="text-align:left !important;"><b>아동 보호</b></div>
		<p>
			미성년자의 정서 및 신체적 건강을 위협하는 콘텐츠는 Daily Log에서 허용되지 않습니다. <br>
			미성년자는 법적 성인 연령 미만의 사람으로 정의됩니다. 대부분의 국가에서 대개 만 18세 미만입니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>미성년자의 성적 대상화</b></div>
		<p>
			미성년자가 나오는 음란물 및 미성년자를 성적으로 착취하는 콘텐츠입니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>미성년자와 관련된 유해하거나 위험한 행위</b></div>
		<p>
			미성년자가 위험한 행동에 가담하는 모습을 보여주거나 미성년자에게 위험한 행동에 가담하라고 독려하는 콘텐츠입니다. <br>
			미성년자를 위험한 스턴트, 도전, 장난을 비롯해 상해를 입힐 수 있는 유해한 상황에 빠뜨려서는 안 됩니다.				
		</p>
		<div class="bold" style="text-align:left !important;"><b>미성년자의 정신적 고통 유발</b></div>
		<p>
			미성년자에게 성인용 주제를 노출하거나, 부모 학대 상황을 가장하거나, 미성년자에게 강압 또는 폭력을 행사하는 등 <br>
			미성년 참여자 또는 시청자에게 정신적 고통을 초래할 수 있는 콘텐츠입니다.
		</p>		
		<div class="bold" style="text-align:left !important;"><b>오해를 일으키는 가족용 컨텐츠</b></div>
		<p>
			족용 콘텐츠인 것처럼 보이지만 청소년에게 적합하지 않은 외설적이거나 음란한 내용, 폭력적 내용, 기타 성인용 <br>
			주제를 포함하고 있어 시청자의 오해를 일으키는 콘텐츠입니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>미성년자에 대한 사이버 폭력 및 괴롭힘</b></div>
		<p>
			괴롭히거나 모멸감을 주기 위해 개인을 표적으로 삼거나, 이메일 주소 또는 은행 계좌 번호와 같은 개인정보를 노출하거나, <br>
			동의를 받지 않고 타인을 녹음/촬영하거나, 성희롱이 담겼거나, 괴롭힘 또는 권리침해 행위를 선동하는 콘텐츠입니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>저속한 언어</b></div>
		<p>
			청소년에게 적합하지 않은 표현이 콘텐츠에 사용되는 경우가 있습니다. 동영상 또는 관련 메타데이터에 <br>
			노골적인 성적 표현이나 과도한 욕설을 사용할 경우 동영상에 연령 제한이 적용될 수 있습니다.
		</p>
		<div class="bold" style="text-align:left !important;"><b>자살 및 자해 행위</b></div>
		<p>
			자해를 조장하거나 충격 또는 혐오감을 불러일으키려는 목적으로 제작된 콘텐츠는 Daily Log에서 허용되지 않습니다. <br>
			우울증, 자해 또는 기타 정신 건강 문제와 관련된 경험을 다룬 콘텐츠는 게시할 수 있습니다.
		</p></b>
	</section>
	
	<br><br>
	
	<jsp:include page="../common/footer.jsp"></jsp:include>	
	
</body>
</html>
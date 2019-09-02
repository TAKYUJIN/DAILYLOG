<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
	.body margin {
		margin-left:30%;
		margin-right:30%;
	}
	/* Icons */

	.icon {
		text-decoration: none;
		text-decoration: none;
	}

		.icon:before {
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			display: inline-block;
			font-style: normal;
			font-variant: normal;
			text-rendering: auto;
			line-height: 1;
			text-transform: none !important;
			font-family: 'Font Awesome 5 Free';
			font-weight: 400;
		}

		.icon:before {
			line-height: inherit;
			font-size: 1.25em;
		}

		.icon > .label {
			display: none;
		}

		.icon.solid:before {
			font-weight: 900;
		}

		.icon.brands:before {
			font-family: 'Font Awesome 5 Brands';
		}
</style>
</head>
<body class="homepage is-preload">
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br><br>
	<div class="body margin" align="center">
		<h3><b>이용약관</b></h3>
		<div>
			<div style="display:inline-block; margin:0%;"><h3 class="icon fa-comment"></h3></div>
			<div style="display:inline-block; margin:1%;"><h3 class="icon fa-sync"></h3></div>
			<div style="display:inline-block; margin:1%;"><h3 class="icon fa-image"></h3></div>
			<div style="display:inline-block; margin:1%;"><h3 class="icon solid fa-cog"></h3></div>
			<div style="display:inline-block; margin:1%;"><h3 class="icon solid fa-wrench"></h3></div>
			<div style="display:inline-block; margin:1%;"><h3 class="icon solid fa-check"></h3></div>
		</div>
		<p style="color:gray;">다른 사용자가 서비스 약관을 위반하도록 조장하는 콘텐츠를 게시하면 해당 콘텐츠가 삭제되고 <br>
		계정 활동에 불이익이 발생하며 경우에 따라서는 계정이 해지될 수도 있습니다</p>
		<br><br>
		
		<div>
			<table style="border:1px;">
				<!-- 회원 -->
				<tr><td colspan="2" width="200px"><h3><b>회원 보호정책</b></h3><br></td></tr>
				<tr>
					<td width="200px" align="center"><b>신원 보호</b></td>
					<td width="600px"><hr>
						"daily log는 사용자의 안전을 중요하게 생각하며 사이트의 동영상이나 댓글이 개인정보를 침해하거나 안전을 위협하는 경우가 있으면 알려주시기 바랍니다.<br>
						누군가가 허락 없이 내 개인정보를 게시했거나 내가 등장하는 동영상을 업로드한 경우 먼저 로거에게 직접 연락하여 콘텐츠를 삭제해 달라고 요청하세요.<br>
						로거와 합의점을 찾을 수 없거나 로거에게 문의하기 불편한 상황이라면 daily log개인정보 보호 가이드라인에 따라 콘텐츠 삭제를 요청할 수 있습니다. "	<hr>
					</td>
				</tr>
				<tr>
					<td width="200px" align="center"><b>휴먼 계정 정책</b></td>					
					<td width="600px"><hr>
						사용자는 daily log에서 실제로 활동하는 회원이어야 합니다.6개월 이상 사이트에 로그인하지 않으며동영상 콘텐츠를 올린 적이 없으며 동영상 또는 채널을 시청하거나 댓글을 다는 데 적극적으로 참여하지 않음<hr>
					</td>
				</tr>
				<tr>
					<td width="200px" align="center"><b>서비스 약관 위반 조장</b></td>					
					<td width="600px"><hr>
						다른 사용자가 서비스 약관을 위반하도록 조장하는 콘텐츠를 게시하면 해당 콘텐츠가 삭제되고 계정 활동에 불이익이 발생하며 경우에 따라서는 계정이 해지될 수도 있습니다<hr>
					</td>
				</tr>
				<!-- 청소년 보호정책 -->
				<tr><td colspan="2" width="200px"><h3><b>청소년 보호정책</b></h3><br></td></tr>
				<tr>
					<td width="200px" align="center"><b>청소년 접근제한 및 관리조치</b></td>					
					<td width="600px"><hr>
						청소년이 아무런 제한장치 없이 청소년 유해정보에 노출되지 않도록 별도의 인증장치를 마련,적용하며, 유래정보가 노출되지 않기 위한 예방차원의 조치를 강구<hr>
					</td>
				</tr>
				<tr>
					<td width="200px" align="center"><b>업무담당자교육시행</b></td>					
					<td width="600px"><hr>
						정보통신업무 총사다를 대상으로 청소년보호관련 법률 및 제재기준, 유해정보 발견시 대처방법 위반사항 처리에 대한 보고절차 등을 교육시행<hr>
					</td>
				</tr>
				<tr>
					<td width="200px" align="center"><b>피해상담및 고충처리</b></td>					
					<td width="600px"><hr>
						유해정보로 인한 피해상담 및 고충처리를 위한 전문인력을 배치하여  피해가 확산되지 않도록 하고 있습니다.<br>
						 청소년 및 담당자의 소속, 성명 및 연락처 항을 참고하여 전화나 메이을 통해 상담 및 고충처리를 요청 할 수 있습니다.<hr>
					</td>
				</tr>
				<tr>
					<td width="200px" align="center"><b>책임자 및 담당자의 <br>소속 및 연락처</b></td>					
					<td width="600px"><hr>
						daily log는 청소년들이 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.<hr>
					</td>
				</tr>
				<!-- 책임의 한계 -->
				<tr><td colspan="2" width="200px"><h3><b>책임의 한계</b></h3><br></td></tr>
				<tr>
					<td width="200px" align="center"><b>책임</b></td>					
					<td width="600px"><hr>
						"daily log는 고객 여러분이 찾고자 하는 정보들이 전달될 수 있도록 최선의 노력을 다하고 있습니다.  <br>
						다만 이용자가 작성한 게시물, 광고주가 제작한 광고물, 판매자가 표시한 상품판매정보등이나 daily log 서비스를 통해 연결되는 도메인의 사이트는 해당 정보의 제공자가 독립적으로 작성 또는 제작한 정보이기 때문에,<br>
						 daily log 서비스에서 매개된 정보라도 그 정보의 정확성, 신회성 등원칙적으로 해당정보를 작성하였거나 혹은 제작한 당사ㄱ자가 담보하고 이에따른 책임을 부담합니다"<hr>													
					</td>
				</tr>
				<tr>
					<td width="200px" align="center"><b>한계</b></td>					
					<td width="600px"><hr>
						"daily log는 daily log서비스를 매개로 전달되었더라도 dailylog작성 또는 제작하지 않는 정보에 대하여 관련 법령에 별도의 규정이 있거나 <br>
						정보를 있는 그대로 중개또는 매개 하지 않는 특별한 사정이 없는 한 정확성 신회성등 어떠한 보증도 하지 않습니다. <br>
						그리고 신로함으로써 입게된 손해에 대해 법력에서 별도로 규정하였거나  고의 과실이 있는 경우에 한하여 배상책임을 부담합니다."<hr>																						
					</td>
				</tr>
				<!-- 상표 허락 -->
				<tr><td colspan="2" width="200px"><h3><b>상표 허락</b></h3><br></td></tr>
				<tr>
					<td width="200px" align="center"></td>					
					<td width="600px"><hr>
						"데이리 로그,daily log 등 본 웹사이트에포함된 제품 밍 또는 서비스의 명칭은 dailylog 상표 또는 등록 상표이다. daily log는 이에대한 권리를 가지고 있으며 다른 제품 및 회사의 명칭은 그 해당 사용자들의 상표 일 수도 있습니다. <br>
						지식재산권을 포함한 타인의 권리를 존중하며, 사용자들의 마찬가지로 행돟애주시기를 기대합니다 /타인의 권리를 침해하거나 위반하는 사용자에 대하여 사전통지 없이 서비스 이용제한조치를 취할 수 잇습니다."<hr>
					</td>
				</tr>
				<!-- 거래의 책임 -->
				<tr><td colspan="2" width="200px"><h3><b>거래의 책임</b></h3><br></td></tr>
				<tr>
					<td width="200px" align="center"></td>					
					<td width="600px"><hr>
						"유료컨텐츠 서비스는 상품 및 서브스 판매업체가 독자적으로 소유하고 운영하며 판매업체의 전적인 책임 하에 있습니다. <br>
						서브스업체의 접속 또는 섭속불능으로 인한 어떠한 손해, 손실, 상해등 이용자와 입점업체간에 행라여지는 거래에 대해서 명시적으로 어떠한 책임이나 의무도 부담하지 아니합니다 "<hr>
					</td>
				</tr>
				<!-- 검색결과 수집 -->
				<tr><td colspan="2" width="200px"><h3><b>검색결과의 수집</b></h3><br></td></tr>
				<tr>
					<td width="200px" align="center"></td>					
					<td width="600px"><hr>
						검색은 인터넷 상에 소중한 정보들을 게시 제공한 웹운영자와 저작자들의 의견을 존중하여 최선을 다하고있습니다/ 검색은 국내 최대 용량, 최고 품질의 서비스를 제공하기 위해 다양하게 노력하고 있습니다.<hr>
					</td>
				</tr>
			</table>		
		</div>
	
	</div>

	<br><br><br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<style>
	body {
		background:white !important;
	}
	b {
		color:darkblue !important;
		text-align:left !important;
		margin:30px !important;
	}
	p {
		text-align:left !important;
		margin:30px !important;
	}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br><br><br><br><br><br><br><br><br><br>
	<section class="box highlight">
		<header>
			<h2>법적 정책</h2>
		</header>
		<br><br>
		<div style="text-align:left !important;"><b>상표권</b></div>
		<p>
			사용자 이름, 태그 또는 동영상 제목에 타인의 상표권을 사용한다고 해서 반드시 상표권 침해가 성립하는 것은 아닙니다. <br>
			하지만 프로필의 콘텐츠나 동영상에 시청자가 해당 페이지나 콘텐츠를 상표 소유자가 만들었거나 후원하는 것으로 혼동할 수 있는 내용이 있는 경우 상표 소유자의 권리가 침해될 소지가 있습니다.<br> 
			이러한 경우 해당 콘텐츠가 삭제될 수 있으므로서 사용자 이름을 선택하거나 동영상에 메타데이터를 추가할 때는 타인의 상표권 사용에 각별히 주의해야 합니다.
		</p>
		<div style="text-align:left !important;"><b>명예회손</b></div>
		<p>
			호스팅된 콘텐츠로 명예 훼손되었다고 본인 또는 법정 대리인이 판단하는 경우 온라인 웹 양식을 이용하여 신고서를 제출할 수 있습니다.
		</p>
		<div style="text-align:left !important;"><b>모조품</b></div>
		<p>
			dialy log에서 모조품의 판매 또는 홍보 행위가 금지됩니다. 모조품에는 진품과 동일하거나 매우 흡사해 실질적으로 구별이 불가능한 상표 또는 로고가 사용됩니다. <br>
			위조업자는 브랜드의 특징을 모방하여 해당 브랜드의 진품으로 위장하거나 진품의 모조품, 복제품 또는 위조품임을 드러내고 판매하기도 합니다.	
		</p>
		<div style="text-align:left !important;"><b>모조품 신고</b></div>
		<p>
			모조품을 판매하거나 홍보하는 것으로 보이는동영상이나 댓글을 발견하면 웹 양식을 통해 모조품 신고를 제출할 수 있습니다. <br>
			모조품 정책을 위반하는 경우 해당 콘텐츠를 삭제합니다.
		</p>		
	</section>
	
	<br><br>
	
	<jsp:include page="../common/footer.jsp"></jsp:include>	
	
</body>
</html>
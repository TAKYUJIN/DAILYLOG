<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css2/main.css" />
<noscript><link rel="stylesheet" href="assets/css2/noscript.css" /></noscript>
<!-- Scripts -->
<script src="assets/js2/jquery.min.js"></script>
<script src="assets/js2/jquery.scrollex.min.js"></script>
<script src="assets/js2/jquery.scrolly.min.js"></script>
<script src="assets/js2/browser.min.js"></script>
<script src="assets/js2/breakpoints.min.js"></script>
<script src="assets/js2/util.js"></script>
<script src="assets/js2/main.js"></script>
<style>
	body {
		background:white;
	}
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br><br><br><br><br><br><br><br><br><br>
	<!-- 이용약관 -->

	<!-- Main -->
	<div class="container">
		<div class="row">
			<div class="col-3 col-12-medium">
				<div class="sidebar">
					<!-- Recent Posts -->
					<section>
						<h2 class="major"><span>이용약관</span></h2>
						<ul class="divided">
							<li>
								<article class="box post-summary">
									<h3><a href="#">서비스 이용약관</a></h3>
								</article>
							</li>
							<li>
								<article class="box post-summary">
									<h3><a href="#">유료 서비스 약관</a></h3>
								</article>
							</li>
							<li>
								<article class="box post-summary">
									<h3><a href="#">유료 서비스 사용 규칙</a></h3>
								</article>
							</li>
						</ul>
					</section>
				</div>
			</div>
			<div class="col-9 col-12-medium imp-medium">
				<div class="content">

					<!-- Content -->

						<article class="box page-content">

							<header>
								<h2>Left Sidebar</h2>
								<p>Semper amet scelerisque metus faucibus morbi congue mattis</p>
							</header>
							
							<section>
								<h3>More intriguing information</h3>
								<p>
									다른 사용자가 서비스 약관을 위반하도록 조장하는 콘텐츠를 게시하면 해당 콘텐츠가 삭제되고 계정 활동에 불이익이 발생하며 경우에 따라서는 계정이 해지될 수도 있습니다
								</p>
							</section>

						</article>

				</div>
			</div>
		</div>
	</div>



	<br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.form-horizontal1 {
	width: 1024px; /* 전체 폼 사이즈임 */ !
	important margin-top: 50px;
	margin-bottom: 50px;
}

.signup-form {
	width: 800px;
	margin: 0 auto;
	padding: 30px 0;
}

ul, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #000;
}

.tab {
	width: 100%;
	background: #fff;
	overflow: hidden;
}

.tab li {
	margin-left: -30px;
	text-align: center;
	width: 50%;
}

.tab li {
	display: inline-block;
	padding: 20px;
	cursor: pointer;
	background: #F3F8FA;
}

.tab li.on {
	background-color: #192466;
	color: white;
}

.tab_con {
	
	clear: both;
	margin-top: 5px;
	/*border: 1px solid #ddd;*/
	margin-left: 50px;
	margin-top: 50px;
	height: 500px;
}

/*
.tab_con div {
	display: none;
	background: #fff;
	line-height: 100px;
	margin-left: 50px;
	margin-top: 20px;
	height: 500px;
}
*/

</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/guest.jsp"></jsp:include>
	
	<br>
	<br>
	<br>
	<br>
	
	<div class="signup-form">
		<ul class="tab" id="tab">
			<li>아이디 찾기</li>
			<li>비밀번호 찾기</li>
		</ul>

		<div class="tab_con" id="tab_con">
			
				<div id="1nd_con">
				<p style="font-weight: bold; font-size: medium;">등록된 핸드폰으로 계정 찾기</p><br>
				회원가입 당시 휴대폰 번호를 잊었거나 변경한 경우 고객센터(02-1588-1004)로 먼저 연락주세요
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-9">
							<input type="email" class="form-control" name="userId"
								id="userId" placeholder="Email" required="required">
						</div>
						<div class="col-xs-3">
							<button
								style="height: 35px; border-radius: 5px; background: #192466; color: white; border: solid 1px;"
								name="btncheck" id="ckId">중복확인</button>
						</div>
					</div>
				</div>
				<div id="2nd_con">2nd Contents</div>
			</div>
			
			</div>
		


	<script>
			$(function() {
				tab('#tab', 0);
			});

			function tab(e, num) {
				var num = num || 0;
				var menu = $(e).children();
				var con = $(e + '_con').children();
				var select = $(menu).eq(num);
				var i = num;

				select.addClass('on');
				con.eq(num).show();

				menu.click(function() {
					if (select !== null) {
						select.removeClass("on");
						con.eq(i).hide();
					}

					select = $(this);
					i = $(this).index();

					select.addClass('on');
					con.eq(i).show();
				});
			}
		</script>
	<br>
	<br>
	<br>
	<br>
	<br>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Expand and Collapse FAQ Accordion</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500|Open+Sans" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
	이것은...자주찾는질문 첫번째 질문을 다시 누르면 아니되오...이것이 없으면.. -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<style type="text/css">
	body {
		background: #fff;
		font-family: 'Varela Round', sans-serif;
	}
	
	#accordionExample {
		margin-bottom:20px;
	}
	.noticeMain {
		margin-top:50px;
		margin-left:100px;
		width:1000px;
		margin-bottom:50px;
	}
	.accordion .card {
		background: none;
		border: none;
	}
	.accordion .card .card-header {
		background: none;
		border: none;
		padding: .4rem 1rem;
		font-family: 'Varela Round', sans-serif;
	}
	.accordion .card-header h2 span {
		float: left;
		margin-top: 10px;
	}
	.accordion .card-header .btn {
		color: #2f2f31;
		font-size: 16px; /* 질문 폰트 크기 */
		text-align: left;
		position: relative;
		font-weight: 500;
		padding-left: 2rem;
	}
	.accordion .card-header i {
		font-size: 1.2rem;
		font-weight: bold;
		position: absolute;
		left: 0;
		top: 9px;
	}
	.accordion .card-header .btn:hover {
		color: #ff8300;
	}
	.accordion .card-body {
		color: #324353;
		padding: 0.5rem 3rem;
	}
	
	
	.page-title1 {
		margin: 3rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title1::after {
		content: "";
		width: 90px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #FBC52C; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title2 {
		margin: 3rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title2::after {
		content: "";
		width: 110px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title3 {
		margin: 3rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title3::after {
		content: "";
		width: 150px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	
	.accordion .highlight .btn {
		color: #74bd30;
	}
	.accordion .highlight i {
		transform: rotate(180deg);
	}
	
	
	
</style>
<script>
	$(document).ready(function(){
		// Add minus icon for collapse element which is open by default
		$(".collapse.show").each(function(){
			$(this).prev(".card-header").addClass("highlight");
		});
		
		// Highlight open collapsed element 
		$(".card-header .btn").click(function(){
			$(".card-header").not($(this).parents()).removeClass("highlight");
			$(this).parents(".card-header").toggleClass("highlight");
		});
	});
</script>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>
<div class="noticeMain">
	<div class="row">
		<div class="col-lg-15">
			<a href="noticeMain.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title1">FAQs</h1></a> 
			<a href="noticeList.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title2">Notice</h1></a>
			<a href="noticeEmailQuestion.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title3">question</h1></a></div>
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="clearfix mb-0">
							<a class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><i class="fa fa-chevron-circle-down"></i>회원 정보 변경은 어디서 해야하나요?</a>									
						</h2>
					</div>
					<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">회원 정보는 상단 제일 오른쪽에 있는 아이콘을 클릭해주시면 변경하실 수 있습니다. 도움이 되셨기를 바랍니다! </div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">
							<a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-chevron-circle-down"></i> How to Create Responsive Website with Bootstrap?</a>
						</h2>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						<div class="card-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h2 class="mb-0">
							<a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"><i class="fa fa-chevron-circle-down"></i> Does Bootstrap Framework Provide Cross-browser Support?</a>                     
						</h2>
					</div>
					<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Vestibulum id metus ac nisl bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet sagittis. In tincidunt orci sit amet elementum vestibulum.</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFour">
						<h2 class="mb-0">
							<a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour"><i class="fa fa-chevron-circle-down"></i> Can I Use Bootstrap for Mobile App Development?</a>                               
						</h2>
					</div>
					<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
						<div class="card-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</div>
					</div>
				</div>
			</div>
	</div>
</div>
</body>
</html>                            
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>                            
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.mainpage {
	width: 1024px;
	margin-top: 200px;

}

.area_subscribe {
	margin-top: 200px;
	margin-left:40px;
	width:1024px;
	background:red;
	
}
#new{
	margin-top:-40px;
	margin-left:850px;
}

</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>

	<div class="maingape">

		<div class="area_subscribe">
		<h2>구독</h2>
			<div id="new"><h2>최신순</h2></div>  
			<br><br><br>
			<h3 class="title_name">구독채널1</h3>
			<div class="wrap_slider">
				<div class="slide_paging"></div>
				<div class="list_favoritem">
					<div class="inner_favoritem">
						<a class="link_itembox"> <span class="thumb_box"> <video
									width="300px;" height="200px;" controls loop>
									<source src="" type="">
									<source src="nature.ogg" type="">
								</video> <span class="mark_play"></span></span> <span class="live_rank">
								<span class="img_rank rank_1">1</span> <strong
								class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
								<span class="append_info"> <span
									class="info_append info_play"> <span
										class="ico_kakaotv_new">조회수 : </span>31,380
								</span></span>
						</span>
						</a>
					</div>
						<div class="inner_favoritem">
						<a class="link_itembox"> <span class="thumb_box"> <video
									width="300px;" height="200px;" controls loop>
									<source src="" type="">
									<source src="nature.ogg" type="">
								</video> <span class="mark_play"></span></span> <span class="live_rank">
								<span class="img_rank rank_2">2</span> <strong
								class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
								<span class="append_info"> <span
									class="info_append info_play"> <span
										class="ico_kakaotv_new">조회수 : </span>31,380
								</span></span>
						</span>
						</a>
					</div>
				</div>
				
			</div>	
				<h3 class="title_name">구독채널2</h3>
			<div class="wrap_slider">
				<div class="slide_paging"></div>
				<div class="list_favoritem">
					<div class="inner_favoritem">
						<a class="link_itembox"> <span class="thumb_box"> <video
									width="300px;" height="200px;" controls loop>
									<source src="" type="">
									<source src="nature.ogg" type="">
								</video> <span class="mark_play"></span></span> <span class="live_rank">
								<span class="img_rank rank_1">1</span> <strong
								class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
								<span class="append_info"> <span
									class="info_append info_play"> <span
										class="ico_kakaotv_new">조회수 : </span>31,380
								</span></span>
						</span>
						</a>
					</div>
						<div class="inner_favoritem">
						<a class="link_itembox"> <span class="thumb_box"> <video
									width="300px;" height="200px;" controls loop>
									<source src="" type="">
									<source src="nature.ogg" type="">
								</video> <span class="mark_play"></span></span> <span class="live_rank">
								<span class="img_rank rank_2">2</span> <strong
								class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
								<span class="append_info"> <span
									class="info_append info_play"> <span
										class="ico_kakaotv_new">조회수 : </span>31,380
								</span></span>
						</span>
						</a>
					</div>
				</div>
				
			</div>	
				<h3 class="title_name">구독채널3</h3>
			<div class="wrap_slider">
				<div class="slide_paging"></div>
				<div class="list_favoritem">
					<div class="inner_favoritem">
						<a class="link_itembox"> <span class="thumb_box"> <video
									width="300px;" height="200px;" controls loop>
									<source src="" type="">
									<source src="nature.ogg" type="">
								</video> <span class="mark_play"></span></span> <span class="live_rank">
								<span class="img_rank rank_1">1</span> <strong
								class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
								<span class="append_info"> <span
									class="info_append info_play"> <span
										class="ico_kakaotv_new">조회수 : </span>31,380
								</span></span>
						</span>
						</a>
					</div>
						<div class="inner_favoritem">
						<a class="link_itembox"> <span class="thumb_box"> <video
									width="300px;" height="200px;" controls loop>
									<source src="" type="">
									<source src="nature.ogg" type="">
								</video> <span class="mark_play"></span></span> <span class="live_rank">
								<span class="img_rank rank_2">2</span> <strong
								class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
								<span class="append_info"> <span
									class="info_append info_play"> <span
										class="ico_kakaotv_new">조회수 : </span>31,380
								</span></span>
						</span>
						</a>
					</div>
				</div>	
			</div>	
		</div>
		
	</div>
	
	<jsp:include page="../common/footer.jsp"></jsp:include>  
</body>
</html>
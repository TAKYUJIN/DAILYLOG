<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<style>
.mainpage {
	width: 1600px;
	margin-top: 100px;
	margin-left:250px;
}

.btn {
	border: 1px solid lightgray;
	margin-left: 20px;
}

.infobtn {
	margin-top: 50px;
	margin-left: -10px;
}

#uploadbtn {
	margin-top: 30px;
	margin-left: 900px;
}

#advertising {
	color: gray;
}

#innerbox {
	margin-left: 100px;
}

#minor {
	margin-left: 600px;
	margin-top: -400px;
}

#minorimg {
	margin-left: 70px;
}

.form-group {
	width: 500px;
	margin-left: -10px;
}

#thumbnail {
	margin-top: 80px;
	margin-left: -85px;
}
#adInfo{

	margin-left:10px;

}
 .button1 {

	background-color: #13334A;
	padding: 10px 24px;
	color: white;
	border: none;
	border-radius: 7px;
	moz-border-radius: 7px;
	khtml-border-radius: 7px;
	webkit-border-radius: 7px;
}


</style>

</head>
<body>

	<jsp:include page="../common/mainBar.jsp"></jsp:include>




	<form action="insertVideoInfo.vd" method="post"
		enctype="multipart/form-data">
		<div class="mainpage">
			<br> <br> <br>
			<div class="container" style="margin-left:60px">
				<div class="progress" style="width: 950px;">
					<div class="progress-bar progress-bar-striped active"
						role="progressbar" aria-valuenow="40" aria-valuemin="0"
						aria-valuemax="100" style="width: 40%"></div>
				</div>
			</div>
			<button id="uploadbtn" class="button1" type="submit" >다음으로</button>	
			<div id="innerbox">
				
				<br>
				<div class="basicInfo">
					<div class="container" style="margin-left:10px;" >
						<div class="form-group" >
							<input type="text"  id="vTitle" name="vTitle"
								style="width: 400px" placeholder="동영상제목">
						</div>
						<div class="form-group">
						<textarea  rows="3" id="tag" name="tag"
								style="width: 400px" placeholder="태그(예:일상기록,여행,강아지,음식)"></textarea>
						</div>
					</div>
				<a><a>*</a>시청등급을 선택하세요</a> <br> <input type="checkbox" name="adultAut"
						value="Y"> 전체시청가능<br> <input type="checkbox"
						name="adultAut" value="N"> 19세 이상 시청가능<br> <br>
					
					<br> <input type="checkbox" name="adYn" value="Y">
					광고여부<br> 
					<a >광고여부 체크시 아래의 문구가 자동으로 기재됩니다<br>
						본 컨텐츠는 유료제품 추천, 후원, 보증과 같은 유료 광고 내용이 포함되어 있습니다</a> <br>
					<input type="text"   id="adInfo" name="adInfo"
						style="width: 400px" placeholder="광고정보"> <br> <br>
						
						
					<a><a>*</a>공개여부</a> <br> 
					<input type="checkbox" name="openTy" value="Y">전체공개<br>
					<input type="checkbox" name="openTy" value="N">비공개<br>
					<input type="checkbox" name="openTy" class="upload" value="U">게시 예정<br>
					<div style="margin-left:5%;" class="uploadVideo">
					   	<input type="date" id="start" name="uploadDate" min="2019-09-25" max="2019-10-31">
						<input type="text" name="uploadTime" placeholder="00:00"> 시에 게시하겠습니다.
					</div>
					<script>
					$(document).ready(function(){
						$(".uploadVideo").hide();
						
						var state = 0;
						$(".upload").click(function(){
							if(state == 0){
								$(".uploadVideo").show();
								state = 1;
							}else {
								$(".uploadVideo").hide();
								state = 0;
							}
						})
					});
					</script>
				</div>
				<br>
				<br> <a><a>*</a>썸네일이미지첨부</a> <input type="file" name="file2" value="file2" id="file2"/> 

				<div id="minor">
					<img id="minorimg" src="resources/images/family.png"
						style="width: 100px;"> <br> <a>동영상에 미성년자가 등장하는지
						살펴주세요<br> DailyLog에서의 아동 안전에 대한 정책과 <br>거주 지역의 모든 노동법
						의무를 준수해야합니다
					</a>
				</div>
			</div>
		</div>
	</form>

	<%-- 	<input type="text" value="${filepath}" id="filepath" name="filepath">
		<input type="text" value="${fileName}" id="fileName" name="fileName"> --%>

	<script>
		$(document).ready(function(){
			$("#uploadbtn").click(function(){
				var vTitile = $("#vTitile").val();
				var tag = $("#tag").val();
				var model = $("#model").val();
				var filepath = $("#filepath").val();
				var fileName = $("#fileName").val();
				var adInfo = $("#adInfo").val();
				var file2 = $("#file2").val();
				
				$.ajax({
					url:"insertVideoInfo.vd",
					type:"post",
					data:{titleName:titleName,videoTag:videoTag,model:model,filepath:filepath,fileName:fileName,adInfo:adInfo,
						file2:file2,'allView':lists},
						traditional:true,
					success:function(data){
						console.log("성공!");

					},
					error:function(data){
						console.log("실패!");
					}
				});

			});
			
			/*
			var message = "${msg}";
			var addUserNo = "${addUserNo}";
			var addvNo = "${addvNo}";
			
			if(message == addUserNo + addvNo){
				console.log(addUserNo + ";;;;;;" +addvNo)
				document.location.href="addInfo.vd?addUserNo="+addUserNo+"&addvNo="+addvNo;
			
			
			} */
			
		});
		
		
		
		
	</script>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
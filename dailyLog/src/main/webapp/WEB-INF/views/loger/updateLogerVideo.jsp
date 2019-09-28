<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<style type="text/css">
	.table-wrapper {
		width: 90%;
        padding: 20px;
       	margin-left:250px;
    }
    .selectVideo {
		width:90%;
		margin:0 auto;
	}
    .searchLogerVideoForm {
		width:90%;
		margin-top:50px;
		text-align:left;
	}
	.video_th {
		text-align:center;
	}

    .table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
    }
    .table-title h2 {
        margin: 6px 0 0;
        font-size: 22px;
    }
    .table-title .add-new {
        float: right;
		height: 30px;
		font-weight: bold;
		font-size: 12px;
		text-shadow: none;
		min-width: 100px;
		border-radius: 50px;
		line-height: 13px;
    }
	.table-title .add-new i {
		margin-right: 4px;
	}
    table.table {
        table-layout: fixed;
    }
    table.table tr th, table.table tr td {
 	   width:90%;
        border-color: #A8B7BC;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background:none;
    	border-color:#13334A;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table th:last-child {
        width: 100px;
    }
    table.table td a {
		cursor: pointer;
        display: inline-block;
        margin: 0 5px;
		min-width: 24px;
    }    
	table.table td a.add {
        color: #27C46B;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table td a.add i {
        font-size: 24px;
    	margin-right: -1px;
        position: relative;
        top: 3px;
    }    
    table.table .form-control {
    	width:90%;
        height: 32px;
        line-height: 32px;
        box-shadow: none;
        border-radius: 2px;
    }
	table.table .form-control.error {
		border-color: #f50000;
	}
	table.table td .add {
		display: none;
	}
	input[type=text] {
		border:none;
		border-right:0px; 
		border-top:0px; 
		boder-left:0px; 
		boder-bottom:0px;
		

	}
	
	.pagination {
        margin: 10px 0 5px;
    }
    .pagination li a {
        border: none;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 4px !important;
        text-align: center;
        padding: 0;
    }
    .pagination li a:hover {
        color: #666;
    }
    .pagination li.active a, .pagination li.active a.page-link {
        background: #59bdb3;
    }
    .pagination li.active a:hover {        
        background: #45aba0;
    }
    .pagination li:first-child a, .pagination li:last-child a {
        padding: 0 10px;
    }
    .pagination li.disabled a {
        color: #ccc;
    }
    .pagination li i {
        font-size: 17px;
        position: relative;
        top: 1px;
        margin: 0 2px;
    }
    
	
	.infobtn1 {
		margin-top:20px;
		margin-bottom:20px;
		width:100px;
		border:1px solid #13334A;
		border-radius:5px;
		background:#13334A;
		padding:8px;
		color:#FFF;
	}
	
	.infobtn2 {
		margin-top:20px;
		margin-bottom:20px;
		width:100px;
		border:1px solid #A8B7BC;
		border-radius:5px;
		background:#A8B7BC;
		padding:8px;
		color:#FFF;
	}
	.infobtn3 {
		width:65px;
		border:1px solid #A8B7BC;
		border-radius:5px;
		background:#A8B7BC;
		padding:8px;
		color:#FFF;
	}
	
	input:focus {outline:none;}
	
	.video_th {
		vertical-align:middle;
	}
	
	
/* 	
	.mainpage {
   width: 1600px;
   margin-top: 100px;
}

#uploadbtn {
   margin-top: 30px;
   margin-left: 900px;
} */

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

#adInfo {
   margin-left: 10px;
}

#map {
   height: 400px; !important;
   width: 500px; !important;
}

.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:80%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
</head>
<body>
<jsp:include page="../common/logerBar.jsp"></jsp:include>
    <div class="selectVideo">
    <form action="updateLogerVideo.lo" method="post" class="searchLogerVideoForm" enctype="multipart/form-data">
        <div class="table-wrapper">
            <div class="table-title" style="width:900px;">
                <div class="row">
                    <div class="col-sm-8"><h2>Loger Video <b>Edit</b></h2></div>
                    
                </div>
            </div>
			<div class="info_btn col-sm-7">
				<button type="button" class="infobtn1" id="basicInfoBtn">기본정보</button>
				<button type="button" class="infobtn2" id="addInfoBtn">추가정보</button>
			</div>
			<div class="col-sm-5">
				<button type="submit" id="uploadbtn" class="infobtn1">수정</button>
            </div>
            
            <div id="basicDiv">
            <table class="table table-striped" id="basicTable">
                <tbody>
                	<c:forEach items="${vList}" var="v">
							 <input type="hidden" id="vNo" name="vNo" value="${v.vNo}"/>
							 <input type="hidden" id="userNo" name="userNo" value="${v.userNo}"/>
                    <tr>
                		<td style="vertical-align:middle"><video id='my-video' class='video-js' width="500px;"
							height="300px;" controls loop poster='resources/uploadFiles/${v.afileNm}'
							onclick="location.href='video.vd?userNo=${v.userNo}&vNo=${v.vNo}'">
							 <source src="resources/uploadFiles/${v.fileNm}" type='video/mp4'></video>
						</td>
                    </tr>
                    <tr>
                    	<td><p><b>영상 제목</b></p>
                    	<b><input type="text" class="video_td" id="vTitle" name="vTitle" placeholder="동영상제목" value="${v.vTitle}" 
						onfocus="this.select()" style="border:none;background:transparent;font-size:20px;"></b>
                    	</td>
                    </tr>
                    <tr>
                    	<td><p><b>태그</b></p><input type="text" class="video_td" id="tag" name="tag" style="width:400px;border:none;background:transparent;" 
                    	placeholder="태그(예:#일상기록 #여행 #강아지 #음식)" value="${v.tag}" onfocus="this.select()"></td>
                    </tr>
                    <tr>
                    	<td>
                    		<div style="float:right; width:40%;"><p><b>정보보호여부</b></p>
                    		<input type="checkbox" id="openY" name="openTy" value="Y">전체공개<br>
							<input type="checkbox" id="openN" name="openTy" value="N">비공개<br>
                    		</div>
                    		<div style="float:right; width:60%;"><p><b>시청등급을 선택하세요</b></p>
                    		<input type="checkbox" class="video_td" id="allArea" name="adultAut" value="Y"> 전체 시청 가능<br>
                    		<input type="checkbox" class="video_td" id="adultArea" name="adultAut" value="N"> 19세 이상 시청 가능</div>
                    	</td>
                    </tr>
                    <tr>
                    	<td>
                    		<div style="float:right; width:40%;">
 		                   		<p><b>썸네일 변경</b></p> <input type="file" name="file2" value="file2" id="file2"/>
                    		</div>                    	
	                    	
	                    	<div style="float:right; width:60%;">
		                    	<p><b>광고 여부</b></p>
	                    		<p>광고 여부 체크 시 아래의 문구가 자동으로 기재됩니다.<br>
	                    		본 컨텐츠는 유료 제품 추천, 후원, 보증과 같은 유료 광고 내용이 포함되어 있습니다.</p>
	                    		<input type="checkbox" class="video_td" id="adYn" name="adYn"> 영상 내 유료 ppl 포함<br>
	                    		<input type="text" class="video_td" id="adInfo" placeholder="내용을 입력해주세요" name="adInfo"
	                    		value="${v.adInfo}" style="border: none; background: transparent;" onfocus="this.select()">
	                    	</div>
                    	</td>
                    </tr>
                    
                    </c:forEach>
                </tbody>
            </table><br><br><br><br><br><br><br><br><br><br><br><br>
         </div>
             
              <div id="addDiv" style="display:none;">
              <table>
              <tbody>
          	<c:forEach items="${vList}" var="v">
          	<c:if test="${!empty v.apNm}">
               <tr>
              	<td>
              	<input type="text" class="video_td" id="apNm" name="apNm" value="상호명 : ${v.apNm}" 
					onfocus="this.select()" style="border:none;background:transparent;font-size:20px;">
					<input type="text" class="video_td" id="apAd" name="apAd" value="주소 : ${v.apAd}" 
					onfocus="this.select()" style="border:none;background:transparent;font-size:20px;">
              	<button type="button" class="infobtn3" onclick="delectPlace();">삭제</button>
              	</td>
              </tr>
              </c:if>
              
              <c:if test="${empty v.apNm}">
              		<p>입력하신 추가 정보가 없습니다</p>
              </c:if>
              </c:forEach></tbody></table></div>
        </form>
    </div>     
    
   <p id="result"></p>
 	
   <div class="container">
   <!-- <button id="addInfo" class="btn btn-primary" name="addInfo" style="margin-top:-75px; margin-left:860px;" >저장하기</button> -->
</div>

<div class="map_wrap" style="margin:0 auto;/* display:none; */">
   <div class="row" style="margin:0 auto;">
    <div id="map" style="width:80%;height:500px;position:relative;overflow:hidden;margin-left:60px;"></div>

    <div id="menu_wrap" class="bg_white" style="margin-left:65px;">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;">
                    키워드 : <input type="text" id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
    </div>
</div>
<br><br><br>
<div id="info" style="margin-left:120px;"><!-- style="display:none;"> -->
</div>
<textarea cols="120" rows="10" id="inputAdd" name="inputAdd" 
style="resize:none; width:60%; margin-left:230px; border:none;" placeholder="상세정보를 작성해주세요"></textarea>
<!-- <div>
<button type="button" name="mvHomeCh" id="mvHomeCh" onclick="move();" 
style="margin-top:600px; margin-left:530px; font-size: medium; background: #13334A; color: white; height:40px;">업로드하기 </button>
</div> -->
<jsp:include page="../common/footer.jsp"></jsp:include>   
    <script>

    $(function(){
    	var adultAut = '${adultAut}';
    	var adYn = '${adYn}';
    	var openTy = '${openTy}';
    	
    	function delectPlace(){
    		var vNo = $("#vNo").val();
    		var apNm = $("#apNm").val();
    		var apAd = $("#apAd").val();
    		
    		$.ajax({
 				url:"deleteAddInfo.lo",
 				type:"post",
 				data:{"vNo":vNo, "apNm":apNm, "apAd":apAd},
 				success:function(data){
 					console.log("성공!");
     				$("#apNm").hide();
     				$("#apAd").hide();
 				},
 				error:function(data){
 					console.log("실패!");
 				}
 			});
    	}
    	
    	if(openTy == "Y"){
    		$("input:checkbox[id='openY']").prop("checked", true);
    		$("input:checkbox[id='openN']").prop("checked",false);
    	}else{
    		$("input:checkbox[id='openN']").prop("checked",true);
    		$("input:checkbox[id='openY']").prop("checked", false);
    	}
    	
    	if(adultAut == "Y"){
    		$("input:checkbox[id='allArea']").prop("checked", true);
    		$("input:checkbox[id='adultArea']").prop("checked",false);
    	}else{
    		$("input:checkbox[id='adultArea']").prop("checked",true);
    		$("input:checkbox[id='allArea']").prop("checked", false);
    	}
    	
    	if(adYn == "Y"){
    		$("input:checkbox[id='adYn']").prop("checked", true);
    	}else{
    		$("input:checkbox[id='adYn']").prop("checked", false);
    	}
    	
    	/*   if(openTY == "Y"){
    		$("#selectOpen option:eq(0)").prop("selected", true);
    		 $("#openY").prop("selected", true); 
    	}else{
    		$("#selectOpen option:eq(1)").prop("selected", false);
    		 $("#openN").prop("selected", false);
    	} 
    	 */ 
    	 
    	 $("#basicInfoBtn").click(function(){
    		 var vNo = $("#vNo").val();
    		 console.log(vNo);
    		 $.ajax({
 				url:"selectLogerVideo.lo",
 				type:"post",
 				data:{"vNo":vNo},
 				success:function(data){
 					console.log("성공!");
     				$("#addDiv").hide();
     				$("#basicDiv").show();
 				},
 				error:function(data){
 					console.log("실패!");
 				}
 			});
    		 
    	 });
    	 

		$("#addInfoBtn").click(function(){
			var vTitle = $("#vTitle").val();
			var tag = $("#tag").val();
			var vNo = $("#vNo").val();
			var openY = $("#openY").val();
			var openN = $("#openN").val();
			var allArea = $("#allArea").val();
			var adultArea = $("#adultArea").val();
			var adYn = $("#adYn").val();
			var adInfo = $("#adInfo").val();
			var file2 = $("#file2").val();
			
			$.ajax({
				url:"addVideoUpdate.lo",
				type:"post",
				success:function(data){
					console.log("성공!");
    				$("#basicDiv").hide();
    				$("#addDiv").show();
    				/* $(".map_wrap").show();
    				$("#info").show(); */
				},
				error:function(data){
					console.log("실패!");
				}
			});

		});
		
    	 
    	 
    	
    });
    
    </script>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1bbe6319293d273f5cc3cd430eba39d2&libraries=services"></script>
<script>
// 마커를 담을 배열입니다
var markers = [];


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.499012, 127.032869), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;
       
      

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        //alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination,place) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);
      
        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {
    
    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
     
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {
 
        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
       
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);
        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, places ) {
            kakao.maps.event.addListener(marker, 'click', function() {
               console.log(places.y+","+places.x+","+places.place_name+","+places.road_address_name );
                
               var message ="<ul> <li>"+places.place_name+"<button>X</button></li> </ul>";
               
               
               document.getElementById('info').innerHTML +=message;
                
                var userNo = $("#userNo").val();
              	var vNo = $("#vNo").val();
              	var apXY = places.y+","+places.x;
              	var apNm = places.place_name;
              	var apAd = places.road_address_name;
              	
              	$.ajax({
              		url:"insertaddPlace.vd",
              		type:"post",
              		data:{userNo:userNo,vNo:vNo,apXY:apXY,apNm:apNm,apAd:apAd},
              		success:function(data){
              			console.log("장소정보 성공!");
              		},
              		error:function(data){
              			console.log("장소정보 실패!");
              		}
              	});
              	

                
            });

            kakao.maps.event.addListener(marker, 'click', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
               displayInfowindow(marker, places);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i]);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {
   //console.log(places.y+"places1221");
    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';
               /*  console.log("places.place.y"+places.y);
                console.log("places.place.y"+places.x); */
                
                
    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'+
         '  <span class="x">' + places.x  + '</span>' +
         '  <span class="y">' + places.y  + '</span>' ; 
        
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    
    el.className = 'item';
   
    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
 


//지도에 클릭 이벤트를 등록합니다
//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
/* kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
 
 // 클릭한 위도, 경도 정보를 가져옵니다 
 var latlng = mouseEvent.latLng;
 
 var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
 message += '경도는 ' + latlng.getLng() + ' 입니다';
 
 var resultDiv = document.getElementById('result'); 
 resultDiv.innerHTML = message;
 
}); */

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);
    
 

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
            
            var content = '<div class="bAddr">' +
                            '<span class="title">법정동 주소정보</span>' + 
                            detailAddr + 
                        '</div>';

            // 마커를 클릭한 위치에 표시합니다 
            marker.setPosition(mouseEvent.latLng);
            marker.setMap(map);

            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
          infowindow.setContent(content);
            infowindow.open(map, marker);
        }   
    });
});

// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                infoDiv.innerHTML =result[i].x;
                infoDiv.innerHTML =result[i].y;
              
                break;
            }
        }
    }    
}

$("#addInfo").click(function(){
	var userNo = "${addUserNo}";
	var vNo = "${addvNo}";
	var addCt = $("#inputAdd").val();
	
	console.log(addCt);
	
	$.ajax({
		url:"addInfo.vd",
		type:"post",
		data:{userNo:userNo,vNo:vNo,addCt:addCt},
		success:function(data){
			console.log("성공! ");
			
			//document.loaction.href="loginbutton.me";
			
		},
		error:function(data){
			console.log("실패!");
		}
	});
});

//var message = "${msg}";

///newHomeChannel.lo?userNo="+userNo;
var userNo = "${addUserNo}";
//var addvNo = "${addvNo}";

console.log("addinfo"+addUserNo + ";;;;;;" +addvNo)

function move(){
	alert("동영상 업로드에 성공하셨습니다. ");
	location.href="newHomeChannel.lo?userNo="+userNo;
}
</script>
    
</body>
</html>
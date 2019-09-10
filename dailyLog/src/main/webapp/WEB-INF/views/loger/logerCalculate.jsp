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
<title>Bootstrap Simple Data Table</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style type="text/css">
    body {
        color: #666;
        background: #f5f5f5;
		font-family: 'Roboto', sans-serif;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
        text-align:center;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
    	width:700px;
	/* text-align:center; */
		margin-bottom:100px;
	}
	.selectSupport {
		width:700px;
		margin-left:30px;
	}
	.selectLogerCalculateForm {
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
		margin-bottom:50px;
		width:700px;
	}
	.selectLogerNotice {
	width:230px;
	height:150px; 
	float:right; 
	margin-right:35px;
	text-align:center;
}
    .table-wrapper {
        background: #fff;
        padding: 20px;
        margin: 30px 0;
        /* box-shadow: 0 1px 1px rgba(0,0,0,.05); */
    }
    
    .cal_btn {
	margin-top:20px;
}

#calculateBtn {
	float:right;
	/* margin-left:210px; */
}

/* #calculateBtn {
	margin-top:50px;
	border:1px solid black;
	margin-left:330px;
	background:#F6F6F7;
	padding:5px;
} */

.selectAccount {
	margin-top:20px;
	border:none;
	background:#FFF;
}


/* button */
.btn, .btn-two {
   margin: 9px;
}
.btn-gradient {
   margin: 5px;
}
a[class*="btn"] {text-decoration: none;}
input[class*="btn"], 
button[class*="btn"] {border: 0;}

/* Here you can change the button sizes */
.btn.large, 
.btn-two.large, 
.btn-effect.large {
  font-size: 22px;
}
.btn.small, 
.btn-two.small, 
.btn-gradient.small, 
.btn-effect.small {
  font-size: 14px;
}
.btn.mini, 
.btn-two.mini, 
.btn-gradient.mini, 
.btn-effect.mini {
  font-size: 12px;
}
.btn.block, 
.btn-two.block, 
.btn-gradient.block, 
.btn-effect.block {
  display: block;
  width: 60%;
  margin-left: auto;
  margin-right: auto;
  text-align: center !important;
}
.btn-gradient.large {
  font-size: 22px;
}

/* Colors for .btn and .btn-two */
.btn.blue, .btn-two.blue     {background-color: #7fb1bf;}
.btn.yellow, .btn-two.yellow {background-color: #f0d264;}

.rounded {
  border-radius: 10px;
}

/* default button style */
.btn {
   position: relative;
   border: 0;
   display: inline-block;
   text-align: center !important;
   color: white;
}
.btn:active {
   top: 4px;   
}

/* color classes for .btn */
.btn.blue {box-shadow: 0px 4px #74a3b0;}
.btn.blue:active {box-shadow: 0 0 #74a3b0; background-color: #709CA8;}
.btn.yellow {box-shadow:0px 4px 0px #D1B757;}
.btn.yellow:active {box-shadow: 0 0 #ff4c4b; background-color: #D6BB59;}

/* Button two - I have no creativity for names */
.btn-two {
   color: white;   
   display: inline-block;
   border: 1px solid rgba(0,0,0,0.21);
   border-bottom-color: rgba(0,0,0,0.34);
   text-shadow:0 1px 0 rgba(0,0,0,0.15);
   box-shadow: 0 1px 0 rgba(255,255,255,0.34) inset, 
                  0 2px 0 -1px rgba(0,0,0,0.13), 
                  0 3px 0 -1px rgba(0,0,0,0.08), 
                  0 3px 13px -1px rgba(0,0,0,0.21);
}
.btn-two:active {
   top: 1px;
   border-color: rgba(0,0,0,0.34) rgba(0,0,0,0.21) rgba(0,0,0,0.21);
   box-shadow: 0 1px 0 rgba(255,255,255,0.89),0 1px rgba(0,0,0,0.05) inset;
   position: relative;
}
/* 3D Button */
.btn-3d {
   position: relative;
   display: inline-block;
   font-size: 22px;
   color: white !important;
   margin: 20px 10px 10px;
   border-radius: 6px;
   text-align: center !important;
   transition: top .01s linear;
   text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-3d.yellow:hover {background-color: #F0D264;}
.btn-3d.blue:hover   {background-color: #699DD1;}
.btn-3d:active {
   top: 9px;
}

/* 3D button colors */
.btn-3d.yellow {
   background-color: #F0D264;
   box-shadow: 0 0 0 1px #F0D264 inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 8px 0 0 rgba(196, 172, 83, .7),
            0 8px 0 1px rgba(0,0,0,.4),
            0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.yellow:active {
   box-shadow: 0 0 0 1px #F0D264 inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 0 0 1px rgba(0,0,0,0.4);
}
.btn-3d.blue {
   background-color: #6DA2D9;
   box-shadow: 0 0 0 1px #6698cb inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 8px 0 0 rgba(110, 164, 219, .7),
            0 8px 0 1px rgba(0,0,0,.4),
            0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.blue:active {
   box-shadow: 0 0 0 1px #6191C2 inset,
            0 0 0 2px rgba(255,255,255,0.15) inset,
            0 0 0 1px rgba(0,0,0,0.4);
}
/* Gradient buttons */
.btn-gradient {
   text-decoration: none;
   color: white !important;
   padding: 7px 15px !important; /* css버튼 크기 */
   display: inline-block;
   position: relative;
   border: 1px solid rgba(0,0,0,0.21);
   border-bottom: 4px solid rgba(0,0,0,0.21);
   border-radius: 4px;
   text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-gradient.blue {
   background: rgba(102,152,203,1);
   background: -moz-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(102,152,203,1)), color-stop(100%, rgba(92,138,184,1)));
   background: -webkit-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: -o-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: -ms-linear-gradient(top, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   background: linear-gradient(to bottom, rgba(102,152,203,1) 0%, rgba(92,138,184,1) 100%);
   filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6698cb', endColorstr='#5c8ab8', GradientType=0 );
}
.btn-gradient.yellow {
   background: rgba(240,210,100,1);
   background: -webkit-gradient(linear, 0 0, 0 100%, from(rgba(240,210,100,1)), to(rgba(229,201,96,1)));
   background: -webkit-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   background: -moz-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   background: -o-linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   background: linear-gradient(rgba(240,210,100,1) 0%, rgba(229,201,96,1) 100%);
   filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f0d264', endColorstr='#e5c960', GradientType=0 );
}

.btn-gradient.yellow:active {background: #DBC05B;}
.btn-gradient.blue:active    {background: #608FBF;}   
</style>
</head>
<body>
<jsp:include page="../common/logerBar.jsp"></jsp:include>
<div class="selectLogerNotice">
		<h3>정산 공지</h3><br>
		<p style="font-size:14px;">회원님이 신고를 많이 받을 경우<br>블랙리스트가 되었을 경우에는<br>정산을 받을 수 없으므로<br>이를 유의해 주시기를 바랍니다.</p>
		<p style="color:red; font-size:12px;">*자세한 내용은 공지사항을 참고해 주세요</p>
	</div>
    <div class="selectSupport">
    <form action="" method="" class="selectLogerCalculateForm" float="left;">
        <div class="table-wrapper">
   
            <table class="table table-striped table-support">
            <tr><h4><b>후원내역</b></h4></tr>
            <tr><br></tr>
                <thead>
                    <tr>
                        <th class="calculate_th">No</th>
						<th class="calculate_th">구분</th>
						<th class="calculate_th">후원자</th>
						<th class="calculate_th">후원금액</th>
						<th class="calculate_th">후원날짜</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${sList}" var="s">
                    <tr>
                        <td><c:out value="${s.nNo}"/></td>
						<td><c:out value="${s.supTY}"/></td>
						<td><c:out value="${s.nickname}"/></td>
						<td><fmt:formatNumber value="${s.supPrice}" pattern="#,###,###,###" />
						</td>
						<td>${fn:substring(s.supDT,0,10)}</td> 
                    </tr>
                    </c:forEach>
                    
                </tbody>
            </table><br><br>
            
            <table class="table table-striped table-calculate">
            <tr><h4><b>정산내역</b></h4></tr>
            <tr><br></tr>
                <thead>
                    <tr>
                        <th class="calculate_th">No</th>
						<th class="calculate_th">신청일자</th>
						<th class="calculate_th">정산금액</th>
						<th class="calculate_th">정산상태</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cList}" var="c">
                    <tr>
                        <td>${c.nNo}</td>
						<td><c:out value="${c.calSTDT}"/></td>
						<td><fmt:formatNumber value="${c.calPrice}" pattern="#,###,###,###" /></td>
						<td>${c.calTY}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div id="pagingArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
			<!-- 1페이지 이상의 페이지일 시 -->
				<c:url var="blistBack" value="/selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
				</c:url>
				<a href="${ blistBack }">[이전]</a>&nbsp;
			</c:if>
			
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<!-- 현재 페이지와 일치하면 -->
				<c:if test="${ p eq pi.currentPage }">
					<font color="red" size="4"><b>[${ p }]</b></font>
				</c:if>
				<!-- 현재 페이지와 일치하지 않으면 -->
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="selectList.bo">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			</c:forEach>
			
			
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				<a href="${ blistEnd }"> [다음]</a>
			</c:if>
			<c:if test="${ pi.currentPage >= pi.maxPage}">
				&nbsp; [다음]
			</c:if>
		</div>

            <div class="calculateBtn">
			<b><input type="text" class="selectAccount" value="현재 계좌" style="width:70px;"></b>
			<c:forEach items="${aList}" var="c">
			<c:if test="${!empty c.account}">
			<input type="text" class="selectAccount" value="${c.bankNm}" style="width:70px;">
			<input type="text" class="selectAccount" value="${c.account}" style="width:130px;">
			<input type="text" class="selectAccount" value="${c.accNm}" style="width:50px;"> 
			

			<button class="cal_btn btn-gradient yellow mini" id="accountBtn" onclick="accountApi()" style="font-size:13px;">계좌변경</button>
			<button type="button" class="cal_btn btn-gradient yellow mini" id="calculateBtn" onclick="selectSupport();" style="font-size:13px; margin-top:16px;">정산신청</button>
			</c:if>
			<c:if test="${empty c.account}">
			<button class="btn-gradient yellow mini" id="calculateBtn" onclick="accountApi()" style="font-size:13px;">계좌인증</button>
			</c:if>
			</c:forEach>
		</div>
        </div>
        </form>
    </div>  
    <script>
        function accountApi(){
        	window.open('accountApi.lo', "", "width=550, height=350, top=50, left=50");
        }
        
		function selectSupport(){
			location.href="selectSupport.lo";
		}        
        $(function(){
			//onload function안에
			$("#boardArea").find("td").mouseenter(function(){
				//마우스가 올라갈 때
				$(this).parents("tr").css({"background":"pink", "cursor":"pointer"});
				
			}).mouseout(function(){
				//마우스가 떠났을 때
				$(this).parents("tr").css({"background":"white"});
				
			}).click(function(){
				//클릭일 때
				var bid = $(this).parents().children("td").eq(0).text();
				
				console.log(bid);
				location.href = "selectOne.bo?bid=" + bid;
			});
		});
       </script>
    <jsp:include page="../common/footer.jsp"></jsp:include>   
</body>
</html>
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
    table.table tr th, table.table tr td {
        border-color:#A8B7BC;
        text-align:center;
        margin:0 auto;
        
    }
    
    table.table-striped tbody tr:nth-of-type(odd) {
    	background:none;
    	width:100%;
    	margin:0 auto;
	/* text-align:center; */
		margin-bottom:100px;
	}
	.selectSupport {
		width:80%;
		margin-left:30px;
	}
	.selectLogerCalculateForm {
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
		margin-bottom:50px;
		width:80%;
	}
	.selectLogerNotice {
	width:230px;
	height:150px; 
	float:right; 
	margin-right:150px;
	text-align:center;
}
    .table-wrapper {
        padding: 20px;
        margin: 30px 0;
    }
    
    .cal_btn {
	margin-top:20px;
}

#calculateBtn {
	float:right;
}

 #calculateBtn {
 	width:100px;
	margin-top:50px;
	border:1px solid #13334A;
	border-radius:5px;
	margin-left:330px;
	background:#13334A;
	padding:8px;
	color:#FFF;
} 

#accountBtn {
	width:100px;
	border:1px solid #13334A;
	border-radius:5px;
	background:#13334A;
	padding:8px;
	color:#FFF;
	margin-left:10px;
}

.selectAccount {
	margin-top:20px;
	border:none;
	background-color:transparent;
	align:left;
	margin-bottom:10px;
	font-size:16px;
}

input:focus {outline:none;}




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
						<td>${fn:substring(s.supSTDT,0,10)}</td> 
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
			<b><input type="text" class="selectAccount" value="현재 계좌" style="width:80px;"></b>
			<c:forEach items="${aList}" var="c">
			<c:if test="${!empty c.account}">
			<input type="text" class="selectAccount" value="${c.bankNm}" style="width:80px;">
			<input type="text" class="selectAccount" value="${c.account}" style="width:140px;">
			<input type="text" class="selectAccount" value="${c.accNm}" style="width:60px;"> 
			

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
    var message = '${msg}';
    if(message == "정산 신청이 완료되셨습니다."){
		 alert(message); 
		/* /* $("#myModal"); */
		/* alert($("#myModal")); */
		window.document.write($("#myModal"));
		/* window.open.document.getElementById("#myModal");
		window.open("", "PopupWin", "width=500,height=600"); */ */

    	
    }
    
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
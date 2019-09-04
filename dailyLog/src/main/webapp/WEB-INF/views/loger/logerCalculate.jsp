<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	border:1px solid black;
	background:#FFF;
	padding:5px;
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
						<td><fmt:formatNumber value="${s.supPrice}" pattern="#,###,###,###" /></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${s.supDT}"/></td> 
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
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${c.calSTDT}"/></td>
						<td><fmt:formatNumber value="${c.calPrice}" pattern="#,###,###,###" /></td>
						<td>${c.calTY}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            
            
            <div class="text-center">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled"><a href="#"><i class="fa fa-long-arrow-left"></i> Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next <i class="fa fa-long-arrow-right"></i></a></li>
                </ul>
            </div>
            
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
			<input type="text" class="selectAccount" value="${c.bankNm}" style="width:70px;">
			<input type="text" class="selectAccount" value="${c.account}" style="width:130px;">
			<input type="text" class="selectAccount" value="${c.accNm}" style="width:50px;"> 
			</c:forEach>
			<input type="button" class="cal_btn" id="accountBtn" value="계좌변경" onclick="accountApi()">
			<input type="submit" class="cal_btn" id="calculateBtn" value="정산신청" onclick="accountApi()">
		</div>
        </div>
        </form>
    </div>  
    <script>
        function accountApi(){
        	window.open('accountApi.lo', "", "width=700, height=300, top=50, left=50");
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
        text-align:center;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background:none;
	}
    .table-wrapper {
    	
    	width:800px;
        padding: 20px;
        margin: 30px 0;
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
	.selectNoticeQuestion {
		margin-top:50px;
		margin-left:100px;
		width:1000px;
		margin-bottom:50px;
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
		background: #192466; /* #73bb2b 원래 색 */
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
		background: #FBC52C; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title4 {
		margin: 1rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title4::after {
		content: "";
		width: 95px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #FBC52C; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title5 {
		margin: 1rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title5::after {
		content: "";
		width: 65px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	} 
	.page-title6 {
		margin: 1rem 0 3rem 1rem;
		font-family: 'Varela Round', sans-serif;
		position: relative;
	}
	.page-title6::after {
		content: "";
		width: 91px;
		position: absolute;
		height: 3px;
		border-radius: 1px;
		background: #FBC52C; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	 
</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>
<div class="selectNoticeQuestion">
		<div class="col-lg-15">
			<a href="noticeMain.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title1">FAQs</h1></a> 
			<a href="noticeList.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title2">Notice</h1></a>
			<a href="noticeEmail.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title3">question</h1></a>
			</div>
			<div class="">
			
			
			<a href="selectNoticeQuestion.no" class="noticeLink" style="float:right; width:40%;"><h4 class="page-title4">나의 문의내역</h4></a>
			<a href="noticeChattingQuestion.no" class="noticeLink" style="float:right; width:15%;"><h4 class="page-title5">1:1문의</h4></a>
			<a href="noticeEmail.no" class="noticeLink" style="float:right;width:15%;"><h4 class="page-title6">이메일 문의</h4></a>
			
			</div>
		<div class="table-wrapper">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>회원명</th>
                        <th>제목</th>
                        <th>문의 날짜</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
	                <c:forEach items="${cList}" var="c">
                    <tr id="test" onclick="chatResult(${c.chatNo},${c.userNo});">
                        <td><c:out value="${c.nNo}"/></td>
                        <td><c:out value="${c.userNm}"/></td>
                        <td><c:out value="${c.qTitle}"/></td>
                        <td><c:out value="${fn:substring(c.chatDt,0,10)}"/></td>
                        <td><c:out value="${c.status}"/></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
			</div></div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script>
$(function(){
	
	function chatResult(chatNo, userNo){
		var chatNo = chatNo;
		var userNo = userNo;
		
		console.log(chatNo);
		console.log(userNo);
		
		$.ajax({
			url:"goUserChatList.no",
			type:"post",
			data:{userNo:userNo, chatNo:chatNo},
			success:function(data){
				console.log("성공인가");
				/* $(".noticeList").hide();
				$(".chatForm").show();  */
			},
			error:function(data){
				console.log("제발");
			}
			
		});
		
		
	}
});

</script>
</html>
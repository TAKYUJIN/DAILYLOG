<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WITH</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Patua+One">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">    
    .contact-form {
        padding: 10px;
        margin: 10px 0;
    }
    .contact-form h1 {
        color: black;
         margin: 0 0 15px;
    }
    .contact-form .form-control, .contact-form .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .contact-form .form-control:focus {
        border-color: #19bc9d;
    }
    .contact-form .btn-primary {
        color: #fff;
        min-width: 150px;
        font-size: 16px;
        background: #19bc9d;
        border: none;
    }
    .contact-form .btn-primary:hover {
        background: #15a487; 
    }
    .contact-form .btn i {
        margin-right: 5px;
    }
    .contact-form label {
        opacity: 0.7;
    }
    .contact-form textarea {
        resize: vertical;
    }
    .hint-text {
        font-size: 15px;
        padding-bottom: 20px;
        opacity: 0.6;
    }
    .noticeEmail {
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
		background: #192466; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
	
	.page-title5 {
		margin: 1rem 0 2rem 1rem;
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
	.table-wrapper {
    	
    	width:800px;
        padding: 20px;
        margin: 30px 0;
    }
</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>
<div class="noticeEmail">
<div class="col-lg-15">
			<a href="noticeMain.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title1">FAQs</h1></a> 
			<a href="noticeList.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title2">Notice</h1></a>
			<a href="noticeEmail.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title3">question</h1></a>
			</div>
			<div>
			<a href="selectNoticeQuestion.no" class="noticeLink" style="float:right; width:36%;"><h4 class="page-title4">나의 문의내역</h4></a>
			
			<a href="noticeChattingQuestion.no" class="noticeLink" style="float:right; width:12%;"><h4 class="page-title5">1:1문의</h4></a>
			<a href="noticeEmail.no" class="noticeLink" style="float:right;width:15%;"><h4 class="page-title6">이메일 문의</h4></a>
			
			</div>
			<div class="table-wrapper">
    <div class="row">
        <div class="col-md-10 col-md-offset-1 m-auto">
            <div class="contact-form">
                <h1>이메일 문의</h1>
                <p class="hint-text">관리자에게 문의를 남겨 주세요.</p>       
                <form action="noticeEmailsending.no" method="post">
                    <div class="row">
                    </div>            
                    <div class="form-group">
                        <label for="inputSubject">문의 제목</label>
                         <input type="hidden" class="form-control" id="userId" name="userId" value="${loginUser.userId}" required>
                         <input type="hidden" class="form-control" id="tomail" name="tomail" value="with.dailylog@gmail.com" required>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>
                    <div class="form-group">
                        <label for="inputMessage">문의 내용</label>
                        <textarea class="form-control" id="content" name="content"rows="5" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"></i> Send</button>
                </form>
            </div>
        </div>
    </div></div>
 </div>
<jsp:include page="../common/footer.jsp" />
</body>
</html>                            
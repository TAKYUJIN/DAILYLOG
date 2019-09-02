<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
        color: #666;
        background: #f5f5f5;
		font-family: 'Roboto', sans-serif;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
    .table-wrapper {
    	width:800px;
        background: #fff;
        padding: 20px;
        margin: 30px 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
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
	.noticeEmailQuestion {
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
		background: #FBC52C; /* #73bb2b 원래 색 */
		left: 0;
		bottom: -15px;
	}
</style>
</head>
<body>
<jsp:include page="../common/mainBar.jsp"></jsp:include>
<div class="noticeEmailQuestion">
		<div class="col-lg-15">
			<a href="noticeMain.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title1">FAQs</h1></a> 
			<a href="noticeList.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title2">Notice</h1></a>
			<a href="noticeQuestion.no" class="noticeLink" style="float:left; width:25%;"><h1 class="page-title3">question</h1></a>
			</div>
			<div class="">
			<a href="noticeQuestion.no" class="noticeLink" style="float:right; width:40%;"><h4 class="page-title4">나의 문의내역</h4></a>
			<a href="noticeQuestion.no" class="noticeLink" style="float:right; width:15%;"><h4 class="page-title5">1:1문의</h4></a>
			</div>
		<div class="table-wrapper">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Pin Code</th>
                        <th>Country</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Thomas Hardy</td>
                        <td>89 Chiaroscuro Rd.</td>
                        <td>Portland</td>
                        <td>97219</td>
                        <td>USA</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Maria Anders</td>
                        <td>Obere Str. 57</td>
                        <td>Berlin</td>
                        <td>12209</td>
                        <td>Germany</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Fran Wilson</td>
                        <td>C/ Araquil, 67</td>
                        <td>Madrid</td>
                        <td>28023</td>
                        <td>Spain</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Dominique Perrier</td>
                        <td>25, rue Lauriston</td>
                        <td>Paris</td>
                        <td>75016</td>
                        <td>France</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Martin Blank</td>
                        <td>Via Monte Bianco 34</td>
                        <td>Turin</td>
                        <td>10100</td>
                        <td>Italy</td>
                    </tr>        
                </tbody>
            </table>
			</div></div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
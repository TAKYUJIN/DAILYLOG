<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body{
weight:100%;
height:100%;
}
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
} 
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

</style>
</head>
<body>
<table class="type09">
    <thead>
    <tr>
        <th scope="cols">번호</th>
        <th scope="cols">채널이름</th>
        <th scope="cols">아이디(=이메일)</th>
        <th scope="cols">등급코드(로거/회원)</th>
        <th scope="cols">가입일자</th>
        <th scope="cols">탈퇴여부</th>
        
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>은주네 쿠킹교실</td>
        <td>user1@gmail.com</td>
        <td>로거.</td>
        <td>2019.08.14.</td>
                <td>N</td>
        
    </tr>
    <tr>
        <th scope="row">1</th>
        <td>은주네 쿠킹교실</td>
        <td>user1@gmail.com</td>
        <td>로거.</td>
        <td>2019.08.14.</td>
                <td>N</td>
    </tr>
     
    </tbody>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WITH</title><link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
   
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		margin: 20px;
		    height:100%;
		      background-color: #f8f8f8;
	}
.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
      height:100%;
 /*  font-family: verdana;
  font-style: italic; */
}
 
 
 
 #daily a{
 width:100px;
  padding-top:10px; 
  padding-left:10px; 
  color:black;
  text-decoration:none;
 }
 #daily  {
 width:200px;
  padding-top:5px; 
  padding-left:10px; 
  color:black;
  text-decoration:none;
 }
  #daily a:hover{
 width:200px;
  padding-top:10px; 
    padding-left:10px; 
  
  color:black;
  text-decoration:none;
 }
 
 
 
/* body , html{
    padding: 0;
    background: #262626;
    font-family: 'Chakra Petch', sans-serif;
}
*,*:before,*after{
    box-sizing: inherit;
    margin:0;
    padding: 0;
} */
.mid{
    display: flex;
    align-items: center;
    justify-content: center;
    height: 85vh;
}
.rocker{
margin-left: 5px;
    vertical-align: initial;
    margin-bottom: -10px;
    display: inline-block;
    position: relative;
    font-size: 1em;
    font-weight: bold;
    text-align: center;
    color: #888;
    /* width: 7em; */
    height: 4.2em;
    overflow: hidden;
    border-bottom: 0.4em solid #eee;
}
.rocker::before{
    content: "";
    position: absolute;
    top:1em;
    left: 0;
    right: 0;
    bottom: 0;
    background: #999;
    border: 0.5em solid #eee;
    border-bottom: 0;
}
.rocker input{
    -webkit-appearance:none;
    width: 0;
    height: 0;
}
.switch-left,
.switch-right{
    cursor: pointer;
    position: absolute;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 2.5em;
    width: 3em;
    transition: .2s;
}
.switch-left{
    height: 2.4em;
    width: 2.75em;
    left: 0.85em;
    bottom: 0.4em;
    background: #ddd;
    transform: rotate(15deg) skewX(15deg);
}
.switch-right{
    right: 0.5em;
    bottom: 0;
    background: #bd5757;
    color: #fff;
}
.switch-left::before,
.switch-right::before{
    content: "";
    position: absolute;
    width: 0.4em;
    height: 2.45em;
    bottom: -0.45em;
    background: #ccc;
    transform: skewY(-65deg);
}
.switch-left::before {
  left: -0.4em;
}
.switch-right::before {
  right: -0.375em;
  background-color: transparent;
  transform: skewY(65deg);
}
input:checked + .switch-left{
    background: #0084d0;
    color: #fff;
    bottom: 0px;
    left:0.5em;
    height: 2.5em;
    width: 3em;
    transform: rotate(0deg) skewX(0deg);
}
input:checked + .switch-left::before {
  background-color: transparent;
  width: 3.0833em;
}
input:checked + .switch-left + .switch-right {
  background-color: #ddd;
  color: #888;
  bottom: 0.4em;
  right: 0.8em;
  height: 2.4em;
  width: 2.75em;
  transform: rotate(-15deg) skewX(-15deg);
}
input:checked + .switch-left + .switch-right::before {
  background-color: #ccc;
}
input:focus + .switch-left {
  color: #333;
}
input:checked:focus + .switch-left {
  color: #fff;
}
input:focus + .switch-left + .switch-right {
  color: #fff;
}
input:checked:focus + .switch-left + .switch-right {
  color: #333;
}
 
  
 #id{
 float:left;
 }
 .nick{
font-size: 20px;
     /* padding-top: 100px; */
    width: 60px;
 }
</style>
 
 
</head> 
<body>
 

<nav class="navbar navbar-default navbar-expand-lg navbar-light"   >
		<div id="daily">
		<!-- <a href="List.mb"> <img src="resources/images/logo.png" style="width:90px; padding-top:10px;"></a>	 -->
		<a href="List.mb"> <h2>Daily Log</h2>  </a>	
		<li class="nav-item"><a href="#" class="nav-link" style="padding-right:0px;" onclick="">친구 요청 확인</a></li>			
		<!-- 	<li class="nav-item"><a href="#" class="nav-link" style="padding-right:0px;">친구 요청 보내기</a></li>	
		 -->	
	</div><br><br>
  <div class="page-wrapper">
    <div class="container-fluid" id="frilist">
        <div class="col-lg-8"><!--게시판 넓이 -->
       
            <div class="panel panel-default" >
                 <div class="panel-body">
                   <table class="table table-hover">
                           <thead> 
                            <tr>
                                <td><h2>친구 요청</h2></td>
                            </tr>
                        </thead>
                                 <tbody>
                             <c:forEach var="user" items="${list}">
                   <tr>           
        <td>
        
       <%--  <span class="nick"> ${user.nickname}  </span>
         
        <label class="rocker" style="width:100px; white-space: nowrap; " >
       
         <div style="inline">${user.nickname} </div> 
            <input type="checkbox">
            <span class="switch-left" id="switch">
       <input type="hidden" id="friId" name="friId" value="${user.friId}"/>
            <input type="hidden" id="status_yn" name="status_yn" value="Y"/>  
         <!--    <input type="submit" value="수락"> -->
            수락</span>
            
            <span  class="switch-right" id="switch"  value="거절"> 
          
            <input type="hidden" id="friId" name="friId" value="${user.friId }"/>
            <input type="hidden" id="status_yn" name="status_yn" value="N"/>거절</span> --%>
            
            
            
             <span class="nick" > ${user.nickname}  </span>
         
        <label class="rocker" style="width:100px; white-space: nowrap; " >
         <input type="checkbox">
            <span class="switch-left" >
          <form action="frirequests.mb"> 
            <!-- onclick="location.href='frirequests.mb'" -->
			 <input type="hidden" id="friId" name="friId" value="${user.friId }"/> 
 			 <input type="hidden" id="status_yn" name="status_yn" value="Y"/>            
             <input type="submit"  value="수락"style="border:none; background:none;width:32px; height:32px;padding:none;" >   		
            </form>
            		  </span>
            		  
            		  
               <span  class="switch-right" > 
 		  <form action="frirequestf.mb">  
             <input type="hidden" id="friId" name="friId" value="${user.friId }"/>
            <input type="hidden" id="status_yn" name="status_yn" value="N"/>  
               <input  type="submit" value="거절" style="border:none; background:none;width:32px;height:32px;padding:none;">
            		  </form> 
            		  </span>
           
       
            
            
           <!--  <input type="reset"value="거절"></span> -->
         </label>
    </td></tr>
    </c:forEach>
                </table>    
                  </div>
                  
                  </div>
             
                  </div>
                </div ></div>
    
</nav>
 </body>
<!-- <script>
/* $("#switch").live("click",function(){
	var nickname =$(this).text();
	console.log(nickname);input[type="checkbox"]:checked
}); */

/* $("input[name:friId]:checked").each(function(){;
var nickname =$(this).text();
console.log(nickname);

}); */ -->

  </html>                                                                                  
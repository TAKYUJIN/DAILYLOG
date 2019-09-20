<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.mainpage {
   width: 1600x;
   margin-top: 200px;
   /*    border: 1px solid black; */
}

#left {
   width: 200px;
   /* height:700px; */
   margin-top: 100px;
   margin-left: 20px;
   /* border: 1px solid black; */
}

#right {
   width: 1000px;
   /* height:700px;  */
   margin-top:   -100px;
   margin-left: 400px;
/*     border: 1px solid red;  */
}

#sub_list {
   margin-top: 50px;
}


.col-sm-6{
	float:left;
}
</style>
</head>
<body>
   <jsp:include page="/WEB-INF/views/common/mainBar.jsp"></jsp:include>
   <form action="subscribe.mb" method="post">
      <div class="maingape">
         <div id="left">
            <div id="sub_list">
               <div class="container">
                  <div class="col-xs-3">
                     <table class="table table-hover">
                        <thead>
                           <tr>
                              <th>구독</th>

                           </tr>
                        </thead>
                        <tbody>
                           <c:forEach items="${subscribeList}" var="s">
                           <tr onclick="noticeResult(${n.bNo});">
                              <td><c:out value="${s.chNm}"/></td>
                           </tr>
                           </c:forEach>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <div id="right">
      <table id="subscribeArea">
      <c:forEach items="${subscribeVideoList}" var="sv" begin="0" end="5">

   
      
         <div style="float:left;">
      <div class="col-sm-4">
      
            <!-- <video width="250px;" height="200px;" controls loop>
               <source src="" type="">
               <source src="nature.ogg" type="">
            </video> -->
          <a href="video.vd?userNo=${videoimage.userNo}&vNo=${videoimage.vNo}">  <!--  영상클릭시 해당영상으로 이동하는 링크(작업해야함) -->
                <img src="resources/images/${sv.fileNm}" width = "250px"  height="200px"  >
            <br>
        		<div style="width:150px;"><c:out value="${sv.chNm}"/></div>
				<div style="width:150px;"><c:out value="${sv.vTitle}"/></div>
				<p style="width:150px;"><c:out value="${sv.count}"/>회</p>
         </a>
 
        </div>
	</div>       
   
	</c:forEach>
   </table>
      </div>
   </form>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
 <br>
</html>
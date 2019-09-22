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
   margin-top: -100px;
   margin-left: 200px;
   /*     border: 1px solid red;  */
}

#sub_list {
   margin-top: 50px;
}

.col-sm-6 {
   float: left;
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
                              <tr onclick='location.href="newHomeChannel.lo?userNo=${s.userNo}"'>
<%--                               <a href="newHomeChannel.lo?userNo=${sv.userNo}"> --%>
                                 <td><c:out value="${s.chNm}" /></td>
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



               <div style="float: left; margin-left:50px;">
                  <div class="col-sm-4">
               
                     <a href="video.vd?userNo=${sv.userNo}&vNo=${sv.vNo}">
                      <img   src="resources/uploadFiles/${sv.fileNm}" width="250px"
                        height="200px"> <br><br>
                        <div style="width: 150px;">
                           <c:out value="${sv.chNm}" />
                        </div>
                        <div style="width: 150px;">
                           <c:out value="${sv.vTitle}" />
                        </div>
                        <p style="width: 150px;">
                           <c:out value="${sv.count}" />
                           회
                        </p>
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
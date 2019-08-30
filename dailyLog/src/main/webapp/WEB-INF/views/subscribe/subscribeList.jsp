<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.mainpage {
   width: 1024px;
   margin-top: 200px;
/*    border: 1px solid black; */
}

#left {
   width: 650px;
   /* height:700px; */
   margin-top: 120px;
   margin-left:20px;
   /* border: 1px solid black; */
}

#right {
   width: 500px;
   /* height:700px;  */
   margin-top: -860px;
   margin-left: 700px;
   /* border: 1px solid red; */
}

#sub_list {
   margin-top: 50px;
}
</style>
</head>
<body>
   <jsp:include page="../common/mainBar.jsp"></jsp:include>

   <div class="maingape">
      <div id="left">
         <div class="area_subscribe"></div>
         <div id="newlist"></div>
         <br> <br> <br>
         <h3 class="title_name">구독채널1</h3>
         <div class="wrap_slider">
            <div class="slide_paging"></div>
            <div class="list_favoritem">
               <div class="inner_favoritem">
                  <a class="link_itembox"> <span class="thumb_box"> <video
                           width="300px;" height="200px;" controls loop>
                           <source src="" type="">
                           <source src="nature.ogg" type="">
                        </video> <span class="mark_play"></span></span> <span class="live_rank">
                        <span class="img_rank rank_1">1</span> <strong
                        class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
                        <span class="append_info"> <span
                           class="info_append info_play"> <span
                              class="ico_kakaotv_new">조회수 : </span>31,380
                        </span></span>
                  </span>
                  </a>
               </div>
               <div class="inner_favoritem">
                  <a class="link_itembox"> <span class="thumb_box"> <video
                           width="300px;" height="200px;" controls loop>
                           <source src="" type="">
                           <source src="nature.ogg" type="">
                        </video> <span class="mark_play"></span></span> <span class="live_rank">
                        <span class="img_rank rank_2">2</span> <strong
                        class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
                        <span class="append_info"> <span
                           class="info_append info_play"> <span
                              class="ico_kakaotv_new">조회수 : </span>31,380
                        </span></span>
                  </span>
                  </a>
               </div>
            </div>

         </div>
         <h3 class="title_name">구독채널2</h3>
         <div class="wrap_slider">
            <div class="slide_paging"></div>
            <div class="list_favoritem">
               <div class="inner_favoritem">
                  <a class="link_itembox"> <span class="thumb_box"> <video
                           width="300px;" height="200px;" controls loop>
                           <source src="" type="">
                           <source src="nature.ogg" type="">
                        </video> <span class="mark_play"></span></span> <span class="live_rank">
                        <span class="img_rank rank_1">1</span> <strong
                        class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
                        <span class="append_info"> <span
                           class="info_append info_play"> <span
                              class="ico_kakaotv_new">조회수 : </span>31,380
                        </span></span>
                  </span>
                  </a>
               </div>
               <div class="inner_favoritem">
                  <a class="link_itembox"> <span class="thumb_box"> <video
                           width="300px;" height="200px;" controls loop>
                           <source src="" type="">
                           <source src="nature.ogg" type="">
                        </video> <span class="mark_play"></span></span> <span class="live_rank">
                        <span class="img_rank rank_2">2</span> <strong
                        class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
                        <span class="append_info"> <span
                           class="info_append info_play"> <span
                              class="ico_kakaotv_new">조회수 : </span>31,380
                        </span></span>
                  </span>
                  </a>
               </div>
            </div>

         </div>
         <h3 class="title_name">구독채널3</h3>
         <div class="wrap_slider">
            <div class="slide_paging"></div>
            <div class="list_favoritem">
               <div class="inner_favoritem">
                  <a class="link_itembox"> <span class="thumb_box"> <video
                           width="300px;" height="200px;" controls loop>
                           <source src="" type="">
                           <source src="nature.ogg" type="">
                        </video> <span class="mark_play"></span></span> <span class="live_rank">
                        <span class="img_rank rank_1">1</span> <strong
                        class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
                        <span class="append_info"> <span
                           class="info_append info_play"> <span
                              class="ico_kakaotv_new">조회수 : </span>31,380
                        </span></span>
                  </span>
                  </a>
               </div>
               <div class="inner_favoritem">
                  <a class="link_itembox"> <span class="thumb_box"> <video
                           width="300px;" height="200px;" controls loop>
                           <source src="" type="">
                           <source src="nature.ogg" type="">
                        </video> <span class="mark_play"></span></span> <span class="live_rank">
                        <span class="img_rank rank_2">2</span> <strong
                        class="title_name">영상제목</strong> <span class="assist_info">채널명</span>
                        <span class="append_info"> <span
                           class="info_append info_play"> <span
                              class="ico_kakaotv_new">조회수 : </span>31,380
                        </span></span>
                  </span>
                  </a>
               </div>
            </div>
         </div>
      </div>

      <div id="right">

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
                        <tr>
                           <td>김채원채널</td>
                        </tr>
                        <tr>
                           <td>지희정채널</td>
                        </tr>
                        <tr>
                           <td>정은주채널</td>
                        </tr>
                        <tr>
                           <td>탁유진채널</td>
                        </tr>
                        <tr>
                           <td>박예진채널</td>
                        </tr>
                        <tr>
                           <td>이채빈채널</td>
                        </tr>
                        <tr>
                           <td>kh채널</td>
                        </tr>
                        <tr>
                           <td>집가자채널</td>
                        </tr>
                        <tr>
                           <td>오늘은채널</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
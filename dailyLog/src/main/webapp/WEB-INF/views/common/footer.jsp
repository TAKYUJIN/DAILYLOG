<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.footer-bs {
   background-color: #3c3d41;
   padding: 60px 40px;
   color: rgba(255,255,255,1.00);
   margin-bottom: 20px;
   border-bottom-right-radius: 0px;
   border-top-left-radius: 0px;
   border-bottom-left-radius: 0px;
}
.footer-bs .footer-brand, .footer-bs .footer-nav, .footer-bs .footer-social, 
.footer-bs .footer-ns { padding:10px 25px; }
.footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { border-color: transparent; }
.footer-bs .footer-brand h2 { margin:0px 0px 0px; }
.footer-bs .footer-brand p { font-size:12px; color:rgba(255,255,255,0.70); }

.footer-bs .footer-nav ul.pages { list-style:none; padding:0px; }
.footer-bs .footer-nav ul.pages li { padding:5px 0px;}
.footer-bs .footer-nav ul.pages a { 
color:rgba(255,255,255,1.00); font-weight:bold; text-transform:uppercase; }
.footer-bs .footer-nav ul.pages a:hover { 
color:rgba(255,255,255,0.80); text-decoration:none; }
.footer-bs .footer-nav h4 {
   font-size: 11px;
   text-transform: uppercase;
   letter-spacing: 3px;
   margin-bottom:10px;
}

.footer-bs .footer-nav ul.list { list-style:none; padding:0px; }
.footer-bs .footer-nav ul.list li { padding:5px 0px;}
.footer-bs .footer-nav ul.list a { color:rgba(255,255,255,0.80); }
.footer-bs .footer-nav ul.list a:hover { 
color:rgba(255,255,255,0.60); text-decoration:none; }

.footer-bs .footer-social ul { list-style:none; padding:0px; }
.footer-bs .footer-social h4 {
   font-size: 11px;
   text-transform: uppercase;
   letter-spacing: 3px;
}
.footer-bs .footer-social li { padding:5px 4px;}
.footer-bs .footer-social a { color:rgba(255,255,255,1.00);}
.footer-bs .footer-social a:hover { color:rgba(255,255,255,0.80); text-decoration:none; }

.footer-bs .footer-ns h4 {
   font-size: 11px;
   text-transform: uppercase;
   letter-spacing: 3px;
   margin-bottom:10px;
}
.footer-bs .footer-ns p { font-size:12px; color:rgba(255,255,255,0.70); }

@media (min-width: 768px) {
   .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { 
   border-left:solid 1px rgba(255,255,255,0.10); }
}

</style>
</head>
<body>
<div class="container" style="width:1024px; float:left;">
    <!----------- Footer ------------>
    <footer class="footer-bs">
        <div class="row">
           <div class="col-md-3 footer-brand animated fadeInLeft">
               <h2>DailyLog</h2>
                <br><br><br><br><br><br>
<p>Copyright ©WITH Corp. All rights reserved.</p>
            </div>
           <div class="col-md-4 footer-nav animated fadeInUp">
               <h4>GUIDE</h4> 
               <div class="col-md-6">
                    <ul class="list">
                        <li><a href="noticeMain.no">공지사항</a></li>
                        <li><a href="noticeList.no">도움말</a></li>
                        <li><a href="noticeEmailQuestion.no">문의하기</a></li>
                       
                    </ul>
                </div>
            
               <div class="col-md-6">
                    <ul class="list">
                        <li><a href="terms.no">이용약관</a></li>
                        <li><a href="policy.no">정책및안전</a></li>
                       
                    </ul>
                </div>
            </div>
           <div class="col-md-2 footer-social animated fadeInDown">
               <h4>Contact </h4>
               <ul>
                   <li>서울특별시 <br>
                    강남구<br>테헤란로
                    <br>14길 6</li>
                   
                   <li>1544-9970</li>
                </ul>
       
                      </span>
                    </div><!-- /input-group -->
                 </p>
            </div>
    </footer>
        </div>

  
</body>
</html>
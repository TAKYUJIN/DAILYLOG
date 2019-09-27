<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
</head>
<body>
<form id="pay" name="f1" action="point.me" method="post">
<input type="hidden" name="IMP_UID"/>		<!-- 아임포트고유번호 -->
<input type="hidden" name="MERCHANT_UID"/>		<!-- 고유주문번호 -->
<input type="hidden" name="PAID_AMOUNT"/>		<!-- 결제금액 -->
<input type="hidden" name="BUYER_NAME"/>		<!-- 주문자이름 -->
<input type="hidden" name="BUYER_ID"/>		<!-- 주문자ID -->
<input type="hidden" name="BUYER_PHONE"/>		<!-- 주문자연락처 -->
<input type="hidden" name="PAID_AT"/>	<!-- 결제승인시각 -->

<script type="text/javascript">

	IMP.init('imp51812845');
	IMP.request_pay({
	    pg : 'jtnet', //ActiveX 결제창은 inicis를 사용
	    pay_method : 'card', //card(신용카드), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
	    merchant_uid : 'issue_billingkey_monthly_0001', //상점에서 관리하시는 고유 주문번호를 전달
	    customer_uid: 'gildong_0001_1234',
	    name: "최초인증결제",
	    amount : 200,
	    buyer_email : 'eunju9503@naver.com',
	    buyer_name : '정은주',
	    buyer_tel : '010-9923-0092', //누락되면 이니시스 결제창에서 오류
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
	}, function(rsp) {
	    if ( rsp.success ) {
	    	/* 
	    	jQuery.ajax({
	            url: "https://www.myservice.com/billings/", // 서비스 웹서버
	            method: "POST",
	            headers: { "Content-Type": "application/json" },
	            data: {
	              customer_uid: "gildong_0001_1234", // 카드(빌링키)와 1:1로 대응하는 값
	            }
	          }); */
	    	//var data = "IMP_UID=" + rsp.imp_uid + "&MERCHANT_UID=" + rsp.merchant_uid;
	    	$("input[name='IMP_UID']").val(rsp.imp_uid);
	    	$("input[name='MERCHANT_UID']").val(rsp.merchant_uid);
	    	$("input[name='PAID_AMOUNT']").val(rsp.paid_amount);
	    	$("input[name='BUYER_NAME']").val(rsp.buyer_name);
	    	$("input[name='BUYER_ID']").val(rsp.buyer_email);
	    	$("input[name='BUYER_PHONE']").val(rsp.buyer_tel);
	    	$("input[name='PAID_AT']").val(rsp.paid_at);
	    	
	    	f1.submit();
	    	/* //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	    	jQuery.ajax({
	    		url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
	    		type: 'POST',
	    		dataType: 'json',
	    		data: {
		    		imp_uid : rsp.imp_uid
		    		//기타 필요한 데이터가 있으면 추가 전달
	    		}
	    	}).done(function(data) {
	    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	    		if ( everythings_fine ) {
	    			var msg = '결제가 완료되었습니다.';
	    			msg += '\n고유ID : ' + rsp.imp_uid;
	    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
	    			msg += '\n결제 금액 : ' + rsp.paid_amount;
	    			msg += '카드 승인번호 : ' + rsp.apply_num;
	    			
	    			alert(msg);
	    		} else {
	    			//[3] 아직 제대로 결제가 되지 않았습니다.
	    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	    		}
	    	});
	    	location.href="point.me"; */
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        location.href="pay.me";
	        alert(msg);
	        console.log(msg);
	    }
	});

</script>
</form>
</body>
</html>
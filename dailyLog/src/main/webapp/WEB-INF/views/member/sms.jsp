    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
     <html>

    <head>
        <title>sms - jsp </title>
        <script type="text/javascript">
            function setPhoneNumber(val) {
                var numList = val.split("-");
                document.smsForm.sphone1.value = numList[0];
                document.smsForm.sphone2.value = numList[1];
            if(numList[2] != undefined){
                    document.smsForm.sphone3.value = numList[2];
        }
            }

            function loadJSON() {
                var data_file = "/calljson.jsp";
                var http_request = new XMLHttpRequest();
                try {
                    // Opera 8.0+, Firefox, Chrome, Safari
                    http_request = new XMLHttpRequest();
                } catch (e) {
                    // Internet Explorer Browsers
                    try {
                        http_request = new ActiveXObject("Msxml2.XMLHTTP");

                    } catch (e) {

                        try {
                            http_request = new ActiveXObject("Microsoft.XMLHTTP");
                        } catch (e) {
                            // Eror
                            alert("ì§ìíì§ ìëë¸ë¼ì°ì !");
                            return false;
                        }

                    }
                }
                http_request.onreadystatechange = function() {
                    if (http_request.readyState == 4) {
                        // Javascript function JSON.parse to parse JSON data
                        var jsonObj = JSON.parse(http_request.responseText);
                        if (jsonObj['result'] == "Success") {
                            var aList = jsonObj['list'];
                            var selectHtml = "<select name=\"sendPhone\" onchange=\"setPhoneNumber(this.value)\">";
                            selectHtml += "<option value='' selected>ë°ì ë²í¸ë¥¼ ì íí´ì£¼ì¸ì</option>";
                            for (var i = 0; i < aList.length; i++) {
                                selectHtml += "<option value=\"" + aList[i] + "\">";
                                selectHtml += aList[i];
                                selectHtml += "</option>";
                            }
                            selectHtml += "</select>";
                            document.getElementById("sendPhoneList").innerHTML = selectHtml;
                        }
                    }
                }

                http_request.open("GET", data_file, true);
                http_request.send();
            }
        </script>
    </head>

    <body onload="loadJSON()">
    <form method="post" name="smsForm" action="smssend.jsp">
        <input type="hidden" name="action" value="go"> ë°ì¡íì
        <span>
          <input type="radio" name="smsType" value="S">ë¨ë¬¸(SMS)</span>
        <span>
          <input type="radio" name="smsType" value="L">ì¥ë¬¸(LMS)</span>
        <br /> ì ëª© :
        <input type="text" name="subject" value="ì ëª©"> ì¥ë¬¸(LMS)ì¸ ê²½ì°(íê¸30ìì´ë´)
        <br /> ì ì¡ë©ì¸ì§
        <textarea name="msg" cols="30" rows="10" style="width:455px;">ë´ì©ìë ¥</textarea>
        <br />
        <br />
        <p>ë¨ë¬¸(SMS) : ìµë 90byteê¹ì§ ì ì¡í  ì ìì¼ë©°, ìì¬ê±´ì 1ê±´ì´ ì°¨ê°ë©ëë¤.
            <br /> ì¥ë¬¸(LMS) : íë²ì ìµë 2,000byteê¹ì§ ì ì¡í  ì ìì¼ë©° 1í ë°ì¡ë¹ ìì¬ê±´ì 3ê±´ì´ ì°¨ê°ë©ëë¤.
        </p>
        <br />ë°ë ë²í¸
        <input type="text" name="rphone" value="011-111-1111"> ì) 011-011-111 , '-' í¬í¨í´ì ìë ¥.
        <br />ì´ë¦ì½ìë²í¸
        <input type="text" name="destination" value="" size=80> ì) 010-000-0000|íê¸¸ë
        <br /> ë³´ë´ë ë²í¸
        <input type="hidden" name="sphone1">
        <input type="hidden" name="sphone2">
        <input type="hidden" name="sphone3">
        <span id="sendPhoneList"></span>
        <br />ìì½ ë ì§
        <input type="text" name="rdate" maxlength="8"> ì)20090909
        <br />ìì½ ìê°
        <input type="text" name="rtime" maxlength="6"> ì)173000 ,ì¤í 5ì 30ë¶,ìì½ìê°ì ìµì 10ë¶ ì´ìì¼ë¡ ì¤ì .
        <br />return url
        <input type="text" name="returnurl" maxlength="64" value="">
        <br /> test flag
        <input type="text" name="testflag" maxlength="1"> ì) íì¤í¸ì: Y
        <br />nointeractive
        <input type="text" name="nointeractive" maxlength="1"> ì) ì¬ì©í  ê²½ì° : 1, ì±ê³µì ëíìì(alert)ë¥¼ ìëµ.
        <br />ë°ë³µì¤ì 
        <input type="checkbox" name="repeatFlag" value="Y">
        <br /> ë°ë³µíì
        <select name="repeatNum">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select> ì) 1~10í ê°ë¥.
        <br />ì ì¡ê°ê²©
        <select name="repeatTime"> ì)15ë¶ ì´ìë¶í° ê°ë¥.
            <option value="15">15</option>
            <option value="20">20</option>
            <option value="25">25</option>
        </select>ë¶ë§ë¤
        <br>
        <input type="submit" value="ì ì¡">
        <br/>ì´íµì¬ ì ì±ì ë°ë¼ ë°ì ë²í¸ì ìì ë²í¸ê° ê°ì ê²½ì° ë°ì¡ëì§ ììµëë¤.
    </form>
    </body>

    </html>
            
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <button onclick="calculate()">calculate</button>
 
    <script type="text/javascript">
        window.onload = function () {
            if (window.Notification) {
                Notification.requestPermission();
            }
        }
 
        function calculate() {
            setTimeout(function () {
                notify();
            }, 5000);
        }
 
        function notify() {
            if (Notification.permission !== 'granted') {
                alert('notification is disabled');
            }
            else {
                var notification = new Notification('Notification title', {
                    icon: 'http://cdn.sstatic.net/stackexchange/img/logos/so/so-icon.png',
                    body: 'Notification text',
                });
 
                notification.onclick = function () {
                    window.open('http://google.com');
                };
            }
        }
    </script>
</body>
</html>
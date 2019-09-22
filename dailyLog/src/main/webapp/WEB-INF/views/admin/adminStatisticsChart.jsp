<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
	
	.statisDiv {
		width:80%;
		background:none !important;
		margin-top:100px;
		margin-bottom:50px;
		margin-left:auto;
		margin-right:auto;
	}
	
	#columnchart_material {
		margin:0 auto;
	}
	
	rect {
		background:none;
		margin-top:10px;
	}

</style>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart1);
      google.charts.setOnLoadCallback(drawChart2);
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
          var data = google.visualization.arrayToDataTable([
            ['Date', '매출 (만)', '회원수'],
            ['month', 150, 150],
            ['week', 50, 100],
            ['day', 12, 30]
          ]);

          var options = {
            chart: {
              title: ' ',
              subtitle: ' ',
            }
          };

          var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

          chart.draw(data, google.charts.Bar.convertOptions(options));
        }
      
      function drawChart1() {
        var data = google.visualization.arrayToDataTable([
          ['Date', '매출 (만)', '회원수'],
          ['3month', 300, 200],
          ['month', 150, 150],
          ['week', 50, 100],
          ['day', 12, 30]
        ]);

        var options = {
          chart: {
            title: ' ',
            subtitle: ' ',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material1'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }

      function drawChart2() {
        var data = google.visualization.arrayToDataTable([
          ['Date', '매출 (만)', '회원수'],
          ['3month', 300, 200],
          ['month', 150, 150],
          ['week', 50, 100],
          ['day', 12, 30]
        ]);

        var options = {
          chart: {
            title: ' ',
            subtitle: ' ',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material2'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
  	<div class="statisDiv">
  	<h3 style="margin-left:250px;">DailyLog Chart</h3>
  	<div id="columnchart_material" style="width:800px; height:500px; background:none;"></div>
    <!-- <div id="columnchart_material1" style="height:500px; background:none; float:right; width:50%;"></div>
    <div id="columnchart_material2" style="height:500px; background:none; float:right; width:50%;"></div> -->
    </div>
  </body>
</html>

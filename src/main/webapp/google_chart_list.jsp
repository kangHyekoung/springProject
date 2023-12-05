<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    	<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
    
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
    	  
    	  $.ajax({
    		  url:"chart1",
    		  success: function(array) {
    				var positions =  [['Task', 'Hours per Day']];
    				
    				$(array).each(function(index, json) {
    					positions.push([
		        			json.doing,
		        			json.time
		        		])
					})
					
    		        var data = google.visualization.arrayToDataTable(positions);

    		        var options = {
    		          title: '나의 주중 하루'
    		        };

    		        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

    		        chart.draw(data, options);
    			  
			}//success
    		  
    	  })

      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>
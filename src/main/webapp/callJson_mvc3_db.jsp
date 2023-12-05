<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() { 
		$('#b3').click(function() {
			$.ajax({
				url : "jsonbbs",
				success : function(array) {
					console.log(array)
					let header = "<table><tr><td>아이디</td><td>제목</td><td>내용</td><td>작성자</td></tr>";
					$('#result').append(header);
					let mid;
					 $(array).each(function(i, json) {	//function(인덱스저장변수, 하나씩꺼내서넣어줄변수)
						let id_value = json.id
						let title_value = json.title
						let content_value = json.content
						let writer_value = json.writer
						
						mid = "<tr><td>" +id_value + "</td><td>"+ title_value +"</td><td>" + content_value +"</td><td>" + writer_value + "</td></tr>";
					
						$('#result').append(mid);
					 })//for
					 $('#result').append("</table>");
				}//success
			})//ajax
		})//b3
		
	})//$
</script>
</head>
<body>
	<button id="b3">JSON2으로 받아와보자(array)</button>
	<hr color="red">
	<div id="result" style="background: yellow; width=800px; hegith=800px;">ajax통신 결과들어가는 곳.<hr></div>
</body>
</html>
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
		$('#b1').click(function() {
			$.ajax({
				url : "string",
				success : function(string) {
					alert(string)
					$('#result').text(string)
					//winner이면, winner이미지를 넣어주고
					
					if(string == "winner"){
						$('#result').append("<img src='resources/img/ok.jpg'>");
					}else{
						$('#result').append("<img src='resources/img/no.png'");
					}
					//아니면, looser이미지를 넣어주세요.
				}//success
			})//ajax
		})//b1
		$('#b2').click(function() {
			$.ajax({
				url : "json1",
				success : function(json) {
					//alert(json)
					//$('#result').text(json)
					//json을 프린트할 일이 있으면 브라우저의 console을
					//더 자세하게 출력할 수 있다.
					console.log(json)
					console.log(json.writer)
					
					let id_value = json.id
					let title_value = json.title
					let content_value = json.content
					let writer_value = json.writer
					
					let data = id_value + " " + title_value + " " + content_value + " " + writer_value;
					$('#result').append(data + "<br>");
				}//success
			})//ajax
		})//b2
		
		$('#b3').click(function() {
			$.ajax({
				url : "json2",
				success : function(array) {
					//alert(json)
					//$('#result').text(json)
					//json을 프린트할 일이 있으면 브라우저의 console을
					//더 자세하게 출력할 수 있다.
					console.log(array)
					console.log(array.length)
					
					//jquery foreach - 반드시 파라미터 2개 추가해야함
					//$().each(function(index, json){})
					$(array).each(function(i, json) {	//function(인덱스저장변수, 하나씩꺼내서넣어줄변수)
						let id_value = json.id
						let title_value = json.title
						let content_value = json.content
						let writer_value = json.writer
						
						let data = id_value + " " + title_value + " " + content_value + " " + writer_value;
						$('#result').append(data + "<br>");
					})
					
					/* for(let i = 0; i < array.length; i++){
						let id_value = array[i].id
						let title_value = array[i].title
						let content_value = array[i].content
						let writer_value = array[i].writer
						
						let data = id_value + " " + title_value + " " + content_value + " " + writer_value;
						$('#result').append(data + "<br>"); */
					}
				}//success
			})//ajax
		})//b3
		
	})//$
</script>
</head>
<body>
	<button id="b1">JSON으로 받아와보자(string)</button>
	<button id="b2">JSON2으로 받아와보자(json)</button>
	<button id="b3">JSON2으로 받아와보자(array)</button>
	<hr color="red">
	<div id="result" style="background: yellow; width=800px; hegith=800px;">ajax통신 결과들어가는 곳.<hr></div>
</body>
</html>
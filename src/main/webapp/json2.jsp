<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json1 = new JSONObject();
	json1.put("id", "root");
	json1.put("pw", "1234");
	json1.put("tel", "010");
	//out.print(json1.toJSONString()); //{id:root, pw:1234, tel:011}
	
	JSONObject json2 = new JSONObject();
	json2.put("id", "admin");
	json2.put("pw", "5678");
	json2.put("tel", "010");
	//out.print(json2.toJSONString()); //{id:root, pw:1234, tel:011}
	
	JSONArray array = new JSONArray();
	array.add(json1);	//list --> 순서! ArraList, LinkedList add(data)
	array.add(json2);
	
	out.print(array.toJSONString());
	//[{id:root, pw:1234, tel:011, {id:admin,....}}]
	
%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json1 = new JSONObject();
	json1.put("id", "root");
	json1.put("pw", "1234");
	json1.put("tel", "010");
	///out.print(json1.toJSONString()); //{id:root, pw:1234, tel:011}
	out.print(json1.toJSONString());
%>
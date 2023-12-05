<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table border="1">
    <thead>
        <tr>
            <th width="200">영화명</th>
            <th width="200">예매가격</th>
        </tr>
    </thead>
    <tbody>
        <tr style="background: lime">
         
        <%-- ${출력하고속성명} : 세션, 모델만 출력 가능 --%>
            <td>${title}</td>
            <td>${price}</td>
        </tr>
    </tbody>
</table>
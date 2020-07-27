<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div align="center"><b>홈쇼핑 회원 등록</b></div><p><p>
<table border="1" align="center">
<tr>
<td>회원번호(자동발생)</td>
<td><input type="text"></td>
</tr>
<tr>
<td>회원성명</td>
<td><input type="text"></td>
</tr>
<tr>
<td>회원전화</td>
<td><input type="text"></td>
</tr>
<tr>
<td>회원주소</td>
<td><input type="text"></td>
</tr>
<tr>
<td>가입일자</td>
<td><input type="text"></td>
</tr>
<tr>
<td>고객등급(A:VIP, B:일반, C:직원)</td>
<td><input type="text"></td>
</tr>
<tr>
<td>도시코드</td>
<td><input type="text"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="등록">
<input type="button" value="조회" onclick="location.href='show.jsp'"></td>
</tr>
</table>
<jsp:include page="footer.jsp" />
</body>
</html>
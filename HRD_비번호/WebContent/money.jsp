<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "kosea2";
	String pass = "kosea2019a";
	String sql = "select custno, custname, grade from member_tbl_02";
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출조회</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div align="center"><b>회원매출조회</b></div><p><p>
<table border="1" align="center">
<tr>
<th>회원번호</th>
<th>회원성명</th>
<th>고객등급</th>
<th>매출</th>
</tr>
<%
			try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, pass);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>" + rs.getString("custno") + "</td>");
				out.println("<td>" + rs.getString("custname") + "</td>");
				out.println("<td>" + rs.getString("grade") + "</td>");
				//out.println("<td>" + rs.getString("price") + "</td>");
				out.println("</tr>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
			rs.close();
				if (stmt != null)
			stmt.close();
				if (conn != null)
			conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		%>
</table>
<jsp:include page="footer.jsp" />
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/css/header.css" rel="stylesheet" />
</head>
<body>
	<h2>게시글 목록</h2>
	<form name="" action="list.do" method="get">
		<select name="searchType">
			<option value="subject">글제목</option>
			<option value="writer">작성자</option>
		</select>
		<input type="text" name="searchValue">
		<button>검색</button>
	</form>
	<table border="1">
		<thead>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.bidx}</td>
				<td><a href="view.do?bidx=${vo.bidx}">${vo.subject}</a></td>
				<td>${vo.writeday}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<input type="button" value="등록" onclick="location.href='insert.do'">
</body>
</html>











<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 수정</h2>
	<form name="modifyFrm" action="modify.do" method="post">
		<input type="hidden" name="bidx" value="${vo.bidx}">
		<table border="1">
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" value="${vo.subject}"></td>
				</tr>
				<tr height="300">
					<th>내용</th>
					<td><textarea name="content">${vo.content}</textarea></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="저장">
		<input type="button" value="취소" onclick="location.href='view.do?bidx=${vo.bidx}'">
	</form>
</body>
</html>
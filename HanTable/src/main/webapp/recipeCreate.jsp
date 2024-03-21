<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#left {
	float: left;
	width: 300px;
	padding: 2px;
	border-right: 1px solid darkgray;
	/*background-color: red;*/
}

#right {
	float: right;
	width: 346px;
	padding: 2px;
	/*background-color: blue;*/
}
</style>
</head>
<body>
	<div id="container">
		<h4>레시피 등록</h4>
		<div id="left">
			<table>
				<tr>
					<th>레시피 제목</th>
					<th ><input type = "text"></th>
				</tr>
				<tr>
					<td>요리소개</td>
					<td><input type = "text"></td>
				</tr>
				<tr>
					<td>분류</td>
					<td>
						<select>
							<option value="">국/찌개</option>
							<option value="">일품</option>
							<option value="">반찬</option>
							<option value="">밥</option>
						</select>
					</td>
					<td>
						<select>
							<option value="">국/찌개</option>
							<option value="">일품</option>
							<option value="">반찬</option>
							<option value="">밥</option>
						</select>
					</td>
					<td>
						<select>
							<option value="">국/찌개</option>
							<option value="">일품</option>
							<option value="">반찬</option>
							<option value="">밥</option>
						</select>
					</td>
				</tr>
			</table>
		</div>
		<div id="right"></div>
	</div>
</body>
</html>
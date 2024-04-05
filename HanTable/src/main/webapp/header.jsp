<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a {
	    text-decoration: none;
	}
	*{
		padding:0;
		margin:0;
	}
	.headerContainer{
		width:1920px;
		height:100px;
		background:#ffffff;
	}
	.headerInnerContainer{
		width:1280px;
		height:100px;
		margin:0 auto;
		display:flex;
		align-items:center;
	}
	.headerImgContainer{
		float:left;
		margin-left: -11px;
	}
	.headerSearchContainer{
		margin-left:auto;
		display:flex;
		align-items:center;
	}
	.searchInput{
		width:400px;
		height:40px;
		background:none;
		margin-right: 30px;
		color: white;
		font-size:21px;
		border:none;
		border-bottom:1px solid #bdbdbd;
		padding-left:10px;
	}
	.searchInput::placeholder {
		color:white;
	}
	.headerUserContainer{
		float:right;
		margin-left: auto;
		cursor:pointer;
	}
	.subHeaderContainer{
		width:1920px;
		height:50px;
		background:#5E6C53;
	}
	.subHeaderInnerContainer{
		margin:0 auto;
		display:flex;
		align-items:center;
		height: 50px;
		width: 1280px;
	}
	.subHeaderText{
		color:#f5f5f5;
		font-size:21px;
		margin-right:50px;
		cursor:pointer;
	}
	.subHeaderText:hover{
		color:white;
	}
	
	.dropdownbtn {
		background-color:#ffffff;
		color:#ffffff;
		border: none;
	}

	.dropdownContent {
  		display: none;
  		position: absolute;
  		background-color: #BF917E;
  		min-width: 200px;
  		z-index: 1;
  		transform: translateX(-35%);
	}

	.dropdownContent a {
  		padding: 12px 16px;
  		color:white;
   		text-align: center;
   		text-decoration:none;
   		position: relative;
   		display:block;
	}

	.dropdownContent a:hover {
  		 background: #937062;
	}
</style>
</head>
<body>
	<div class="headerContainer">
		<div class="headerInnerContainer">
			<div class="headerImgContainer">
				<a href="main.jsp">
					<img src="./image/logo.png">
				</a>
			</div>
			<div class="headerSearchContainer">
				<input type="text" placeholder="검색어를 입력해주세요." class="searchInput"/>
				<a href="result.jsp">
					<img src="./image/search.png" style="width:40px; height:40px;">
				</a>
			</div>
			<div class="headerUserContainer">
			<c:choose>	
				<c:when test="${user eq Empty}">
					<a href="login">
						<img src="./image/nonlogin.png">
					</a>
				</c:when>
				<c:otherwise>
					<button class="dropdownbtn" id="dropdownbtn"><img src="./image/${user.profileImg}" style="width:54px; height:54px;"></button>
					<div class="dropdownContent">
						<a href="#" onmousedown="document.location.href='recipecreate'">레시피 작성하기</a>
						<a href="#" onmousedown="document.location.href='mypage'">마이페이지</a>
						<a href="#" onmousedown="document.location.href='logout'">로그아웃</a>
					</div>
				</c:otherwise>
			</c:choose>
			</div>
		</div>
	</div>
	<div class="subHeaderContainer">
		<div class="subHeaderInnerContainer">
			<a href="category.jsp">
				<strong class="subHeaderText">분류</strong>
			</a>
			<a href="recipeCreate.jsp">
				<strong class="subHeaderText">레시피 작성하기</strong>
			</a>
			<div class="headerSearchContainer">
				<input type="text" placeholder="검색어를 입력해주세요." class="searchInput"/>
				<a href="result.jsp">
					<img src="./image/search.png" style="width:35px; height:35px;">
				</a>
			</div>
		</div>
	</div>
</body>
<script>
	const button = document.querySelector('.dropdownbtn');

	button.addEventListener('click', () => {
  	const dropdown = document.querySelector('.dropdownContent');
  	dropdown.style.display = 'block';
	});

	button.addEventListener('blur', (e) => {
 	 const dropdown = document.querySelector('.dropdownContent');
 	 dropdown.style.display = '';
	});
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분류</title>
<style>
	*{
		padding:0;
		margin:0;
	}
	.headerContainer{
		width:1920px;
		height:100px;
		background:#937062;
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
		margin-left: 50px;
		cursor:pointer;
	}
	.subHeaderContainer{
		width:1920px;
		height:300px;
		background:#BFA89F;
	}
	.subHeaderInnerContainer{
		margin:0 auto;
		display:flex;
		align-items:center;
		height: 300px;
		width: 1280px;
	}
	.subHeaderMenuContainer{
		height: 300px;
		width: 155px;
		border-right: 2px solid white;
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	flex-direction: column;
	}
	.categoryMenu{
		color:white;
		font-weight: bold;
		font-size: 20px;
	}
	.subHeaderButtonContainer{
		height: 300px;
		width: 1125px;
	}
	.subHeaderTopContainer{
		height: 76px;
		width: 1125px;
	}
	.subHeaderMiddleContainer{
		height: 46px;
		width: 1125px;
	
	}
	.subHeaderBottomContainer{
		height: 76px;
		width: 1125px;
	}
	.categoryAllContainer{
		width:1920px;
		height: auto;
    	flex-wrap: wrap;
    	justify-content: center;
    	align-items: center;
	}
	.categoryIntroContainer{
		height:200px;
		width: 1920px;
	}
	.categoryMainContainer{
		width:1280px;
		height: auto;
		display:flex;
        justify-content: space-around;
	}
	.resultTypeButton{
		font-size:21px;
		text-color:white;
		font-weight: bold;
		border:none;
		border-radius:5%;
		margin-left: 20px;
    	margin-right: 20px;
    	background:#BFA89F;
    	
	}
	.resultTypeButton:hover,
	.resultTypeButton.active {
		background:#75574B;
	}
	.recipeCard{
		width: 290px;
		height: 420px;
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		display: flex;
		flex-direction: column;
	}
	.popImg{
		width: 100%;
		height: 100%;
		object-fit: cover;
		overflow: hidden;
		border-radius: 5px 5px 0 0;
	}
	.recpContents{
		margin-top: 5px;
		display: flex;
		flex-direction: column;
		text-align: center;
	}
	.popTitle{
		margin-top: 10px;
		font-size: 21px;
		font-weight: medium;
	}
	.popTime{
		margin-top: 10px;
		font-size: 21px;
		color: #616161;
		font-weight: medium;
	}
	.popCategories{
		margin-top: 10px;
		width: 290px;
		display: flex;
		flex-direction: row;
		justify-content: center;
	}
	.popCategories > p {
		margin: 0 5px;
		flex-wrap: nowrap;
		font-size: 18px;
		color: #937062;
	}
	.cateType{
		font-size: 18px;
	}
</style>
</head>
<body>
	<div class="headerContainer">
		<div class="headerInnerContainer">
			<div class="headerImgContainer">
				<a href="main">
					<img src="./image/logo_white.png">
				</a>
			</div>
			<div class="headerSearchContainer">
				<input type="text" placeholder="검색어를 입력해주세요." class="searchInput"/>
				<img src="./image/search.png" style="width:40px; height:40px;">
			</div>
			<div class="headerUserContainer">
				<img src="./image/nonlogin.png">
			</div>
		</div>	
	</div>
	<div class="subHeaderContainer">
		<div class="subHeaderInnerContainer">
			<div class="subHeaderMenuContainer">
				<p class="categoryMenu">종류별</p><br>
				<p class="categoryMenu">조리방법별</p><br>
				<p class="categoryMenu">재료별</p><br>
				<p class="categoryMenu">조리시간</p><br>
				<p class="categoryMenu">재료검색</p>
			</div>
			<div class="subHeaderButtonContainer">
				<div class="subHeaderTopContainer">
					<button class="resultTypeButton">전체</button>
					<button class="resultTypeButton">국/찌개</button>
					<button class="resultTypeButton">일품</button>
					<button class="resultTypeButton">반찬</button>
					<button class="resultTypeButton">밥</button>
					<button class="resultTypeButton">면</button>
					<button class="resultTypeButton">디저트</button>
					<button class="resultTypeButton">기타</button>
				</div>
				<div class="subHeaderMiddleContainer">
					<button class="resultTypeButton">전체</button>
					<button class="resultTypeButton">찌기</button>
					<button class="resultTypeButton">굽기</button>
					<button class="resultTypeButton">끓이기</button>
					<button class="resultTypeButton">튀기기</button>
					<button class="resultTypeButton">기타</button>
				</div>
				<div class="subHeaderMiddleContainer">
					<button class="resultTypeButton">전체</button>
					<button class="resultTypeButton">육류</button>
					<button class="resultTypeButton">해산물</button>
					<button class="resultTypeButton">채소/과일</button>
					<button class="resultTypeButton">콩/견과류</button>
					<button class="resultTypeButton">기타</button>
				</div>
				<div class="subHeaderMiddleContainer">
					<button class="resultTypeButton">전체</button>
					<button class="resultTypeButton">15분 이하</button>
					<button class="resultTypeButton">15~30분</button>
					<button class="resultTypeButton">30~45분</button>
					<button class="resultTypeButton">45~60분</button>
					<button class="resultTypeButton">60분 이상</button>
				</div>
				<div class="subHeaderBottomContainer">
					<div class="headerSearchContainer">
						<img src="./image/search.png" style="width:24px; height:24px;">
						<input type="text" placeholder="검색어를 입력해주세요." class="searchInput"/>				
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="categoryAllContainer">
	<div class="categoryIntroContainer">
		<select>
			<option>최신순</option>
			<option>추천순</option>
			<option>난이도순</option>
			<option>조리시간순</option>
		</select>
	</div>
	<div class="categoryMainContainer">
		<div class="recipeCard">
			<div class="recipeImgContainer">
				<img src="./image/example.png" alt="" class="popImg">
			</div>
			<div class="recpContents">
				<p class="popTitle">꼬마김밥</p>
				<p class="popTime">20분</p>
				<div class="popCategories">
					<p>#밥</p>
					<p>#기타</p>
					<p>#채소/과일류</p>
				</div>
			</div>
		</div>
		<div class="recipeCard">
			<div class="recipeImgContainer">
				<img src="./image/example.png" alt="" class="popImg">
			</div>
			<div class="recpContents">
				<p class="popTitle">꼬마김밥</p>
				<p class="popTime">20분</p>
				<div class="popCategories">
					<p>#밥</p>
					<p>#기타</p>
					<p>#채소/과일류</p>
				</div>
			</div>
		</div>
		<div class="recipeCard">
			<div class="recipeImgContainer">
				<img src="./image/example.png" alt="" class="popImg">
			</div>
			<div class="recpContents">
				<p class="popTitle">꼬마김밥</p>
				<p class="popTime">20분</p>
				<div class="popCategories">
					<p>#밥</p>
					<p>#기타</p>
					<p>#채소/과일류</p>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>		
</html>
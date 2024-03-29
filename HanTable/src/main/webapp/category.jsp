<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분류</title>
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
	.subHeaderTopUpContainer{
		height: 88px;
		width: 1125px;
  		display: flex;
  		flex-direction: column;
	}
	.subHeaderTopContainer{
		height: 48px;
		width: 1125px;
	    position: relative;
	    margin-top: auto;
	}
	.subHeaderMiddleContainer{
		height: 48px;
		width: 1125px;
	    position: relative;	
	}
	.subHeaderBottomContainer{
		height: 76px;
		width: 1125px;
	    position: relative;
		
	}
	.categoryIntroContainer{
		width:1920px;
		height: 200px;
		display:flex;
        justify-content: space-around;
	}
	.categoryIntroInnerContainer{
		width: 1280px;
		height:200px;
		position: relative;
	}
	.categoryMainContainer{
		width:1920px;
		height: auto;
		display:flex;
    	justify-content: space-around;
	}
	.categoryMainInnerContainer{
		width:1280px;
		height: auto;
		margin-top: 30px;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 30px;
		grid-row-gap: 40px;
    	grid-auto-flow: dense;
	}
	.resultTypeButton{
		padding: 0.1em 0.5em;
		font-size:21px;
		color:white;
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
	.resultSelect{
   		border: none;
   		position: absolute;
   		font-size: 20px;
    	right: 0;
    	bottom: 10px;
	}
	.categorySearchContainer{
		margin-left:10px;
		display:flex;
		align-items:center;
	}
	.categorySearchInput{
		width:700px;
		height:30px;
		background:none;
		margin-left: 30px;
		color: white;
		font-size:18px;
		border:none;
		border-bottom:1px solid #bdbdbd;
		padding-left:10px;
	}
	.categorySearchInput::placeholder {
    	color: white;
	}
	.like-count{
  		font-size: 24px;
  		color:white;
	}
	.like-icon {
  		width: 24px; 
 		height: 24px;
		margin-right: 5px; 
	}
	.like-container {
		position: absolute;
		bottom: 5px;
		right: 5px;
		display: flex;
		align-items: center;
	}
	.recipeImgContainer{
		width: 290px;
		height: 290px;
		position: relative;
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
				<a href="result.jsp">
					<img src="./image/search.png" style="width:40px; height:40px;">
				</a>
			</div>
			<div class="headerUserContainer">
				<a href="login">
					<img src="./image/nonlogin.png">
				</a>
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
				<div class="subHeaderTopUpContainer">
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
					<div class="categorySearchContainer">
						<a href="result.jsp">
							<img src="./image/search.png" style="width:24px; height:24px;margin-left: 30px;">
						</a>
						<input type="text" placeholder="콤마(,) 로 재료를 구분하여 한 번에 다양한 재료를 검색해보세요." class="categorySearchInput"/>				
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="categoryIntroContainer">
		<div class="categoryIntroInnerContainer">
			<select class="resultSelect">
				<option>최신순</option>
				<option>추천순</option>
				<option>조리시간순</option>
			</select>
		</div>
	</div>
	<div class="categoryMainContainer">
		<div class="categoryMainInnerContainer">
			<div class="recipeCard">
				<div class="recipeImgContainer">
					<img src="./image/example.png" alt="" class="popImg">
						<div class="like-container">
							<img src="./image/like-heart.png" class="like-icon">
							<span class="like-count">100</span>
  						</div>
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
					<img src="./image/recipe1.png" alt="" class="popImg">
						<div class="like-container">
							<img src="./image/like-heart.png" class="like-icon">
							<span class="like-count">100</span>
  						</div>
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
					<img src="./image/recipe3.png" alt="" class="popImg">
						<div class="like-container">
							<img src="./image/like-heart.png" class="like-icon">
							<span class="like-count">100</span>
  						</div>
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
					<img src="./image/recipe4.png" alt="" class="popImg">
						<div class="like-container">
							<img src="./image/like-heart.png" class="like-icon">
							<span class="like-count">100</span>
  						</div>
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
						<div class="like-container">
							<img src="./image/like-heart.png" class="like-icon">
							<span class="like-count">100</span>
  						</div>
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
	</div>	
	<div class="categoryIntroContainer">
	</div>
</body>		
</html>
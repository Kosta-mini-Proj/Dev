<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<style>
	.popContentsContainer {
		width: 1280px;
		height: auto;
		margin-bottom: 50px;
	}
	.mainContainer {
		width: 1280px;
		height: auto;
		display: flex;
		flex-direction: column;
		margin-left: 320px;
		padding-bottom: 50px;
	}
	.mainTitle{
		color: #937062;
		font-size: 24px;
		margin-top: 50px;
	}
	.popContentsContainer{
		margin-top: 30px;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 30px;
		grid-row-gap: 40px;
    	grid-auto-flow: dense;
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
	<%@ include file="header.jsp" %>
	<div class="mainContainer">
		<strong class="mainTitle">“검색어”의 검색 결과</strong>
		<div class="popContentsContainer">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>韓食堂</title>
<style>
	body{
		overflow-x: hidden;
	}
	.mainContainer {
		width: 1280px;
		height: auto;
		display: flex;
		flex-direction: column;
		margin-left: 320px;
		padding-bottom: 50px;
	}
	.recContentsContainer {
		width: 1280px;
		height: auto;
		display: grid;
		grid-template-columns: repeat(2, 620px);
        gap: 37px;
        margin-top: 30px;
	}
	.popContentsContainer {
		width: 1280px;
		height: auto;
		margin-bottom: 50px;
	}
	.mainTitle{
		color: #937062;
		font-size: 24px;
		margin-top: 50px;
	}
	.leftContent{
		display: grid;
		grid-template-rows: 620px 300px;
		gap: 30px;
	}
	.leftTopContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
	}
	.leftbottomContent{
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 25px;
	}
	.leftBottomLeftContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 295px;
		width: 295px;
		float: bottom;
	}
	.leftBottomRightContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 295px;
		width: 295px;
		float: bottom;
	}
	.rightContent{
		display: grid;
		grid-template-rows: 300px 620px;
		gap: 30px;
	}
	.rightBottomContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
	}
	.rightTopContent{
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 25px;
	}
	.rightTopLeftContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 295px;
		width: 295px;
	}
	.rightTopRightContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 295px;
		width: 295px;
	}
	.recImg {
		width: 100%;
		height: 100%;
		object-fit: cover;
		overflow: hidden;
		border-radius: inherit;
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
		<strong class="mainTitle">추천 레시피</strong>
		<div class="recContentsContainer">
			<div class="leftContent">
				<div class="leftTopContent">
					<img src="./image/example.png" alt="" class="recImg">
				</div>
				<div class="leftbottomContent">
					<div class="leftBottomLeftContent">
						<img src="./image/example.png" alt="" class="recImg">
					</div>
					<div class="leftBottomRightContent">
						<img src="./image/example.png" alt="" class="recImg">
					</div>
				</div>
			</div>
			<div class="rightContent">
				<div class="rightTopContent">
					<div class="rightTopLeftContent">
						<img src="./image/example.png" alt="" class="recImg">
					</div>
					<div class="rightTopRightContent">
						<img src="./image/example.png" alt="" class="recImg">
					</div>
				</div>
				<div class="rightBottomContent">
					<img src="./image/example.png" alt="" class="recImg">
				</div>
			</div>
		</div>
		<strong class="mainTitle">인기 레시피</strong>
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
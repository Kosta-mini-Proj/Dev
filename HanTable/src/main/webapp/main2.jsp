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
		width: 80%; /* 수정 */
		height: auto;
		display: flex;
		flex-direction: column;
		margin-left: 20%; /* 수정 */
		padding-bottom: 4%; /* 수정 */
	}
	.recContentsContainer {
		width: 80%; /* 수정 */
		height: auto;
		display: grid;
		grid-template-columns: repeat(2, 48.5%);
        gap: 3%; /* 수정 */
        margin-top: 2.5%; /* 수정 */
	}
	.popContentsContainer {
		width: 80%; /* 수정 */
		height: auto;
		margin-bottom: 4%; /* 수정 */
	}
	.mainTitle{
		color: #937062;
		font-size: 24px; /* 수정 */
		margin-top: 4%; /* 수정 */
	}
	.leftContent{
		display: grid;
		grid-template-rows: 48.5% 23.5%; /* 수정 */
		gap: 2%; /* 수정 */
	}
	.leftTopContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		position: relative;
	}
	.leftbottomContent{
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 1%; /* 수정 */
	}
	.leftBottomLeftContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 23%; /* 수정 */
		width: 23%; /* 수정 */
		float: bottom;
		position: relative;
	}
	.leftBottomRightContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 23%; /* 수정 */
		width: 23%; /* 수정 */
		float: bottom;
		position: relative;
	}
	.rightContent{
		display: grid;
		grid-template-rows: 23.5% 48.5%; /* 수정 */
		gap: 2%; /* 수정 */
	}
	.rightBottomContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		position: relative;	
	}
	.rightTopContent{
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 1%; /* 수정 */
	}
	.rightTopLeftContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 23%; /* 수정 */
		width: 23%; /* 수정 */
		position: relative;
	}
	.rightTopRightContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 23%; /* 수정 */
		width: 23%; /* 수정 */
		position: relative;
	}
	.recImg {
		width: 100%;
		height: 100%;
		object-fit: cover;
		overflow: hidden;
		border-radius: inherit;
	}
	.popContentsContainer{
		margin-top: 2.5%; /* 수정 */
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 2%; /* 수정 */
		grid-row-gap: 2.5%; /* 수정 */
    	grid-auto-flow: dense;
	}
	.recipeCard{
		width: 22.7%; /* 수정 */
		height: 33%; /* 수정 */
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
		margin-top: 1.2%; /* 수정 */
		display: flex;
		flex-direction: column;
		text-align: center;
	}
	.popTitle{
		margin-top: 1.2%; /* 수정 */
		font-size: 21px; /* 수정 */
		font-weight: medium;
	}
	.popTime{
		margin-top: 1.2%; /* 수정 */
		font-size: 21px; /* 수정 */
		color: #616161;
		font-weight: medium;
	}
	.popCategories{
		margin-top: 1.2%; /* 수정 */
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: center;
	}
	.popCategories > p {
		margin: 0 1.2%; /* 수정 */
		flex-wrap: nowrap;
		font-size: 18px; /* 수정 */
		color: #937062;
	}
	.cateType{
		font-size: 18px; /* 수정 */
	}
	.like-countbig{
 		font-size: 36px; /* 수정 */
 		color:white;
	}
	.like-count{
  		font-size: 24px; /* 수정 */
  		color:white;
	}
	.like-iconbig{
		width: 36px; /* 수정 */
		height: 36px; /* 수정 */
		margin-right: 0.4%; /* 수정 */
	}
	.like-icon {
  		width: 24px;  /* 수정 */
 		height: 24px; /* 수정 */
		margin-right: 0.4%; /* 수정 */
	}
	.like-containerbig {
		position: absolute;
		bottom: 0.8%; /* 수정 */
		right: 0.8%; /* 수정 */
		display: flex;
		align-items: center;
	}
	.like-container {
		position: absolute;
		bottom: 0.4%; /* 수정 */
		right: 0.4%; /* 수정 */
		display: flex;
		align-items: center;
	}
	.recipeImgContainer{
		width: 22.7%; /* 수정 */
		height: 22.7%; /* 수정 */
		position: relative;
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
						<div class="like-containerbig">
							<img src="./image/like-heart.png" class="like-iconbig">
							<span class="like-countbig">100</span>
  						</div>
				</div>
				<div class="leftbottomContent">
					<div class="leftBottomLeftContent">
						<img src="./image/example.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">100</span>
  							</div>
					</div>
					<div class="leftBottomRightContent">
						<img src="./image/example.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">100</span>
  							</div>
					</div>
				</div>
			</div>
			<div class="rightContent">
				<div class="rightTopContent">
					<div class="rightTopLeftContent">
						<img src="./image/example.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">100</span>
  							</div>
					</div>
					<div class="rightTopRightContent">
						<img src="./image/example.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">100</span>
  							</div>
					</div>
				</div>
				<div class="rightBottomContent">
					<img src="./image/example.png" alt="" class="recImg">
						<div class="like-containerbig">
								<img src="./image/like-heart.png" class="like-iconbig">
								<span class="like-countbig">100</span>
  						</div>
				</div>
			</div>
		</div>
		<strong class="mainTitle">인기 레시피</strong>
		<div class="popContentsContainer">
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
</body>
</html>
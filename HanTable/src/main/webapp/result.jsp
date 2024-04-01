<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<style>
	.mainContainer {
		width: 1024px;
		height: auto;
		display: flex;
		flex-direction: column;
		margin-left: 448px;
		padding-bottom: 40px;
	}
	.popContentsContainer {
		width: 1024px;
		height: auto;
		margin-bottom: 40px;
	}
	.mainTitle{
		color: #937062;
		font-size: 24px;
		margin-top: 50px;
	}
	.popContentsContainer{
		margin-top: 24px;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 24px;
		grid-row-gap: 32px;
    	grid-auto-flow: dense;
	}
	.recipeCard{
		width: 232px;
		height: 336px;
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		display: flex;
		flex-direction: column;
	}
	.popImg{
		width: 232px;
		height: 232px;
		object-fit: cover;
		overflow: hidden;
		border-radius: 5px 5px 0 0;
	}
	.recpContents{
		margin-top: 4px;
		display: flex;
		flex-direction: column;
		text-align: center;
	}
	.popTitle{
		margin-top: 8px;
		font-size: 16px;
		font-weight: medium;
	}
	.popTime{
		margin-top: 8px;
		font-size: 16px;
		color: #616161;
		font-weight: medium;
	}
	.popCategories{
		margin-top: 8px;
		width: 232px;
		display: flex;
		flex-direction: row;
		justify-content: center;
	}
	.popCategories > p {
		margin: 0 5px;
		flex-wrap: nowrap;
		font-size: 12px;
		color: #937062;
	}
	.cateType{
		font-size: 12px;
	}
	.like-count{
  		font-size: 16px;
  		color:white;
	}
	.like-icon {
  		width: 20px; 
 		height: 20px;
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
		width: 232px;
		height: 232px;
		position: relative;
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
					<img src="./image/recipe5.png" alt="" class="popImg">
						<div class="like-container">
							<img src="./image/like-heart.png" class="like-icon">
							<span class="like-count">100000</span>
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
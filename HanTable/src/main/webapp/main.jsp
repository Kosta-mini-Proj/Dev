<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ᄒᆞᆫ식당</title>
<style>
	body{
		overflow-x: hidden;
	}
	.mainContainer {
		width: 1024px;
		height: auto;
		display: flex;
		flex-direction: column;
		margin-left: 448px;
		padding-bottom: 40px;
	}
	.recContentsContainer {
		width: 1024px;
		height: auto;
		display: grid;
		grid-template-columns: repeat(2, 496px);
        gap: 28px;
        margin-top: 30px;
	}
	.popContentsContainer {
		width: 1024px;
		height: auto;
		margin-bottom: 40px;
	}
	.mainTitle{
		color: #B2402D;
		font-size: 32px;
		margin-top: 40px;
	}
	.leftContent{
		display: grid;
		grid-template-rows: 496px 240px;
		gap: 24px;
	}
	.leftTopContent{
		border: 1px solid #BDBDBD;
		border-radius: 4px;
		position: relative;
	}
	.leftbottomContent{
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 16px;		
	}
	.leftBottomLeftContent{
		border: 1px solid #BDBDBD;
		border-radius: 4px;
		height: 232px;
		width: 232px;
		float: bottom;
		position: relative;
	}
	.leftBottomRightContent{
		border: 1px solid #BDBDBD;
		border-radius: 4px;
		height: 232px;
		width: 232px;
		float: bottom;
		position: relative;
	}
	.rightContent{
		display: grid;
		grid-template-rows: 240px 496px;
		gap: 24px;
	}
	.rightBottomContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		position: relative;	
	}
	.rightTopContent{
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 20px;
	}
	.rightTopLeftContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 236px;
		width: 236px;
		position: relative;
	}
	.rightTopRightContent{
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		height: 232px;
		width: 232px;
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
	.like-countbig{
 		font-size: 28px;
 		color:white;
	}
	.like-count{
  		font-size: 16px;
  		color:white;
	}
	.like-iconbig{
		width: 28px;
		height: 28px;
		margin-right: 5px;
	}
	.like-icon {
  		width: 20px; 
 		height: 20px;
		margin-right: 5px; 
	}
	.like-containerbig {
		position: absolute;
		bottom: 10px;
		right: 10px;
		display: flex;
		align-items: center;
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
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>

</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="mainContainer">
		<strong class="mainTitle">당신을 위한 추천 레시피</strong>
		<c:forEach var="recipe" items="${mainContents}">
		<div class="recContentsContainer">
			<div class="leftContent">
				<div class="leftTopContent">
					<img src="${recipe.recpImg}" alt="" class="recImg">
						<div class="like-containerbig">
							<img src="${recipe.recpImg}" class="like-iconbig">
							<span class="like-countbig">${recipe.likeCount}</span>
  						</div>
				</div>
				<div class="leftbottomContent">
					<div class="leftBottomLeftContent">
						<img src="${recipe.recpImg}" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count">${recipe.likeCount}</span>
  							</div>
					</div>
					<div class="leftBottomRightContent">
						<img src="${recipe.recpImg}" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count">${recipe.likeCount}</span>
  							</div>
					</div>
				</div>
			</div>
			<div class="rightContent">
				<div class="rightTopContent">
					<div class="rightTopLeftContent">
						<img src="${recipe.recpImg}" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count">${recipe.likeCount}</span>
  							</div>
					</div>
					<div class="rightTopRightContent">
						<img src="${recipe.recpImg}" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count">${recipe.likeCount}</span>
  							</div>
					</div>
				</div>
				<div class="rightBottomContent">
					<img src="${recipe.recpImg}" alt="" class="recImg">
						<div class="like-containerbig">
								<img src="./image/like.png" class="like-iconbig">
								<span class="like-countbig">${recipe.likeCount}</span>
  						</div>
				</div>
			</div>
		</div>
	</c:forEach>
		<strong class="mainTitle">인기 레시피</strong>
		<div class="popContentsContainer">
		<c:forEach var="recipe" items="${recipeBox}">
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="${recipe.recpImg}" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count">${recipe.likeCount}</span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle">${recipe.recpTitle}</p>
                        <p class="popTime">${recipe.cateTime}</p>
                        <div class="popCategories">
                            <p>${recipe.cateType}</p>
                            <p>#${recipe.cateHow}</p>
                            <p>#${recipe.cateIngredient}</p>
						</div>
					</div>
			<div class="recipeCard">
				<div class="recipeImgContainer">
					<a href="recipe?recpId=${recipe.recpId }"><img src="./image/example.png" alt="" class="popImg"></a>
						<div class="like-container">
							<img src="./image/like.png" class="like-icon">
							<span class="like-count">100</span>
  						</div>
				</div>
				<div class="recpContents">
					<p class="popTitle">꼬마김밥</p>
					<p class="popTime">15분</p>
					<div class="popCategories">
						<p>#밥</p>
						<p>#기타</p>
						<p>#채소/과일류</p>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="${recipe.recpImg}" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count">${recipe.likeCount}</span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle">${recipe.recpTitle}</p>
                        <p class="popTime">${recipe.cateTime}</p>
                        <div class="popCategories">
                            <p>${recipe.cateType}</p>
                            <p>#${recipe.cateHow}</p>
                            <p>#${recipe.cateIngredient}</p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="${recipe.recpImg}" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count">${recipe.likeCount}</span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle">${recipe.recpTitle}</p>
                        <p class="popTime">${recipe.cateTime}</p>
                        <div class="popCategories">
                            <p>${recipe.cateType}</p>
                            <p>#${recipe.cateHow}</p>
                            <p>#${recipe.cateIngredient}</p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="${recipe.recpImg}" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count">${recipe.likeCount}</span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle">${recipe.recpTitle}</p>
                        <p class="popTime">${recipe.cateTime}</p>
                        <div class="popCategories">
                            <p>${recipe.cateType}</p>
                            <p>#${recipe.cateHow}</p>
                            <p>#${recipe.cateIngredient}</p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="${recipe.recpImg}" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count">${recipe.likeCount}</span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle">${recipe.recpTitle}</p>
                        <p class="popTime">${recipe.cateTime}</p>
                        <div class="popCategories">
                            <p>${recipe.cateType}</p>
                            <p>#${recipe.cateHow}</p>
                            <p>#${recipe.cateIngredient}</p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="${recipe.recpImg}" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count">${recipe.likeCount}</span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle">${recipe.recpTitle}</p>
                        <p class="popTime">${recipe.cateTime}</p>
                        <div class="popCategories">
                            <p>#${recipe.cateType}</p>
                            <p>#${recipe.cateHow}</p>
                            <p>#${recipe.cateIngredient}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
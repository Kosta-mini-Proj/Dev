<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="mainContainer">
		<strong class="mainTitle">당신을 위한 추천 레시피</strong>
		<% for (Recipe recipe : mainContents) { %>            
		
		<div class="recContentsContainer">
			<div class="leftContent">
				<div class="leftTopContent">
					<img src="./image/recipe5.png" alt="" class="recImg">
						<div class="like-containerbig">
							<img src="./image/no-like.png" class="like-iconbig">
							<span class="like-countbig"><%= recipe.getLikeCount() %></span>
  						</div>
				</div>
				<div class="leftbottomContent">
					<div class="leftBottomLeftContent">
						<img src="./image/recipe4.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count"><%= recipe.getLikeCount() %></span>
  							</div>
					</div>
					<div class="leftBottomRightContent">
						<img src="./image/example.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count"><%= recipe.getLikeCount() %></span>
  							</div>
					</div>
				</div>
			</div>
			<div class="rightContent">
				<div class="rightTopContent">
					<div class="rightTopLeftContent">
						<img src="./image/recipe3.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count"><%= recipe.getLikeCount() %></span>
  							</div>
					</div>
					<div class="rightTopRightContent">
						<img src="./image/example.png" alt="" class="recImg">
							<div class="like-container">
								<img src="./image/like.png" class="like-icon">
								<span class="like-count"><%= recipe.getLikeCount() %></span>
  							</div>
					</div>
				</div>
				<div class="rightBottomContent">
					<img src="./image/recipe1.png" alt="" class="recImg">
						<div class="like-containerbig">
								<img src="./image/like.png" class="like-iconbig">
								<span class="like-countbig"><%= recipe.getLikeCount() %></span>
  						</div>
				</div>
			</div>
		</div>
	<% } %>
		
		<strong class="mainTitle">인기 레시피</strong>
		<div class="popContentsContainer">
            <% for (Recipe recipe : recipeBox) { %>            
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="<%= recipe.getImgPath() %>" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count"><%= recipe.getLikeCount() %></span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle"><%= recipe.getrecpTitle() %></p>
                        <p class="popTime"><%= recipe.getcateTime() %></p>
                        <div class="popCategories">
                            <p>#<%= recipe.getCateType() %></p>
                            <p>#<%= recipe.getCateHow() %></p>
                            <p>#<%= recipe.getCateIngredient() %></p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="<%= recipe.getImgPath() %>" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count"><%= recipe.getLikeCount() %></span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle"><%= recipe.getrecpTitle() %></p>
                        <p class="popTime"><%= recipe.getcateTime() %></p>
                        <div class="popCategories">
                            <p>#<%= recipe.getCateType() %></p>
                            <p>#<%= recipe.getCateHow() %></p>
                            <p>#<%= recipe.getCateIngredient() %></p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="<%= recipe.getImgPath() %>" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count"><%= recipe.getLikeCount() %></span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle"><%= recipe.getrecpTitle() %></p>
                        <p class="popTime"><%= recipe.getcateTime() %></p>
                        <div class="popCategories">
                            <p>#<%= recipe.getCateType() %></p>
                            <p>#<%= recipe.getCateHow() %></p>
                            <p>#<%= recipe.getCateIngredient() %></p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="<%= recipe.getImgPath() %>" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count"><%= recipe.getLikeCount() %></span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle"><%= recipe.getrecpTitle() %></p>
                        <p class="popTime"><%= recipe.getcateTime() %></p>
                        <div class="popCategories">
                            <p>#<%= recipe.getCateType() %></p>
                            <p>#<%= recipe.getCateHow() %></p>
                            <p>#<%= recipe.getCateIngredient() %></p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="<%= recipe.getImgPath() %>" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count"><%= recipe.getLikeCount() %></span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle"><%= recipe.getrecpTitle() %></p>
                        <p class="popTime"><%= recipe.getcateTime() %></p>
                        <div class="popCategories">
                            <p>#<%= recipe.getCateType() %></p>
                            <p>#<%= recipe.getCateHow() %></p>
                            <p>#<%= recipe.getCateIngredient() %></p>
						</div>
					</div>
				</div>
                <div class="recipeCard">
                    <div class="recipeImgContainer">
                        <img src="<%= recipe.getImgPath() %>" alt="" class="popImg">
                        <div class="like-container">
                            <img src="./image/no-like.png" class="like-icon">
                            <span class="like-count"><%= recipe.getLikeCount() %></span>
                        </div>
                    </div>
                    <div class="recpContents">
                        <p class="popTitle"><%= recipe.getrecpTitle() %></p>
                        <p class="popTime"><%= recipe.getcateTime() %></p>
                        <div class="popCategories">
                            <p>#<%= recipe.getCateType() %></p>
                            <p>#<%= recipe.getCateHow() %></p>
                            <p>#<%= recipe.getCateIngredient() %></p>
						</div>
					</div>
				</div>
			<% } %>
		</div>
	</div>
</body>
</html>
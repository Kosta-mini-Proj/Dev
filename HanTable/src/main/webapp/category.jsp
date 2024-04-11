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
	.subHeaderContainer1{
		width:1920px;
		height:300px;
		background:#5E6C53;
	}
	.subHeaderInnerContainer1{
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
		width: 1024px;
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
		width:1024px;
		height: auto;
		margin-top: 24px;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 24px;
		grid-row-gap: 32px;
    	grid-auto-flow: dense;
	}
	.resultTypeButtonType{
		padding: 0.1em 0.5em;
		font-size:21px;
		color:white;
		border:none;
    	border-radius: 15px;
		margin-left: 20px;
    	margin-right: 20px;
    	background:#5E6C53;
	}
	.resultTypeButtonType:hover,
	.resultTypeButtonType.active {
		background:#800020;
	}
	.resultTypeButtonHow{
		padding: 0.1em 0.5em;
		font-size:21px;
		color:white;
		border:none;
    	border-radius: 15px;
		margin-left: 20px;
    	margin-right: 20px;
    	background:#5E6C53;
	}
	.resultTypeButtonHow:hover,
	.resultTypeButtonHow.active {
		background:#800020;
	}
	.resultTypeButtonTime{
		padding: 0.1em 0.5em;
		font-size:21px;
		color:white;
		border:none;
    	border-radius: 15px;
		margin-left: 20px;
    	margin-right: 20px;
    	background:#5E6C53;
	}
	.resultTypeButtonTime:hover,
	.resultTypeButtonTime.active {
		background:#800020;
	}
	.resultTypeButtonIngredient{
		padding: 0.1em 0.5em;
		font-size:21px;
		color:white;
		border:none;
    	border-radius: 15px;
		margin-left: 20px;
    	margin-right: 20px;
    	background:#5E6C53;
	}
	.resultTypeButtonIngredient:hover,
	.resultTypeButtonIngredient.active {
		background:#800020;
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
	.categorySearchContainer{
		margin-left:10px;
		display:flex;
		align-items:center;
	}
	.resultSelect{
   		border: none;
   		position: absolute;
   		font-size: 20px;
    	right: 0;
    	bottom: 10px;
	}
</style>
<script>
//버튼 클릭 이벤트 핸들러
function categoryButtonClick(category) {
    // Ajax를 통해 서버에 해당 카테고리를 요청
    var xhr = new XMLHttpRequest();
    xhr.open('GET', 'RecipeController?category=' + category, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            // 서버로부터 받은 데이터를 처리하여 화면에 표시
            var recipeBox = JSON.parse(xhr.responseText);
            displayRecipes(recipeBox);
        }
    };
    xhr.send();
}

// 받은 데이터를 화면에 표시하는 함수
function displayRecipes(recipeBox) {
    // 레시피 박스 영역을 비움
    var container = document.querySelector('.categoryMainInnerContainer');
    container.innerHTML = '';

    // 각 레시피를 순회하면서 HTML 생성
    recipeBox.forEach(function(recipe) {
        var recipeCard = document.createElement('div');
        recipeCard.className = 'recipeCard';
        // ... 나머지 레시피 정보를 추가하고 생성된 HTML을 화면에 추가
        container.appendChild(recipeCard);
    });
}

// 각 버튼에 클릭 이벤트 핸들러 등록
document.querySelector('.resultTypeButtonType').addEventListener('click', function() {
    categoryButtonClick('전체');
});
document.querySelector('.resultTypeButtonHow').addEventListener('click', function() {
    categoryButtonClick('찌기');
});
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="subHeaderContainer1">
		<div class="subHeaderInnerContainer1">
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
						<button class="resultTypeButtonType active" onclick="toggleActiveType(this)">전체</button>
						<button class="resultTypeButtonType" onclick="toggleActiveType(this)">국/찌개</button>
						<button class="resultTypeButtonType" onclick="toggleActiveType(this)">일품</button>
						<button class="resultTypeButtonType" onclick="toggleActiveType(this)">반찬</button>
						<button class="resultTypeButtonType" onclick="toggleActiveType(this)">밥</button>
						<button class="resultTypeButtonType" onclick="toggleActiveType(this)">면</button>
						<button class="resultTypeButtonType" onclick="toggleActiveType(this)">디저트</button>
						<button class="resultTypeButtonType" onclick="toggleActiveType(this)">기타</button>
					</div>
				</div>
				<div class="subHeaderMiddleContainer">
					<button class="resultTypeButtonHow active" onclick="toggleActiveHow(this)">전체</button>
					<button class="resultTypeButtonHow" onclick="toggleActiveHow(this)">찌기</button>
					<button class="resultTypeButtonHow" onclick="toggleActiveHow(this)">굽기</button>
					<button class="resultTypeButtonHow" onclick="toggleActiveHow(this)">끓이기</button>
					<button class="resultTypeButtonHow" onclick="toggleActiveHow(this)">튀기기</button>
					<button class="resultTypeButtonHow" onclick="toggleActiveHow(this)">기타</button>
				</div>
				<div class="subHeaderMiddleContainer">
					<button class="resultTypeButtonIngredient active" onclick="toggleActiveIngredient(this)">전체</button>
					<button class="resultTypeButtonIngredient" onclick="toggleActiveIngredient(this)">육류</button>
					<button class="resultTypeButtonIngredient" onclick="toggleActiveIngredient(this)">해산물</button>
					<button class="resultTypeButtonIngredient" onclick="toggleActiveIngredient(this)">채소/과일</button>
					<button class="resultTypeButtonIngredient" onclick="toggleActiveIngredient(this)">콩/견과류</button>
					<button class="resultTypeButtonIngredient" onclick="toggleActiveIngredient(this)">기타</button>
				</div>
				<div class="subHeaderMiddleContainer">
					<button class="resultTypeButtonTime active" onclick="toggleActiveTime(this)">전체</button>
					<button class="resultTypeButtonTime" onclick="toggleActiveTime(this)">15분 이하</button>
					<button class="resultTypeButtonTime" onclick="toggleActiveTime(this)">15~30분</button>
					<button class="resultTypeButtonTime" onclick="toggleActiveTime(this)">30~45분</button>
					<button class="resultTypeButtonTime" onclick="toggleActiveTime(this)">45~60분</button>
					<button class="resultTypeButtonTime" onclick="toggleActiveTime(this)">60분 이상</button>
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
							<img src="./image/like.png" class="like-icon">
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
							<img src="./image/like.png" class="like-icon">
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
							<img src="./image/like.png" class="like-icon">
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
							<img src="./image/like.png" class="like-icon">
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
							<img src="./image/like.png" class="like-icon">
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
	<script>
        function toggleActiveType(button) {
            button.classList.toggle('active');

            var buttons = document.querySelectorAll('.resultTypeButtonType');
            buttons.forEach(function(btn) {
                if (btn !== button) {
                    btn.classList.remove('active');
                }
            });
        }
    </script>
	<script>
        function toggleActiveHow(button) {
            button.classList.toggle('active');

            var buttons = document.querySelectorAll('.resultTypeButtonHow');
            buttons.forEach(function(btn) {
                if (btn !== button) {
                    btn.classList.remove('active');
                }
            });
        }
    </script>
	<script>
        function toggleActiveTime(button) {
            button.classList.toggle('active');

            var buttons = document.querySelectorAll('.resultTypeButtonTime');
            buttons.forEach(function(btn) {
                if (btn !== button) {
                    btn.classList.remove('active');
                }
            });
        }
    </script>
	<script>
        function toggleActiveIngredient(button) {
            button.classList.toggle('active');

            var buttons = document.querySelectorAll('.resultTypeButtonIngredient');
            buttons.forEach(function(btn) {
                if (btn !== button) {
                    btn.classList.remove('active');
                }
            });
        }
    </script>
</body>		
</html>
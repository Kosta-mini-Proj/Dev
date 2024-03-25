<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .recipeContainer {
      width:1920px;
      margin: 0;
   }
   
   .recipeInnerContainer {
      width:1280px;
      margin:0 auto;
   }
   
   .recipeTitle {
      font-size : 30px;
      color : #937062;
      font-weight: bold;
   }
   
   .line {
      width:860px;
      height : 0.5px;
      background-color: brown;
   }
   
   .recipeInnerContainer>.left {
      float:left;
      margin:0 auto;
   }
   
   .recipeInnerContainer>.right {
      float:right;
      width: 410px;
      margin:0 auto;
   }
    
   .no-like{
      width:30px;
      height:30px;
   }
   
   .imgs {
      float:right;
      margin:10px;
   }
   
   .recipeIntro{
   width: 835px;
   height: 160px;
   left: 321px;
   top: 377px;
   font-family: 'Inter';  /* 폰트 설정 */ 
   font-style: normal;
   font-weight: 500;
   font-size: 24px;
   line-height: 29px;

   color: #000000;
}

/* #반찬 #기타 #채소 #150kcal~300kcal #30분 */
.recipeCate {
   position: absolute;
   width: 493px;
   height: 29px;
   left: 332px;
   top: 600px;

   font-family: 'Inter';
   font-style: normal;
   font-weight: 400;
   font-size: 24px;
   line-height: 29px;
   /* identical to box height */
   display: flex;
   align-items: center;

   color: #937062;
}

.recipeMainImg {
 /* image 6 */

width: 410px;
height: 410px;
top: 279px;
}

.recipeIngredient {
   margin-top:560px
}

.ingredientContent {
   height: 130px;
   left: 321px;
   top: 377px;
   font-family: 'Inter';  /* 폰트 설정 */ 
   font-style: normal;
   font-weight: 500;
   font-size: 24px;
   line-height: 29px;
}

.informationImg {
   width:15px;
   height:15px;
}

.inform{
   font-size:15px;
   color : #937062;
}


</style>

</head>
<body>
<% pageContext.include("header.jsp"); %>
<div class="recipeContainer" id="recipeContainer">
   <div class="recipeInnerContainer" id="recipeContainer">
      <div class="left" id="left">
         
            <br><br><br>
            <span class="recipeTitle" id="recipeTitle" width="800px">바질 김치</span><span class="imgs" id="imgs"><img class="no-like" id="no-like" src="image/no-like-heart.png"></span>
            <br><br><hr class="line" id="line">
            <br>
            <div class="Intro" id="Intro">
               <p class="recipeIntro" id="recipeIntro">바질에 김치 양념을 버무려 보세요. 향긋함이 살아 있는 색다른 김치가 완성된답니다! 
               서양 요리의 대표 식재료인 바질과 우리나라의 김치가 만나 동서양이 아주 조화롭게 어울리는 맛이 탄생해요. 
               특히 파스타 등 양식과 아주 잘 어울려요.</p>
               
               <p class="recipeCate" id="recipeCate">#반찬 #기타 #채소 #150kcal~300kcal #30분</p>
            </div>
            
         
      </div>
      <div class="right" id="right">
         <br><br><br><img class="recipeMainImg" id="recipeMainImg" src="image/bajil.jpg"/>
      </div>
      <br>
      <div class="recipeIngredient" id="recipeIngredient">
         <span class="recipeTitle" id="recipeTitle" width="800px">재료</span>
            <br><br><hr class="line" id="line"><br>
            <p class="ingredientContent" id="ingredientContent">참치액젓 1 큰술,  진간장 1/2 큰술, 설탕 1/2 큰술, 고춧가루 2 큰술, 갈아 만든 배 3 큰술,
             다진 마늘 1/2 큰술,  쪽파 3 줄기, 통깨 적당량</p>
             <p class="inform" id="inform"><img class="informationImg" id="informationImg" src="image/information.png">&nbsp;재료를 클릭하여 상품을 조회하세요</p>
      </div>
      
      <div class="recipeContent" id="recipeContent">
         <br><br><br><br><span class="recipeTitle" id="recipeTitle" width="800px">레시피</span>
            <br><br><hr class="line" id="line"><br>
      </div>
      
   </div>
</div>
</body>
</html>
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
   
   .recipeRecipeComment {
      font-size : 30px;
      color : #937062;
      font-weight: bold;
   } 
   
   .line {
      width:860px;
      height : 0.5px;
      background-color: brown;
   }
   
   .recipeLine {
   	  width: 1280px;
	  height: 0px;

	  border: 1px solid #BFA89F;

	  /* Inside auto layout */
	  flex: none;
	  order: 1;
	  flex-grow: 0;
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
      vertical-align : middle;
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

.intro {
	margin-top: 65px;
}

.recipeMainImg {
 /* image 6 */

width: 410px;
height: 410px;
top: 279px;
}

.recipeContent {
	margin-top:120px;
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

.contentViewer {
	width:1280px;
	margin 0;
}

.recipeComment {
	/* position: absolute; */
	width: 1280px;
	left: 315px;
	/* top: 2773px; */
	margin-top:2000px;
}

/* . */

.commentImg{
	position: absolute;
	width: 12px;
	height: 47px;
	left: 1554px;
	top: 2896px;
	font-family: 'Inter';
	font-style: normal;
	font-weight: 500;
	font-size: 40px;
	line-height: 48px;
	color: #000000;
	
}

.kebab {
	width:45px;
	height:45px;
	float:right;
	vertical-align : middle;
}
/* position: absolute;
width: 12px;
height: 47px;
left: 1554px;
top: 2896px;

font-family: 'Inter';
font-style: normal;
font-weight: 500;
font-size: 40px;
line-height: 48px;

color: #000000; */




</style>

</head>
<body>
<% pageContext.include("header.jsp"); %>
<div class="recipeContainer" id="recipeContainer">
   <div class="recipeInnerContainer" id="recipeContainer">
      <div class="left" id="left">
         
            
            
            <div class="intro" id="intro">
            	<span class="recipeTitle" id="recipeTitle" width="800px">바질 김치</span><span class="imgs" id="imgs"><img class="no-like" id="no-like" src="image/no-like-heart.png"></span>
            	<br><br><hr class="line" id="line">
            	<br>
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
      
      <!-- 재료 -->
      <div class="recipeIngredient" id="recipeIngredient">
         <span class="recipeTitle" id="recipeTitle" width="800px">재료</span>
            <br><br><hr class="recipeLine" id="recipeLine"><br>
            <p class="ingredientContent" id="ingredientContent">참치액젓 1 큰술,  진간장 1/2 큰술, 설탕 1/2 큰술, 고춧가루 2 큰술, 갈아 만든 배 3 큰술,
             다진 마늘 1/2 큰술,  쪽파 3 줄기, 통깨 적당량</p>
             <p class="inform" id="inform"><img class="informationImg" id="informationImg" src="image/information.png">&nbsp;재료를 클릭하여 상품을 조회하세요</p>
      </div>
      
      <!-- 작성된 레시피 설명 -->
      <div class="recipeContent" id="recipeContent">
         <span class="recipeTitle" id="recipeTitle" width="800px">레시피</span>
            <br><br><hr class="recipeLine" id="recipeLine"><br>
            <!-- 뷰어 -->
            <div class="contentViewer" id="contentViewer">
            
            </div>
            
             <!-- toast ui viewer js -->
    <!-- <script src="https://uicdn.toast.com/editor/3.0.2/toastui-editor-viewer.min.js"></script> -->
    
    <!-- toast ui all js -->
    <script src="https://uicdn.toast.com/editor/3.0.2/toastui-editor-all.min.js"></script>
    <script>
        //Viewer용 CDN을 사용할 경우
        // const editor = new toastui.Editor({
        //     el : document.querySelector(".toast-custom-viewer"),
        //     initialValue : "Hello toast ui editor~!"
        // });

        //전체(ALL)용 CDN을 사용할 경우
        const editor = toastui.Editor.factory({
            el : document.querySelector("#contentViewer"),
            viewer:true,
            initialValue : "Hello toast ui editor~!"
        });
    </script>
      </div>
      
      <div class="viewNameDate" id="viewNameDate">
      <span class="views" id="views">조회수 : 1024</span> <span class="nameDate" id="nameDate">작성자 : OOO 작성일자 : 2024-02-13</span>
      </div>
      
      <!-- 댓글 -->
       <div class="recipeComment" id="recipeComment">
         <span class="recipeRecipeComment" id="recipeRecipeComment" width="800px">댓글</span>
            <br><br><hr class="recipeLine" id="recipeLine"><br>
            <div class="recipeRecipeCommentLeft" id="recipeRecipeCommentLeft">
            <span class="ingredientContent" id="ingredientContent" width="800px">아이디</span>
            &nbsp;&nbsp;&nbsp;
            <span class="ingredientContent" id="ingredientContent" width="800px">2024-03-25</span>
            </div>
            <!-- <p class="ingredientContent" id="ingredientContent">아이디 </p> &nbsp;&nbsp;&nbsp; -->  
			<div class="recipeRecipeCommentRight" id="recipeRecipeCommentRight">
			<img class="kebab" id="kebab" src="image/kebab.png">
			</div>
			<hr class="recipeLine" id="recipeLine">
			
      </div>
      
      
   </div>
</div>
</body>
</html>
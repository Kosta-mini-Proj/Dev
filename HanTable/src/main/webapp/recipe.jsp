<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피 상세 보기</title>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
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
      color : #B2402D;
      font-weight: bold;
   }
   
   .recipeCommentContainer {
   	  width: 1280px;
  	  margin:0 auto;
      margin-top:100px;
	}
	
	.recipeCommentTitle {
      font-size : 30px;
      color : #B2402D;
      font-weight: bold;
   }
   
   .line {
      width:860px;
      background-color: #c2c2c2;
   }
   
   .recipeLine {
     width: 1280px;
     height: 0px;
     border: 1px solid #c2c2c2;
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
      margin-left:-15px;
      vertical-align : middle;
   }
   
   .dropdownTitle {
   	  float:right;
   	  margin-right:10px;
      vertical-align : middle;
   }
   
   .imgs {
   	  float:right;
   	  margin-right:15px;
      vertical-align : middle;
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
   display: flex;
   align-items: center;

   color: #800020;
}

.intro {
   margin-top: 65px;
}

.recipeMainImg {
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
   color : #800020;
}

.contentViewer {
   width:1280px;
   margin 0;
}

.contentViewer {
   width:1280px;
   margin: 0;
   height: 2000px;
   font-size:15px;
}

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

.recipeRecipeCommentLeft{
   float:left;
}


.recipeRecipeCommentRight {
   float:right;
}

.Contentkebab {
   width:20px;
   height:20px;
   float:right;
   margin-top:20px;
}

.views {
   float:left;
}

.nameDate {
   float:right;
}

.moreComment {
   box-sizing: border-box;
   position: absolute;
   width: 253px;
   height: 59px;
   left: 828px;
   top: 3500px;
   background: #FFFFFF;
   border: 1px solid #D9D9D9;
   border-radius: 5px;
}

.moreComment:hover{
   background: #F5F5F5;
}

.addComment {
   position: absolute;
   width: 1160px;
   height: 120px;
   font-size:20px;
   left: 315px;
   top: 3600px;
   
}

.addCommentBtn {
   box-sizing: border-box;
   position: absolute;
   width: 120px;
   height: 123px;
   left: 1478px;
   top: 3600px;
   background: #FFFFFF;
   border: 1px solid #616161;
   
}

.addCommentBtn:hover{
		background: #F5F5F5;
}

.toastui-editor {
	font-size: 100px;
}

.dropdownbtn {
	background-color:#ffffff;
	color:#ffffff;
	border: none;
}

.dropdownbtn img {
   	  width:30px;
   	  height:30px;
   	  margin-left:10px;
   	  vertical-align : middle;
}

.dropdown {
	position:relative;
	display:inline-block;
}

.dropdownContent {
  display: none;
  position: absolute;
  background-color: #ffffff;
  min-width: 130px;
  z-index: 1;
}

.dropdownContent button {
   background-color: #ffffff;
   padding: 12px 16px;
   width: 130px;
   height:55px;
   font-size: 20px;
   text-align: center;
   position: relative;
}

.dropdownContent button:hover {
   background: #F5F5F5;
}

.dropdown:hover .dropdownContent {
   display: block;
}
</style>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<% pageContext.include("header.jsp"); %>
<div class="recipeContainer" id="recipeContainer">
   <div class="recipeInnerContainer" id="recipeContainer">
      <div class="left" id="left">
          
            
            
            <div class="intro" id="intro">
               <span class="recipeTitle" id="recipeTitle" width="800px">${recpTitle}</span>
               <div class="dropdown" style="float:right;">
                  <button class="dropdownbtn"><img class="titlekebab" id="titlekebab" src="image/kebab.png" alt="Dropdown"></button>
                  	<div class="dropdownContent" id="dropdownContent">
                  		<button onmousedown="document.location.href='recipemodify'">수정</button>
                  		<button style="border-top:none;">삭제</button>
                  	</div>       
               </div>
               <div class="imgs" id="imgs"><img class="no-like" id="no-like" src="image/no-like.png"></div>
               <br><br><hr class="line" id="line">
               <br>
               <p class="recipeIntro" id="recipeIntro">${recpIntro}</p>
               
               <p class="recipeCate" id="recipeCate">#${cateType} #${cateHow} #${cateIngredient} #${cateTime}</p>
            </div>
            
         
      </div>
      <div class="right" id="right">
         <br><br><br><img class="recipeMainImg" id="recipeMainImg" src="image/recipe4.png"/>
      </div>
      <br>
      
      <!-- 재료 -->
      <div class="recipeIngredient" id="recipeIngredient">
         <span class="recipeTitle" id="recipeTitle" width="800px">재료</span>
            <br><br><hr class="recipeLine" id="recipeLine"><br>
            <p class="ingredientContent" id="ingredientContent">${recpIngredient}</p>
             <p class="inform" id="inform"><img class="informationImg" id="informationImg" src="image/information.png">&nbsp;재료를 클릭하여 상품을 조회하세요</p>
      </div>
      
      <!-- 작성된 레시피 설명 -->
      <div class="recipeContent" id="recipeContent">
         <span class="recipeTitle" id="recipeTitle" width="800px">레시피</span>
            <br><br><hr class="recipeLine" id="recipeLine"><br>
            <!-- 뷰어 -->
            <div class="contentViewer" id="contentViewer">
            
            </div>
    
    <!-- toast ui all js -->
    <script src="https://uicdn.toast.com/editor/3.0.2/toastui-editor-all.min.js"></script>
    <script>
        //전체(ALL)용 CDN을 사 용할 경우
        const editor = toastui.Editor.factory({
            el : document.querySelector("#contentViewer"),
            viewer:true,
            width: '1280px',
            initialValue : "Hello toast ui editor~!"
        });
    </script>
      </div>
      
      <div class="viewNameDate" id="viewNameDate">
      <span class="views" id="views">조회수 : 1024</span> <span class="nameDate" id="nameDate">작성자 : OOO 작성일자 : 2024-02-13</span>
      </div>
      <!-- 댓글 -->
       <div class="recipeCommentContainer" id="recipeCommentContainer">
         <span class="recipeCommentTitle" id="recipeCommentTitle">댓글</span>
            <br><br><hr class="recipeLine" id="recipeLine"><br>
            <div>
            <div class="recipeRecipeCommentLeft" id="recipeRecipeCommentLeft">
            <span class="ingredientContent" id="ingredientContent">아이디</span>
            &nbsp;&nbsp;&nbsp;
            <span class="ingredientContent" id="ingredientContent">2024-03-25</span><br><br>
            <span>너무너무너무 너무너무너무 맛있어요</span>
            </div>
             
         <div class="recipeRecipeCommentRight" id="recipeRecipeCommentRight">
         	<div class="dropdown" style="float:right; margin-top:15px;">
                 <button class="dropdownbtn"><img class="titlekebab" id="titlekebab" src="image/kebab.png" alt="Dropdown"></button>
                  <div class="dropdownContent" id="dropdownContent">
                  		<button>수정</button>
                  		<button style="border-top:none;">삭제</button>
                  </div>       
            </div>
        <!--  <button class="kebab" id="kebab"><img class="Contentkebab" id="Contentkebab" src="image/kebab.png"></button> -->
         </div>
         <br><br><br><br><hr class="recipeLine" id="recipeLine"><br>
         </div>
         <button type="submit" class="moreComment" id="moreComment">더보기</button>
      </div>
      
      <div class="addCommentContainer" id="addCommentContainer">
            <textarea class="addComment" id="addComment" type="text" placeholder="댓글 입력 공간입니다."></textarea>
            <button class="addCommentBtn" id="addCommentBtn" type="submit">등록</button>
      </div>
   </div>
</div>
</body>
<script>
	const button = document.querySelector('.dropdownbtn');

	button.addEventListener('click', () => {
		const dropdown = document.querySelector('.dropdownContent');
		dropdown.style.display = 'block';
	});

	button.addEventListener('blur', (e) => {
	 	const dropdown = document.querySelector('.dropdownContent');
	 	dropdown.style.display = '';
	});
</script>
</html>
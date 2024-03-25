<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<style>

.recipeCreateContainer {
   width: 1920px;
   
}

.recipeCreateInnerContainer {
   width:1280px;
   margin: 0 auto;
}

.left {
   width:860px;
   height:500px;
   float:left;
   font-size: 25px;
}

.right {
   width: 420px;
   height:500px;
   float:right;
   margin: 0 auto;
}



.createContentLine {
    display: inline; /* 인라인 요소로 지정 */
  }

.createContentLine p {
    margin: 0; /* 제목의 위아래 여백 제거 */
    width: 150px; /* p 태그의 너비 값 설정 */
    font-weight:bold;
    padding : 10px;
    display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 너비 속성이 적용되도록 함 */
}

.createContentLine input {
    width: 600px; /* input 태그의 너비 값 설정 */
    display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 너비 속성이 적용되도록 함 */
    height:30px;
    vertical-align : middle;
    border-radius: 5px;
}

.createContentLine select {
    font-size: 15px;
    text-align: center;
    height:30px;
    vertical-align : middle;
    margin : 0;
    width: 110px;
    margin-left:-10px;
    margin-right:50px;
    display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 너비 속성이 적용되도록 함 */
    border-radius: 5px;
}


h1 {
   color: #937062;
}

.recipeTitle {
   font-size: 20px;
   width:200px;
   block:inline;
}

.titleIngredient {
   
}

#editor {
   margin-top : 505px;
}

.file-input {
    border: 2px solid #ccc; /* 테두리 스타일 및 두께 */
    padding: 10px; /* 내부 여백 */
    border-radius: 5px; /* 테두리 모서리 둥글게 */
    display: inline-block; /* 인라인 요소로 표시 */
}

/* 선택된 이미지의 크기 설정 */
#mainimg {
    max-width: 100%;
    max-height: 300px; /* 원하는 최대 높이 */
}

.mainImgButton {
   width:300px;
   height:300px
}

.ingredient {
   height: 100Px;
}

.recipeCreateInnerContainer .finishBtn {
    background-color: #937062; /* 갈색 배경색 */
    color: white; /* 텍스트 색상 */
    position: relative;
    margin-top: 1100px;
    width: 300px; /* 가로 크기 */
    height: 50px; /* 세로 크기 */
    text-align: center; /* 텍스트 가운데 정렬 */
    line-height: 50%; /* 버튼 높이와 동일하게 텍스트 높이 조절 */
    border: none; /* 테두리 제거 */
    display: block; /* 블록 요소로 지정하여 가로 중앙 정렬을 위해 필요 */
    margin: 0 auto; /* 가로 중앙 정렬 */
    font-size: 16px; /* 폰트 크기 */
    font-weight: bold; /* 폰트 굵기 */
    border-radius: 5px; /* 버튼 모서리 둥글게 */
}

/* 바질에 김치 양념을 버무려 보세요. 향긋함이 살아 있는 색다른 김치가 완성된답니다! 서양 요리의 대표 식재료인 바질과 우리나라의 김치가 만나 동서양이 아주 조화롭게 어울리는 맛이 탄생해요. 특히 파스타 등 양식과 아주 잘 어울려요. */


</style>
</head>
<body>
   <%
   pageContext.include("header.jsp");
   %>
   <div class="recipeCreateContainer" id="recipeCreateContainer">
   <div class="recipeCreateInnerContainer" id="recipeCreateInnerContainer">
      <br><br><br><h1>레시피 등록</h1><br><br>
      <div class="left">
      
         <div class="createContentLine">
            <p>레시피 제목</p><input class="input" id="input" type="text">
         </div>
         <br>
         <div class="createContentLine">
            <p>요리 소개</p><input type="text">
         </div>
         <br>
         <div class="createContentLine">
            <p>분류</p>
            <select>
                  <option>종류별</option>
                  <option>국/찌개</option>
                  <option>일품</option>
                  <option>반찬</option>
                  <option>밥</option>
                  <option>면</option>
                  <option>디저트</option>
                  <option>기타</option>
            </select> <select>
                  <option>조리방법별</option>
                  <option>찌기</option>
                  <option>굽기</option>
                  <option>끓이기</option>
                  <option>튀기기</option>
                  <option>기타</option>
            </select> <select>
                  <option>재료별</option>
                  <option>육류</option>
                  <option>해산물</option>
                  <option>채소/과일</option>
                  <option>콩/견과류</option>
                  <option>기타</option>
            </select> <select>
                  <option>조리시간</option>
                  <option>15분 이하</option>
                  <option>15분~30분</option>
                  <option>30분~45분</option>
                  <option>45분~60분</option>
                  <option>60분 이상</option>
            </select>
         </div>
         <br>
         <div class="createContentLine">
            <p class="titleIngredient" id="titleIngredient">재료</p><input class="ingredient" id="ingredient" type="text">
         </div>
         
      </div>
      
      <div class="right">
         <input type="file" id="imgInput" style="display: none;" accept="image/*">
               <button class="mainImgButton" id="mainImgButton">이미지 선택</button>
      </div>
      <br>
      
      <!-- 에디터를 적용할 요소 (컨테이너) -->
      <div id="editor"></div>

      <!-- TUI 에디터 JS CDN -->
      <script
         src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
      <script>
         const editor = new toastui.Editor({
            el : document.querySelector('#editor'),
            width : '1280px',
            height : '800px',
            initialValue : '해당 요리에 대한 레시피의 자세한 설명을 자유롭게 입력하세요.', // 초기 설명 (토스트ui editor에서 사용자가 입력하기전 설명해주는 부분)
            initialEditType : 'wysiwyg',
         });
      </script>
      
      <br><br><button class="finishBtn" id="finishBtn" type="submit">등 록</button><br><br>
   </div>
   </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>레시피 수정</title>
<link rel="stylesheet"
	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<style>
.recipeCreateContainer {
	width: 1920px;
}

.recipeCreateInnerContainer {
	width: 1280px;
	margin: 0 auto;
}

.left {
	width: 860px;
	height: 500px;
	float: left;
	font-size: 25px;
}

.right {
	width: 420px;
	height: 500px;
	float: right;
	margin: 0 auto;
}

p {
	font-size: 20px;
	font-weight: bold;
}

.createContentLine {
	display: inline; /* 인라인 요소로 지정 */
	margin: 0;
	gap: 50px;
}

.createContentLine p {
	margin: 0; /* 제목의 위아래 여백 제거 */
	width: 150px; /* p 태그의 너비 값 설정 */
	padding: 10px;
	display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 너비 속성이 적용되도록 함 */
	vertical-align: middle;
}

.createContentLine .inputTitle {
	width: 645px; /* input 태그의 너비 값 설정 */
	display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 너비 속성이 적용되도록 함 */
	height: 40px;
	font-size: 20px;
	vertical-align: middle;
	background: #FFFFFF;
	border: 1px solid #c2c2c2;
	border-radius: 5px;
}

.createContentLine .inputIntro {
	width: 645px; /* input 태그의 너비 값 설정 */
	font-size: 20px;
	display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 너비 속성이 적용되도록 함 */
	height: 40px;
	vertical-align: middle;
	background: #FFFFFF;
	border: 1px solid #c2c2c2;
	border-radius: 5px;
}

.createContentLine .ingredient {
	box-sizing: border-box;
	vertical-align: middle;
	position: absolute;
	width: 645px;
	height: 164px;
	top: 550px;
	background: #FFFFFF;
	border: 1px solid #c2c2c2;
	border-radius: 5px;
}

.createContentLine select {
	font-size: 15px;
	text-align: center;
	height: 40px;
	vertical-align: middle;
	margin: 0;
	width: 130px;
	margin-left: -10px;
	margin-right: 43px;
	display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 너비 속성이 적용되도록 함 */
	background: #FFFFFF;
	border: 1px solid #c2c2c2;
	border-radius: 5px;
}

h1 {
	color: #B2402D;
}

.recipeTitle {
	font-size: 20px;
	width: 200px;
	block: inline;
}

.recipeContent {
	position: relative;
	margin-top: 505px;
}

.imgInput {
	border: 2px solid #ccc; /* 테두리 스타일 및 두께 */
	padding: 10px; /* 내부 여백 */
	border-radius: 5px; /* 테두리 모서리 둥글게 */
	display: inline-block; /* 인라인 요소로 표시 */
}

.mainImage {
	position: absolute;
	width: 415px;
	height: 415px;
	left: 1180px;
	background: #D9D9D9;
	border-radius: 5px;
}

.ingredient {
	height: 100Px;
	font-size: 20px;
}

.recipeCreateInnerContainer .finishBtn {
	background-color: #800020; /* 갈색 배경색 */
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

.finishBtn:hover {
	background: #BF917E;
}

.editorContent {
	visibility: hidden;
}
</style>

<!-- TOAST UI Editor CDN URL(CSS) ?-->
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css" />
<link rel="stylesheet"	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<script	src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<form action="recipecreate" method="post" enctype="multipart/form-data"
		name="recipecreateform" id="recipecreateform">

		<div class="recipeCreateContainer" id="recipeCreateContainer">
			<div class="recipeCreateInnerContainer"
				id="recipeCreateInnerContainer">
				<br>
				<br>
				<br>
				<h1>레시피 수정</h1>
				<br>
				<br>
				<div class="left">

					<div class="createContentLine">
						<p>레시피 제목</p>
						<input class="inputTitle" id="inputTitle" name="recpTitle"
							type="text" maxlength="13">
					</div>
					<br> <br>
					<div class="createContentLine">
						<p>요리 소개</p>
						<textarea class="inputIntro" id="inputIntro" name="recpIntro"
							type="text" maxlength="350"></textarea>
					</div>
					<br> <br>
					<div class="createContentLine" id="selectContainer">
						<p>분류</p>
						<select class="cate-type" id="cate-type" name="cateType">
							<option>종류별</option>
							<option>국/찌개</option>
							<option>일품</option>
							<option>반찬</option>
							<option>밥</option>
							<option>면</option>
							<option>디저트</option>
							<option>기타</option>
						</select> <select class="cate-how" id="cate-how" name="cateHow">
							<option>조리방법별</option>
							<option>찌기</option>
							<option>굽기</option>
							<option>끓이기</option>
							<option>튀기기</option>
							<option>기타</option>
						</select> <select class="cate-ingredent" id="cate-ingredent"
							name="cateIngredient">
							<option>재료별</option>
							<option>육류</option>
							<option>해산물</option>
							<option>채소/과일</option>
							<option>콩/견과류</option>
							<option>기타</option>
						</select> <select class="cate-time" id="cate-time" name="cateTime">
							<option>조리시간</option>
							<option>15분 이하</option>
							<option>15분~30분</option>
							<option>30분~45분</option>
							<option>45분~60분</option>
							<option>60분 이상</option>
						</select>
					</div>
					<br>
					<br>
					<div class="createContentLine">
						<p class="titleIngredient" id="titleIngredient">재료</p>
						<textarea class="ingredient" id="ingredient" name="recpIngredient"
							type="text" maxLength="300"></textarea>
						<br>
					</div>
				</div>

				<div class="right">
					<input type="file" id="mainImgInput" accept="image/*" style="display: none;" name="file"> 
					<label for="mainImgInput"	id="imagePreview">
						<img class="mainImage" id="mainImage" name="recpImg" src="#" alt="Selected Image">
					</label>
				</div>
				<br>

				<!-- 에디터를 적용할 요소 (컨테이너) -->
				<div class="recipeContent" id="recipeContent"></div>
				<input type="hidden" name="recpCont" id="recpCont"/>
				<br>
				<br>
				<button class="finishBtn" id="finishBtn" type="submit">수 정</button>
				<br>
				<br>
			</div>
		</div>
	</form>
</body>

<script>
	<!-- TUI 에디터 JS CDN -->
	const editor = new toastui.Editor({
    	el : document.querySelector('#recipeContent'),
    	height : '800px',
    	initialValue : '해당 요리에 대한 레시피의 자세한 설명을 자유롭게 입력하세요.', // 초기 설명 (토스트ui editor에서 사용자가 입력하기전 설명해주는 부분)
    	initialEditType : 'wysiwyg',
 	});
 
	 // !!여기!! editor.getHtml()을 사용해서 에디터 내용 받아오기
 /* document.querySelector('#editorContent').insertAdjacentHTML('afterbegin' ,editor.getHTML()); */
 console.log(editor.getHTML());

        document.getElementById('mainImgInput').addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    const img = new Image();
                    img.onload = function() {
                        const canvas = document.createElement('canvas');  // 캔버스 생성
                        const ctx = canvas.getContext('2d');  // 캔버스 그리기
                        canvas.width = 410;
                        canvas.height = 410;
                        ctx.drawImage(img, 0, 0, 410, 410);
                        // img 에서 x좌표 : y좌표, 
                        document.getElementById('mainImage').src = canvas.toDataURL('image/jpeg');
                    };
                    img.src = e.target.result;
                }
                reader.readAsDataURL(file);
                console.log(file);
            }
        });
        
        $("#recipecreateform").submit(function(e) {
        	$("#recpCont").val(editor.getHTML());
        })
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
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
	.subHeaderContainer{
		width:1920px;
		height:50px;
		background:#BFA89F;
	}
	.subHeaderInnerContainer{
		margin:0 auto;
		display:flex;
		align-items:center;
		height: 50px;
		width: 1280px;
	}
	.subHeaderText{
		color:#f5f5f5;
		font-size:21px;
		margin-right:50px;
		cursor:pointer;
	}
	.subHeaderText:hover{
		color:white;
	}
	.mypageContainer{
		width:1920px;
        height: 1000px;
        display:flex;
        justify-content: space-around;
    }
   	.mypageInnerContainer{
	    width:1280px;
        height: 1000px;
	    align-items:center;
	}
    .recipeImgContainer{
        width:290px;
	    height:287px;
        position: relative;
    }
    .form-popup {
	    display: none;
	    position: fixed;
	    bottom: 0;
	    right: 15px;
	    border: 3px solid #f1f1f1;
	    z-index: 9;
    }
	.mypageIntro {
	  	color: #937062; 
	  	font-size: 36px; 
	}
	.btn-group .button {
		width:320px;
		height:69px;
	    background-color:#FFFFFF;
		border: none;
		border-bottom: 1px solid #937062;
	    color: #937062;
	  	text-align: center;
		font-size: 24px;
	    float: left;
	}
	.btn-group .button:hover,
	.btn-group .button.active {
		border: 1px solid #937062;
		border-bottom: 1px solid #ffffff;
	}
    .mypageBox{
	    width:1278px;
	    height: auto;
		border: 1px solid #937062;
	    display:flex;
	    flex-wrap: wrap;
	    justify-content: space-around;
	    border-top:1px solid #FFFFFF;
	    border-bottom-left-radius: 0.5%;
	    border-bottom-right-radius: 0.5%;
	}
	.recipebox{
		margin: 13px;
		width:290px;
		height:420px;
		border:1px solid #D9D9D9;
	    border-radius: 1%;
	}
    .recipebox-img{
        width:290px;
	    height:287px;
    }
    .like{
        font-size: 24px; 
        bottom: 0%;
        right: 1%;
        color: #FFFFFF;
        text-align: right;
        position: absolute;
    }
    .recipebox-title{
        font-size: 24px;
        color: #000000; 
        text-align: center;
        margin: 0;
    }
    .recipebox-time{
        font-size: 21px; 
        color: #616161;
        text-align: center;
        margin: 0 auto;
    }
    .recipebox-category{
        font-size: 20px; 
        color: #937062;
        text-align: center;
        margin: 1;
    }
    .comment{
        font-size: 24px; 
        color:#000000;
        text-align: left;
    }
    .comment-time{
        font-size: 20px; 
        color: #616161;
        bottom: 0;
        text-align: right;
    }
    .popup {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.5);
    }
    .popup-content {
        background-color: white;
        padding: 20px;
        width:750px;
	    height:400px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
    .close {
    float: right;
        cursor: pointer;
    }

    input[type="password"] {
        width:527px;
        height:41px; 
        padding: 0px;
        margin-bottom: 10px;
        display: block; 
        margin: 0 auto;
    }
    .yesbutton{
    	width:527px;
		height:41px; 
    	border-radius: 5%;
   		text-align: center;
    	color: #FFFFFF;
    	background-color:#937062;
    	display: block; 
    	margin: 0 auto;
    	bold:none;
    }
/* 회원정보수정 */    
	.editmenu{
		width:318px;
    	height:743px;
    	color: #FFFFFF;
    	pont-size:24px;
    	text-align: center;
    	background-color:#BFA89F;
   		top: 0;
    	left: 0;
    }
    .editpage{
    	width:960px;
    	height:743px;
    	pont-size:20px;
    }
    .editbutton{
    	width:201px;
    	height:60px;
    	border-radius:2%;
    	border: none;
    	pont-size:24px;
    	text-align: center;
    	color: #FFFFFF;
        font-weight: bold;
		align-items:center;
    }
    input[type="editpassword"] {
        position: absolute;
        width:584px;
      	height:50px;
        display: block;
        top:47%;        
    }
    input[type="editpasswordre"] {
        position: absolute;
        width:584px;
      	height:50px;
        display: block; 
        top:57%;
    }
    input[type="editemail"] {
        position: absolute;
        width:584px;
      	height:50px;
        display: block;
        top:86%; 
    }
    .popupdelete {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: background-color: rgba(0,0,0,0.5);
;
    }
    .popupdelete-content {
        background-color: white;
        padding: 20px;
        width:504px;
	    height:300px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
	.deletebutton{
		width:119px;
	    height:41px;
    	pont-size:24px;
	    border-radius: 5%;
	    
	}
/* 회원정보수정 완 */    
</style>
</head>
<body>
	<div class="headerContainer">
		<div class="headerInnerContainer">
			<div class="headerImgContainer">
				<img src="./image/logo_white.png">
			</div>
			<div class="headerSearchContainer">
				<input type="text" placeholder="검색어를 입력해주세요." class="searchInput"/>
				<img src="./image/search.png" style="width:40px; height:40px;">
			</div>
			<div class="headerUserContainer">
				<img src="./image/nonlogin.png">
			</div>
		</div>
	</div>
	<div class="subHeaderContainer">
		<div class="subHeaderInnerContainer">
			<strong class="subHeaderText">분류</strong>
			<strong class="subHeaderText">레시피 작성하기</strong>
		</div>
	</div>
<div class="mypageContainer">    
    <div class="mypageInnerContainer">
        <br><p class="mypageIntro">마이페이지</p><br>
        <div class="btn-group">
            <button class="button">레시피</button>
            <button class="button">좋아요</button>
            <button class="button">댓글</button>
            <button class="button" id="openPopup">회원정보수정</button>
        </div>
<!-- 회원정보수정 -->
        <div class="mypageBox">
       		<div class="editmenu">
				<p style="position: relative; top: 10%;">아이디</p>
				<p style="position: relative; top: 20%;">비밀번호 수정</p>
				<p style="position: relative; top: 30%;">비밀번호 확인</p>
				<p style="position: relative; top: 40%;">이름</p>
				<p style="position: relative; top: 50%;">전화번호</p>
				<p style="position: relative; top: 60%;">이메일</p>
				<p style="position: relative; top: 70%;">생년월일</p>
    		</div>
    		<div class="editpage">
    			<p style="position: relative; top: 10%; color: #696969;">Admin123456</p>
    			<p style="position: relative; top: 14%; color: #F35555;">사용할 수 없는 비밀번호입니다.</p>
    			<input type="editpassword" id="passwordInput" placeholder="비밀번호 입력(문자, 숫자, 특수문자 포함 8~20자)"><br>
				<p style="position: relative; top: 22%; color: #F35555;">비밀번호가 일치하지 않습니다.</p>
				<input type="editpasswordre" id="passwordInput" placeholder="비밀번호 재입력">
				<p style="position: relative; top: 37%; color: #696969;">홍길동</p>
				<p style="position: relative; top: 47%; color: #696969;">010-1234-1234</p>
				<input type="editemail" id="passwordInput" placeholder="이메일">
				<p style="position: relative; top: 70%; color: #696969;">2024년 3월 6일</p>
			</div>	
    	</div>
    	<br><br><br><br><br>
       	<button class="editbutton" style="background-color: #937062">수정완료</button>
    	<button class="editbutton" style="background-color: #D9D9D9" id="openPopup2">회원탈퇴</button>
<!-- 회원정보수정 완 -->
	</div>
</div>
<div id="passwordPopup" class="popup">
    <div class="popup-content">
        <span class="close" id="closePopup">&times;</span>
        <h3 style="color: #937062; font-size: 32px; text-align: center;">비밀번호 확인</h3>
        <p>비밀번호 확인이 필요한 요청입니다.</p>
        <p>현재 비밀번호를 입력해주세요</p><br>
        <input type="password" id="passwordInput" placeholder="비밀번호를 입력하세요"><br>
        <button class="yesbutton" id="confirmPassword">확인</button>
    </div>
</div>
    <!-- 회원정보수정 -->

<div id="deletePopup" class="popupdelete">
    <div class="popupdelete-content">
        <span class="close" id="closePopup">&times;</span>
        <h3 style="color: #937062; font-size: 32px; text-align: center;">탈퇴 확인</h3>
        <p>탈퇴 후 복원할 수 없습니다.</p>
        <p>정말로 탈퇴하시겠습니까?</p><br>
        <button class="deletebutton" id="confirmPassword" style="background-color: #937062" >확인</button>
        <button class="deletebutton" id="confirmPassword" style="background-color: #DEDEDE">취소</button>
    </div>
</div>
    <!-- 회원정보수정 완 -->
<script>
    document.getElementById('openPopup').addEventListener('click', function() {
        document.getElementById('passwordPopup').style.display = 'block';
    });
    document.getElementById('closePopup').addEventListener('click', function() {
        document.getElementById('passwordPopup').style.display = 'none';
    });
    <!-- 회원정보수정 -->
    document.getElementById('openPopup2').addEventListener('click', function() {
        document.getElementById('deletePopup').style.display = 'block';
    });
    document.getElementById('closePopup2').addEventListener('click', function() {
        document.getElementById('deletePopup').style.display = 'none';
    });
    <!-- 회원정보수정 완 -->
</script>
</body>
</html>
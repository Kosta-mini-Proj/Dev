<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
	.mypageContainer{
		width:1920px;
        display:flex;
        justify-content: space-around;
    }
   	.mypageInnerContainer{
	    width:1024px;
	    align-items:center;
	}
	.mypageEmptyContainer{
		width:1024px;
		height:40px;
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
	  	font-size: 28px; 
	}
	.btn-group .button {
		width:256px;
		height:56px;
	    background-color:#FFFFFF;
		border: none;
		border-bottom: 1px solid #937062;
	    color: #937062;
	  	text-align: center;
		font-size: 19px;
	    float: left;
    	margin-bottom:0;	    
	}
	.btn-group .button:hover,
	.btn-group .button.active {
		border: 1px solid #937062;
		border-bottom: 1px solid #ffffff;
	}
    .mypageBox{
	    width:1022px;
	    height: auto;
		border: 1px solid #937062;
	    display:flex;
	    flex-wrap: wrap;
	    justify-content: space-around;
	    border-top:1px solid #FFFFFF;
	    border-bottom-left-radius: 0.5%;
	    border-bottom-right-radius: 0.5%;
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
		width:253px;
    	height:500px;
    	color: #FFFFFF;
    	font-weight: bold;
    	text-align: right;
    	background-color:#BFA89F;
    }
    .editpage{
    	width:768px;
    	height:500px;
    }
    input[type="editpassword"] {
        position: absolute;
        width:584px;
      	height:50px;
        display: block;
        top:54%;        
    }
    input[type="editpasswordre"] {
        position: absolute;
        width:584px;
      	height:50px;
        display: block; 
        top:64%;
    }
    input[type="editemail"] {
        position: absolute;
        width:584px;
      	height:50px;
        display: block;
        top:93%; 
    }
    .popupdelete {
         display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.5);
    }
    .popupdelete-content {
        background-color: white;
        padding:20px;
        width:504px;
	    height:300px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
    }
	.deletebutton{
		width:119px;
	    height:41px;
    	pont-size:24px;
	    border-radius: 5%;
	    
	}
	.btnContainer{
		display: flex;
		flex-direction: row;
		align-content: center;
		justify-content: center;
		height: 70px;
		width: 1280px;
		margin-top: 50px;
	}
	.joinBtn{
		width: 180px;
		height: 50px;
		background: #937062;
		color:white;
		border: 0px;
		border-radius: 5px;
		font-size: 18px;
		cursor:pointer;
		margin-right: 10px;
	}
	.joinBtn:hover{
		background: #BF917E;
	}
	.cancleBtn{
		width: 180px;
		height: 50px;
		background: #D9D9D9;
		color:white;
		border: 0px;
		border-radius: 5px;
		font-size: 18px;
		cursor:pointer;
		margin-left: 10px;
	}
	.cancleBtn:hover{
		background: #F5F5F5;
	}
	.editMenuFont{
		position: relative;
		margin-right: 50px;
		margin-top:50px;
		font-size:20px;
	}
	.editPageFont{
		position: relative;
		margin-left: 30px;
		margin-top:50px;
		font-size:20px;
	}
	
	.editPageContainer{
		position: relative;
	    width:768px;
    	height:77px;
    	margin-left:15px;
	}
	.editPageFont2{
		position: relative;
		margin-left:10px;
		font-size:20px;
		bold:none;
		color:#696969;
	    position: absolute;
    	bottom: 0;
	}
	.editPageInputContainer{
		position: relative;	
		width:768px;
    	height:77px;
	}
/* 회원정보수정 완 */    
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
<div class="mypageContainer">    
    <div class="mypageInnerContainer">
    	<div class="mypageEmptyContainer"></div>
        <br><p class="mypageIntro">마이페이지</p>
    	<div class="mypageEmptyContainer"></div>
        <div class="btn-group">
            <button class="button">레시피</button>
            <button class="button">좋아요</button>
            <button class="button">댓글</button>
            <button class="button" id="openPopup">회원정보수정</button>
        </div>
<!-- 회원정보수정 -->
        <div class="mypageBox">
       		<div class="editmenu">
       			<p class="editMenuFont">아이디</p>
				<p class="editMenuFont">비밀번호 수정</p>
				<p class="editMenuFont">비밀번호 확인</p>
				<p class="editMenuFont">이름</p>
				<p class="editMenuFont">이메일</p>
				<p class="editMenuFont">생년월일</p>
    		</div>
    		<div class="editpage">
				<div class="editPageContainer">
					<p class="editPageFont2">Admin123456</p>
				</div>
				<div class="editPageInputContainer">
				</div>
				<div class="editPageInputContainer">
				</div>
				<div class="editPageContainer">
					<p class="editPageFont2">홍길동</p>
				</div>
				<div class="editPageInputContainer">
				</div>
				<div class="editPageContainer">
       				<p class="editPageFont2">2024년 3월 6일</p>
				</div>
			</div>	
    	</div>
    	<br><br><br><br><br>
    	<div class ="btnContainer">
       		<button class="joinBtn">수정완료</button>
    		<button class="cancleBtn" id="openPopup2">회원탈퇴</button>
    	</div>
<!-- 회원정보수정 완 -->
	</div>
</div>
<div id="passwordPopup" class="popup">
    <div class="popup-content">
        <span class="close" id="closePopup">&times;</span>
        <br><br><h3 style="color: #937062; font-size: 32px; text-align: center;">비밀번호 확인</h3><br>
        <p style="margin-battom: 20px; font-size: 24px; text-align: center;">비밀번호 확인이 필요한 요청입니다.</p>
        <p style="margin-battom: 100px; font-size: 24px; text-align: center;">현재 비밀번호를 입력해주세요.</p><br><br>
        <input type="password" id="passwordInput" placeholder="비밀번호를 입력하세요"><br>
        <button class="yesbutton" id="passwordYes">입력완료</button>
    </div>
</div>
    <!-- 회원정보수정 -->

<div id="deletePopup" class="popupdelete">
    <div class="popupdelete-content">
        <h3 style="color: #937062; font-size: 32px; text-align: center;">탈퇴 확인</h3><br><br>
        <p style= "font-size: 24px; text-align: center;">탈퇴 후 복원할 수 없습니다.</p>
        <p style= "font-size: 24px; text-align: center;">정말로 탈퇴하시겠습니까?</p><br><br>
        <button class="joinBtn" id="closePopup2">확인</button>
        <button class="cancleBtn" id="closePopup3">취소</button>
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
    document.getElementById('passwordYes').addEventListener('click', function() {
        document.getElementById('passwordPopup').style.display = 'none';
        document.getElementById('mypageContainer').style.display = 'none';
        document.getElementById('mypageditContiner').style.display = 'block';

    });
    <!-- 회원정보수정 -->
    document.getElementById('openPopup2').addEventListener('click', function() {
        document.getElementById('deletePopup').style.display = 'block';
    });
    document.getElementById('closePopup2').addEventListener('click', function() {
        document.getElementById('deletePopup').style.display = 'none';
    });
    document.getElementById('closePopup3').addEventListener('click', function() {
    	document.getElementById('deletePopup').style.display = 'none';
    });
    <!-- 회원정보수정 완 -->
</script>
</body>
</html>
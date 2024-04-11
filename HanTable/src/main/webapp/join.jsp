<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<style>
	*{
		padding:0;
		margin:0;
		overflow-x: hidden;
	}
	.mainContainer{
		width:1920px;
		height:1200px;
		display: flex;
		justify-content:center;
	}
	.mainLogoContainer{
		width:1920px;
		height:100px;
		display: flex;		
		justify-content:center;
	}
	.joinContainer{
		display:flex;
		width: 1280px;
		height: 1000px;
		border : 1px solid #BFA89F;
		border-radius : 10px;
		box-shadow: 5px 5px 5px #e0e0e0;
		align-self:center;
		justify-content:center;
		flex-direction: column;
	}
	.joinInnerContainer{
		width:1000px;
		height: 1000px;
		align-self:center;
		display: grid;
		grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr 1.5fr 1.5fr;
		padding-top: 50px;
		place-items: center; 
	}
	.joinTitle{
		font-size: 24px;
		margin-top: 60px;
		margin-left: 260px;
		overflow:hidden;
	}
	.InputContainer{
		display: flex;
		flex-direction: column;
		margin-top:20px;
		width:760px;
		height:75px;
		padding: 0 5px;
		align-self: center;
	}
	.InputImageContainer{
		display: flex;
		flex-direction: row;
		width:750px;
		height:125px;
		padding: 0 5px;
		align-self: center;
	}
	.InputImageInnerContainer{
		width:200px;
		height:125px;
	}
	.inputTitle{
		font-size: 18px;
	}
	.input{
		width:740px; 
		height:40px;
		border : 1px solid #BFA89F;
		border-radius : 5px;
		box-shadow: 3px 3px 3px #e0e0e0;
		padding-left:10px;
		font-size:21px;
		align-self: center;
	}
	.input::placeholder{
		font-size:18px;
		color:#BDBDBD;
	}
	input:focus{
		outline: 1px solid #937062;
	}
	.selectContainer{
		display: flex;
		flex-direction: column;
		align-self: center;
		margin-top:20px;
		width:750px;
		height: 100px;
		padding: 0 5px;
	}
	.selectBox{
		height: 40px;
		width: 150px;
		font-size: 16px;
		border: 1px solid #BFA89F;
		border-radius: 5px;
	}
	.selectBox:focus{
		outline: 1px solid #937062;
	}
	.btnContainer{
		display: flex;
		flex-direction: row;
		align-content: center;
		justify-content: center;
		height: 70px;
		width: 1000px;
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
	.checkDuplicateBtn{
		width: 100px;
		height: 30px;
		background: #800020;
		color:white;
		border: 0px;
		border-radius: 5px;
		font-size: 15px;
		cursor:pointer;
		margin-left: 10px;
	 	position: absolute;
	 	top: 20%;
		right: 10px;
	}
	.inputWithButton {
    	position: relative;
    	display: inline-block; 		
	}
</style>
<script>
	$(function() {
		$('#checkDuplicate').click(function(e) {
			e.preventDefault();
			$.ajax({
				url:'checkDuplicate',
				type:'post',
				async:true,
				dataType:'text',
				data:{id:$('#id').val()},
				success:function(result) {
					if(result=='true') {
						alert("아이디가 중복됩니다");
					} else {
						alert("사용 가능한 아이디입니다");
					}
				},
				error:function(result) {
					
				}
			})
			
		})
	})
</script>
</head>
<body>
	<form action="join" method="post" enctype="multipart/form-data">
	<div class="mainLogoContainer">
		<a href="main.jsp">
			<img src="./image/logo.png">
		</a>
	</div>
	<div class="mainContainer">
		<div class="joinContainer">
			<strong class="joinTitle">회원가입</strong>
			<div class="joinInnerContainer">
				<div class="InputImageContainer">
					<div class="InputImageInnerContainer">
						<strong class="inputTitle">기본 프로필 설정</strong>
					</div>				
					<div class="InputImageInnerContainer">					
						<label for="manchef"><img src="./image/manchef.png" style="width:100px; height:100px;"><br></label>
						<input type="radio" style="margin-left: 45px;" name="profileImg" value="manchef.png" checked="checked" id="manchef">
					</div>				
					<div class="InputImageInnerContainer">			
						<label for="womanchef"><img src="./image/womanchef.png" style="width:100px; height:100px;"><br></label>		
						<input type="radio" style="margin-left: 45px;" name="profileImg" value="womanchef.png" id="womanchef">
					</div>											
				</div>
				<div class="InputContainer">
					<strong class="inputTitle">아이디</strong>
				    <div class="inputWithButton">
						<input type="text" id="userId" name="userId" class="input" style="margin: 4px;" placeholder="아이디 입력(6~20자)"/>	
						<button class="checkDuplicateBtn" id="checkDuplicate">중복확인</button>
					</div>						
				</div>			
				<div class="InputContainer">
					<strong class="inputTitle">비밀번호</strong>
					<input type="password" id="password" name="password" class="input" placeholder="비밀번호 입력(문자, 숫자, 특수문자 포함 8~20자)"/>
				</div>
				<div class="InputContainer">
					<strong class="inputTitle">비밀번호 확인</strong>
					<input type="password" id="password" class="input" placeholder="비밀번호 재입력"/>
				</div>
				<div class="InputContainer">
					<strong class="inputTitle">이름</strong>
					<input type="text" id="name" name="name" class="input" placeholder="이름을 입력해주세요."/>
				</div>
				<div class="InputContainer">
					<strong class="inputTitle">이메일</strong>
					<input type="text" id="email" name="email" class="input" placeholder="example@hantable.com"/>
				</div>
				<div class="selectContainer">
					<strong class="inputTitle">생년월일</strong>
					<div class="birthdaySelectContainer">
						<select class="selectBox" id="yearSelect">
							<option disabled selected>출생년도</option>
						</select>
						<select class="selectBox" id="monthSelect">
							<option disabled selected>월</option>
						</select>
						<select class="selectBox" id="daySelect">
							<option disabled selected>일</option>
						</select>
					</div>
				</div>
				<div class="btnContainer">
					<button class="joinBtn" id="joinBtn" type="submit"><strong>회원가입</strong></button>
					<button class="cancleBtn"><strong>취소</strong></button>
				</div>
			</div>
			</form>
		</div>
	</div>
	<script>
    // 출생년도 옵션 생성
    var yearSelect = document.querySelector('.birthdaySelectContainer select:nth-child(1)');
    for (var i = 1900; i <= 2024; i++) {
        var option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        yearSelect.appendChild(option);
    }
    yearSelect.addEventListener('change', function() {
        console.log('출생년도:', yearSelect.value);
    });

    // 월 옵션 생성
    var monthSelect = document.querySelector('.birthdaySelectContainer select:nth-child(2)');
    for (var i = 1; i <= 12; i++) {
        var option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        monthSelect.appendChild(option);
    }
    monthSelect.addEventListener('change', function() {
        console.log('월:', monthSelect.value);
    });

    // 일 옵션 생성
    var daySelect = document.querySelector('.birthdaySelectContainer select:nth-child(3)');
    for (var i = 1; i <= 31; i++) {
        var option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        daySelect.appendChild(option);
    }
    daySelect.addEventListener('change', function() {
        console.log('일:', daySelect.value);
    });
	</script>
</body>
</html>
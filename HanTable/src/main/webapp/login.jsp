<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
	*{
		padding:0;
		margin:0;
	}
	.headerContainer{
		width:1920px;
		height:100px;
		background:#ffffff;
	}
	.mainContainer{
		width:1920px;
		height:800px;
		display: flex;
		justify-content:center;
	}
	.loginContainer{
		display:flex;
		width: 1280px;
		height: 640px;
		border : 1px solid #5E6C53;
		border-radius : 10px;
		box-shadow: 5px 5px 5px #e0e0e0;
		align-self:center;
		justify-content:center;
	}
	.loginInnerContainer{
		width: 400px;
		height: 400px;
		align-self:center;
		display: flex;
		flex-direction:column;
	}
	.logoContainer{
		align-self : center;
		margin-top: 10px;
	}
	.idInput{
		width:390px;
		height:50px;
		align-self : center;
		border : 1px solid #5E6C53;
		border-radius : 5px;
		box-shadow: 5px 5px 5px #e0e0e0;
		margin-top: 60px;
		padding-left:10px;
		font-size:21px;
	}
	.idInput::placeholder{
		font-size:21px;
		color:#BDBDBD;
	}
	.passwordInput{
		width:390px;
		height:50px;
		align-self : center;
		border : 1px solid #5E6C53;
		border-radius : 5px;
		box-shadow: 5px 5px 5px #e0e0e0;
		margin-top: 15px;
		padding-left:10px;
		font-size:18px;
	}
	.passwordInput::placeholder{
		font-size:18px;
		color:#BDBDBD;
	}
	input:focus{
		outline: 2px solid #5E6C53;
	}
	.loginBtn{
		width:400px;
		height:50px;
		align-self : center;
		background: #800020;
		border-radius : 5px;
		box-shadow: 5px 5px 5px #e0e0e0;
		border: none;
		color:white;
		font-size:21px;
		cursor: pointer;
		margin-top: 15px;
	}
	.loginBtn:hover{
		background:#BF917E;
	}
	.joinBtn{
		align-self: center;
		color: #696969;
		margin-top: 15px;
	}
	.joinBtn:hover{
		color:#BF917E;
	}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="headerContainer"></div>
	<div class="mainContainer">
		<div class="loginContainer">
			<div class="loginInnerContainer">
			<form action="login" method="post">
				<div class="logoContainer">
				<a href="main.jsp">
					<img src="./image/logo.png" style="width: 400px;"/>
				</a>
				</div>
				<input type="text" class="idInput" name="userId" id="userId" placeholder="아이디"/>
				<input type="password" class="passwordInput" name="password" id="password" placeholder="비밀번호"/>
				<button type="submit" id="submit" class="loginBtn"><strong>로그인</strong></button>
			</form>
				<a href="join.jsp" class="joinBtn">회원가입</a>
			</div>
		</div>
	</div>

</body>
</html>
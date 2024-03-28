<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 0;
  height: 100vh;
}

.button-container {
  position: relative;
}

.button {
  display: flex;
  align-items: center;
  background: white;
  border: 1px solid grey;
  padding: 10px;
  font-size: 1rem;
  cursor: pointer;
  outline: none;
}

.dropdown {
  display: none;
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translateX(-50%);
  width: 100px;
  border: 1px solid grey;
}

.dropdown-item {
  text-align: center;
  padding: 10px;
  cursor: pointer;
}

.dropdown-item:hover {
  background: whitesmoke;
}
</style>
</head>
<body>
<div class="button-container">
  <button class="button">클릭</button>
  <div class="dropdown">
    <div class="dropdown-item">서울</div>
    <div class="dropdown-item">대전</div>
    <div class="dropdown-item">대구</div>
    <div class="dropdown-item">부산</div>
  </div>
</div>
</body>
<script>
const button = document.querySelector('.button');

button.addEventListener('click', () => {
  const dropdown = document.querySelector('.dropdown');
  dropdown.style.display = 'block';
});

button.addEventListener('blur', () => {
  const dropdown = document.querySelector('.dropdown');
  dropdown.style.display = '';
});
</script>
</html>
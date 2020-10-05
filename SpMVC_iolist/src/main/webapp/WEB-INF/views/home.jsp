<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>

<title>Loo9 SHOP 입니다</title>
<script src='https://code.jquery.com/jquery-latest.min.js'></script>
<script>
    var rootPath="${rootPath}"
</script>
<script src="https://kit.fontawesome.com/3c990466ed.js"
    crossorigin="anonymous"></script>
    
</head>
<style>
* {
  /* box를 그릴 때 margin padding에 의해 layout이 무너지는 현상을
    최소화 시키기 위한 초기화 조치*/
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

header {
  /*nav#main-nav tag에 position:relative를 고정하기 위해 미리 헤더에 position을 지정해준다*/
  position: relative;
  height: 400px;
  color: white;

  background-image: url("static/images/오렌지.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  background-attachment: fixed;

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  opacity:0.9;
}


html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

table#io-table {
	align-items: center;
	padding: 10px;
	margin: 20px auto;
	width: 80%;
	border-top: 1px solid black;
	border-collapse: collapse;
}

table#io-table th, table#io-table tr td {
	border-bottom: 1px solid black;
	text-align: center;
}

table#io-table th {
	padding: 14px;
	background-color: #FFCC00;
}

table#io-table tr td {
	padding: 7px;
	cursor:pointer;
}

table#io-table tr td:hover {
	background-color:#99CCCC;
}

table#io-table tr td:nth-child(1) {
	width: 8px;
	
}

table#io-table tr td:nth-child(4) {
	color:navy;
	font-style:oblique;
}

table#io-table tr td:nth-child(8) {
	color:red;
}

table#io-table tr td:nth-child(9) {
	color:blue;
}

h3 {
	text-align: center;
	margin: 40px auto;
	font-style: italic;
}

footer {
	 background-color: #969696;
    text-align: center;
    padding: 10px;
    color:black;
    
    
}
</style>
<body>
	<header>
		<h1>🍅Loo9 SHOP 매입매출 관리시스템🍅</h1>
	</header>

	<section id="main-section">
		<c:choose>
			<c:when test="${BODY == 'IO-HOME'}">
				<%@ include file="/WEB-INF/views/iolist/io-list.jsp" %>
			</c:when>
			<c:when test="${BODY =='IO-INPUT'}">
				<%@ include file="/WEB-INF/views/iolist/io-input.jsp"%>
			</c:when>
			<c:when test="${BODY == 'IO-DETAIL'}">
				<%@ include file ="/WEB-INF/views/iolist/io-detail.jsp"%>
			</c:when>
			
			<c:otherwise>
				<%@ include file ="/WEB-INF/views/iolist/io-list.jsp" %>
			</c:otherwise>
		</c:choose>
		
	</section>


	<footer>
		<address>CopyRight &copy; ssyy0622@gmail.com</address>
	</footer>
</body>
</html>
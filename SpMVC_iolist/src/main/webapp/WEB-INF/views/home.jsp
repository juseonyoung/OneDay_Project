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
	header {
		background-images
	}
</style>
<body>
	<header>
		<h2>Loo9 SHOP 매입매출 관리시스템</h2>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.js"></script>

<script>
$(function(){
	$("#delete").click(function(){
		if(confirm("${IoVO.io_pname} \n상품데이터를 삭제합니다.")){

			document.location.replace("${rootPath}/delete?seq=${IoVO.seq}");
		}
		alert("삭제하시겠습니까?");
		
	})
	
})

</script>
 <table id="book-detail">
	 <tr class="title"><td colspan="2"><h3>자세히 보기</h3></td></tr>
	 <tr class="info">
	 
	 	<td>
	 		<table>
	 			   
			        <tr class="author"><th>상품명</th><td>${ioVO.io_pname }</td></tr>	
				<tr class="author"><th>일자</th><td>${ioVO.io_date }</td></tr>	
				<tr class="price"><th>시각</th><td>${ioVO.io_time}</td></tr>
				<tr class="price"><th>구분</th>
					<c:choose>
								<c:when	test="${ioVO.io_input=='false'}">
								<td>매입</td>
								</c:when>
								
								<c:otherwise>
								<td>매출</td>
								</c:otherwise>
							
								</c:choose></tr>
				<tr class="pub"><th>단가</th><td>${ioVO.io_price}</td></tr>
				<tr class="pub"><th>수량</th><td>${ioVO.io_quan}</td></tr>
				<tr class="pub"><th>합계</th><td>${ioVO.io_price*ioVO.io_quan}</td></tr>	
			      
			        
	 		</table>
	 	</td>
        </tr>
          		       
    </table>
    <section id="update">
    	<a href="${rootPath }/update?seq=${ioVO.seq}">수정</a>
    </section>
    
    <section id="delete">
    	
    	<a href="${rootPath }/delete?seq=${ioVO.seq}">삭제</a>
    	
    </section>
<hr /> <!-- 닫는 태그!! -->
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

	<style>
	
		table#book-detail {
			width:30%;
			margin:10px auto;
			
						
		}
		
		table#book-detail .title td{
			padding: 0.5rem 1rem;
		background-image:url("static/images/파도.jpg");
			border-bottom:1px solid gray;
			text-align:center;
			width:80%;
			
		}
		
		table#book-detail .info td:first-child {
			display : flex;
			justify-content: center;
			align-items: center;
			padding:10px;
		}
		
		table#book-detail table th {
			color: navy;
			padding: 8px 12px;
			text-align:right;
			border-bottom: 1px solid black;
		}
		
		table#book-detail table td {
			border-bottom: 1px solid black;
		
		}
		
		table#book-detail .dummy {
			padding: 30px;
		}
		
		table#book-detail .desc-title th{
			text-align:left;
			padding: 10px 30px;
			color:black;
			background-color: lightgreen;
		}
		
		table#book-detail .link th,
		table#book-detail .link td{
			background-color: #ccc;
			padding:10px;
		}
		
		table#book-detail .desc td{
			padding: 15px;
		
		}
		
		section#book-detail {
			width:60%;
			border:1px solid green;
			margin: 5px auto;
			
		}
		
	#update {
	
	width: 90% auto;
		margin: 10px auto;
		text-align: center;
		padding :10px;
	}	
		
	#update a  {
 	    display: inline-block;

        text-decoration: none;
        padding: 10px 15px;
        background-color: #99CCFF;
        color: black;

        border-radius: 5px;
}

#update a:nth-child(1) {
 	background-color: #99CCFF;
}





	
	
	</style>

 <table id="book-detail">
	 <tr class="title"><td colspan="2"><h3>Detail View</h3></td></tr>
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
    	<button><a href="${rootPath }/update?seq=${ioVO.seq}">수정</a></button>
   
    	<button><a href="${rootPath }/delete?seq=${ioVO.seq}">삭제</a></button>
    	
    </section>
<hr /> <!-- 닫는 태그!! -->
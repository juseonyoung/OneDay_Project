<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />


<!-- </head>
<body> -->
<h3>추가 등록하기</h3>
<section id="section-write">
	<form:form modelAttribute="ioVO">
		<legend> 매입매출 입력 </legend>
		<div>
			<lable><form:input class="seq" type="hidden" path="seq" id="seq" placeholder="seq"
				value="${param.seq}"></form:input></lable>
		</div>
	
	
		<div>
			<label>상품명<form:input class="flex6" path="io_pname"
					placeholder="상품명" /></label>
		</div>

		<div>

          <label>매입/매출 구분
              <form:select path="io_input" class="flex6">
                  <option value=0>매입</option>
                  <option value=1>매출</option>
              </form:select>
          </label>
      </div>


		<div>

			<label>단가<form:input class="flex6" path="io_price"
					placeholder="단가" /></label>
		</div>
		<div>

			<label>수량<form:input class="flex6" path="io_quan"
					placeholder="수량" /></label>
					
					
					
</section>



<section id="section-btn">
	<div>
		<button id="home">
			<a href="${rootPath}">처음으로</a>
		</button>
		<button type="submit">입력완료</button>
	</div>
</section>
</form:form>
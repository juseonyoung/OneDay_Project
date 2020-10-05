<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<style>
		  section#section-write {
       
        padding: 10px;
      }
      legend {
        background-color: white;
        color: red;
        padding: 8px;
        margin: 8px auto;
        text-align: left;
        width:100%;
      }
      label {
      	flex: 1;
      	 text-align: center;
      }
      #one {
      	flex: 2;
      	 text-align: center;
      }
      
      input {
      display: inline-block;
      flex: 2;
        width: 50%;
        padding: 10px;
        margin: 2px auto;
         text-align: center;
      }
      section#section-btn {
        display: inline-block;
        text-align: center;
      }
      section#section-btn button {
      display: inline-block;

        text-decoration: none;
        padding: 8px 13px;
        background-color: #99CCFF;
        color: black;

        border-radius: 4px;
      }
      
      legend div p{
      	display: flex;
      	border-right: 1px solid white;
      	 text-align: center;
      }
   

</style>

<section id="section-write">
	<form:form modelAttribute="ioVO">
		<legend> 🌱 매입매출 선택 🌱 </legend>
		<div>
			<lable><form:input class="seq" type="hidden" path="seq" id="seq" placeholder="seq"
				value="${param.seq}"></form:input></lable>
		</div>
		<div></div>
	
		<div>
			<label>상품명✍ <form:input class="one" path="io_pname"
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

			<label>단가✍ <form:input class="flex6" path="io_price"
					placeholder="단가" /></label>
		</div>
		<div>

			<label>수량✍ <form:input class="flex6" path="io_quan"
					placeholder="수량" /></label>
					
					
					
</section>



<section id="section-btn">
	<div>
		<button id="home">
			<a href="${rootPath}">처음으로</a>
		</button>
		<button id="home">
		<a href="${rootPath}">입력완료</a>
			</button>
	</div>
</section>
</form:form>
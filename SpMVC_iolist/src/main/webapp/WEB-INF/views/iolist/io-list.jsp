<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Loop SHOP 입니다</title>
<script src="${rootPath}/static/js/io-list.js?ver=2905">
	
</script>
<body>
	<section>

		<table id="io-table">
			<tr>
				<th>No.</th>
				<th>일자</th>
				<th>시각</th>
				<th>상품명</th>
				<th>구분</th>
				<th>단가</th>
				<th>수량</th>
				<th>매입합계</th>
				<th>매출합계</th>
			</tr>

			<c:choose>
				<c:when test="${empty IOLIST}">
					<tr>
						<td colspan="9">데이터가 없음!</td>
					</tr>
				</c:when>
				<c:otherwise>
					<tbody>

						<c:forEach items="${IOLIST}" var="ioVO" varStatus="i">
							<tr class="ioitem" data-seq="${ioVO.seq}">

								<td>${i.count}</td>
								<td>${ioVO.io_date}</td>
								<td>${ioVO.io_time}</td>
								<td>${ioVO.io_pname}</td>

								<c:choose>
									<c:when test="${ioVO.io_input=='false'}">
										<td>매입</td>
									</c:when>

									<c:otherwise>
										<td>매출</td>
									</c:otherwise>

								</c:choose>

								<td>${ioVO.io_price}</td>
								<td>${ioVO.io_quan}</td>

								<c:choose>
									<c:when test="${ioVO.io_input=='false'}">
										<td>${ioVO.io_price*ioVO.io_quan}</td>
									</c:when>

									<c:otherwise>
										<td>0
										<td>
									</c:otherwise>


								</c:choose>

								<c:choose>
									<c:when test="${ioVO.io_input=='true'}">
										<td>${ioVO.io_price*ioVO.io_quan}</td>
									</c:when>

									<c:otherwise>
										<td>0
										<td>
									</c:otherwise>


								</c:choose>

							</tr>

						</c:forEach>
					</tbody>

				</c:otherwise>

			</c:choose>

		</table>
		<div id="writebox-link">

			<a href="${rootPath }/input">상품추가</a>

		</div>

	</section>
</body>
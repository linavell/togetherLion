<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="nice-select form-select subCategory-select" tabindex="0">
	<span class="current">소분류 선택</span>
	<ul class="list">
		<li data-value="0" class="option focus">소분류 선택</li>
		<c:forEach var="subCate" items="${subList }">
			<li data-value="${subCate.code }" class="option">${subCate.name }</li>
		</c:forEach>
	</ul>
</div>



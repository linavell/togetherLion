<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<select class="form-select subCategory-select"
	aria-label="Default select example" name="sub_cate_code">
	<option value="0" selected>소분류 선택</option>
	<c:forEach var="subCate" items="${subList }">
		<option value="${subCate.code }">${subCate.name }</option>
	</c:forEach>
</select>

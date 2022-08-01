<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<option value="0" selected>소분류 선택</option>
<c:forEach var="subCate" items="${subList }">
	<option value="${subCate.code }">${subCate.name }</option>
</c:forEach>



<%-- 여기서는 result 만 바인딩해놓으면 된다. --%> 

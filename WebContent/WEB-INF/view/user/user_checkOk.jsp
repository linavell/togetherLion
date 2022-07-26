<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	Object resultNumObj = request.getAttribute("resultNum");
	int resultNum = (Integer)resultNumObj;
	
	String result = "";
	
	StringBuffer sb = new StringBuffer();
	
	sb.append("{\"resultNum\":\"" + resultNum + "\"}");			
	
	result = sb.toString();
	
	out.print(result);
	
%>

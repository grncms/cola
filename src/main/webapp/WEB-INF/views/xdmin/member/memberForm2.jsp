<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="get" action="/infra/xdmin/member/memberList">
	<input type="text" name="ifmmId" placeholder="아이디">
	<input type="text" name="ifmmName" placeholder="이름">
	<input type="text" name="ifmmPassword" placeholder="비번">
	<input type="text" name="ifmmChildrenNum" placeholder="몇명">
	
	<input type="submit" value="제출">
</form>
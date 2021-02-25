<%@ page import="peachy.md.model.LoginCase"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
if(<%=LoginCase.NO_ID%> == ${m}){
	alert("존재하지 않는 아이디입니다.");
	location.href="../";
}else if(<%=LoginCase.NO_PWD%> == ${m}){
	alert("비밀번호가 틀렸습니다.");
	location.href="../";
}
</script>
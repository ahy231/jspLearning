<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" %>

<html>
<head>
<title>Setting HTTP Status Code</title>
</head>
<body>
<%
   // ���ô�����룬��˵��ԭ��
   response.sendError(407, "Need authentication!!!" );
%>
</body>
</html>
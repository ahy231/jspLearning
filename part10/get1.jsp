<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ugb2312">
<title>����̳�(runoob.com)</title>
</head>
<body>
<h1>ʹ�� GET ������ȡ����</h1>
<ul>
<li><p><b>վ����:</b>
   <%= request.getParameter("name")%>
</p></li>
<li><p><b>��ַ:</b>
   <%= request.getParameter("url")%>
</p></li>
</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>����̳�(runoob.com)</title>
</head>
<body>
<h1>ʹ�� POST ������ȡ����</h1>
<ul>
<li><p><b>վ����:</b>
<%
// ����������������
String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"gb2312");
%>
   <%=name%>
</p></li>
<li><p><b>��ַ:</b>
   <%= request.getParameter("url")%>
</p></li>
</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ugb2312">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>
<h1>使用 GET 方法读取数据</h1>
<ul>
<li><p><b>站点名:</b>
   <%= request.getParameter("name")%>
</p></li>
<li><p><b>网址:</b>
   <%= request.getParameter("url")%>
</p></li>
</ul>
</body>
</html>
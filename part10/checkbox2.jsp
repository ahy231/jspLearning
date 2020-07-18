<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>checkbox</title>
</head>
<body>

<h1>从复选框中读取数据</h1>
<ul>
<li><p><b>Google是否选中:</b>
    <%= request.getParameter("google") %>
</p></li>
<li><p><b>菜鸟教程是否选中:</b>
    <%= request.getParameter("runoob") %>
</p></li>
<li><p><b>淘宝是否选中:</b>
    <%= request.getParameter("taobao") %>
</p></li>
</ul>

</body>
</html>
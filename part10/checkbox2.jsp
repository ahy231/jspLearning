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

<h1>�Ӹ�ѡ���ж�ȡ����</h1>
<ul>
<li><p><b>Google�Ƿ�ѡ��:</b>
    <%= request.getParameter("google") %>
</p></li>
<li><p><b>����̳��Ƿ�ѡ��:</b>
    <%= request.getParameter("runoob") %>
</p></li>
<li><p><b>�Ա��Ƿ�ѡ��:</b>
    <%= request.getParameter("taobao") %>
</p></li>
</ul>

</body>
</html>
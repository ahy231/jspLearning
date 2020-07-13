<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>getProperty</title>
</head>
<body>

<h2>Jsp使用JavaBean实例</h2>
<jsp:useBean id="test" class="TestBean" />

<jsp:setProperty name="test"
    property="message"
    value="菜鸟教程..." />

<p>输出信息...</p>

<jsp:getProperty name="test" property="message" />

</body>
</html>
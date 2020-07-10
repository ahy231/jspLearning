<%-- This is my first jsp file --%>

<%-- <%@ page contentType="text/html; charset=gb2312"%> --%>
<%-- this can't work --%>

<%-- Post 乱码解决方案 --%>
<%
    request.setCharacterEncoding("gb2312");
%>

<%-- Get 乱码解决方案 --%>
<%-- <%
    String username = request.getParameter("username");
    byte[] bytes = username.getBytes("iso-8859-1");
    String result = new String(bytes, "gb2312");
    out.print(result);
%> --%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>title</title>
</head>

<form action="test.jsp">
    username : <input type="text" name="username" method="POST" />
    <br />
    <input type="submit">
</form>

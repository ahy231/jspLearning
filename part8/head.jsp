<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" %>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>head</title>
</head>
<body>

<h2>�Զ�ˢ��ʵ��</h2>
<%
    //����ÿ��5���Զ�����
    response.setIntHeader("Refresh", 5);
    //��ȡ��ǰʱ��
    Calendar calendar = new GregorianCalendar();
    String am_pm;
    int hour = calendar.get(Calendar.HOUR);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);
    if (calendar.get(Calendar.AM_PM) == 0)
        am_pm = "AM";
    else
        am_pm = "PM";
    String CT = hour + ":" + minute + ":" + second + " " + am_pm;
    out.println("��ǰʱ�䣺" + CT + "\n");
%>

</body>
</html>
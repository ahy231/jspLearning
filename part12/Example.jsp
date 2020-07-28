<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ page import="java.io.*,java.util.*" %>
<%
   // ��ȡsession����ʱ��
   Date createTime = new Date(session.getCreationTime());
   // ��ȡ������ҳ���ʱ��
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "�ٴη��ʲ���̳�ʵ��";
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String("userID");
   String userID = new String("ABCD");

   // �����ҳ�Ƿ����µķ����û�
   if (session.isNew()){
      title = "���ʲ���̳�ʵ��";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  visitCount);
   } else {
       visitCount = (Integer)session.getAttribute(visitCountKey);
       visitCount += 1;
       userID = (String)session.getAttribute(userIDKey);
       session.setAttribute(visitCountKey,  visitCount);
   }
%>
<html>
<head>
<title>Session ����</title>
</head>
<body>

<h1>Session ����</h1>

<table border="1" align="center"> 
<tr bgcolor="#949494">
   <th>Session ��Ϣ</th>
   <th>ֵ</th>
</tr> 
<tr>
   <td>id</td>
   <td><% out.print( session.getId()); %></td>
</tr> 
<tr>
   <td>����ʱ��</td>
   <td><% out.print(createTime); %></td>
</tr> 
<tr>
   <td>������ʱ��</td>
   <td><% out.print(lastAccessTime); %></td>
</tr> 
<tr>
   <td>�û� ID</td>
   <td><% out.print(userID); %></td>
</tr> 
<tr>
   <td>���ʴ���</td>
   <td><% out.print(visitCount); %></td>
</tr> 
</table> 
</body>
</html>
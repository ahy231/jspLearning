<%-- jsp�����﷨ --%>

<%-- jsp����Ƭ�� --%>
<% %>
<%-- xml��� --%>
<jsp:scriptlet>
    //
</jsp:scriptlet>

<%-- jsp���� --%>
<%! ; ; %>
<%-- xml��� --%>
<jsp:declaration>
    //
</jsp:declaration>

<%-- jsp���ʽ --%>
<%= %>
<%-- xml��� --%>
<jsp:expression>
    //
</jsp:expression>

<%-- ע�� --%>
<%-- jspע�Ͳ��ᷢ�͸������ --%>
<%-- ��htmlע�ͻᷢ�͸������ --%>
<%-- ע���� \', \", <\%, %\>��ת�� --%>

<%-- jspָ�� --%>
<%-- ����ҳ������������ű����ԡ�errorҳ�桢��������ȵ� --%>
<%@ page %>
<%-- ���������ļ� --%>
<%@ include %>
<%-- �����ǩ�ⶨ�壬����ʵ�Զ����ǩ --%>
<%@ taglib %> 

<%-- jsp��Ϊ --%>
<%-- ��Ϊ��ǩ��������һЩԤ�ȾͶ���õĺ��� --%>
<%-- ֻ��һ���﷨��ʽ --%>
<%-- xml��� --%>
<jsp:action_name attribute="value" />
<%-- jsp:include --%>
<%-- �����ڵ�ǰҳ���а�����̬��̬��Դ --%>
<%-- jsp:useBean --%>
<%-- Ѱ�Һͳ�ʼ��һ��JavaBean��� --%>
<%-- jsp:setProperty --%>
<%-- ����JavaBean�����ֵ --%>
<%-- jsp:getProperty --%>
<%-- ��JavaBean�����ֵ���뵽output�� --%>
<%-- jsp:forward --%>
<%-- ��һ��JSP�ļ�����һ���ļ�����һ�������û������request���� --%>
<%-- jsp:plugin --%>
<%-- ���������ɵ�HTMLҳ���а���Applet��JavaBean���� --%>
<%-- jsp:element --%>
<%-- ��̬����һ��XMLԪ�� --%>
<%-- jsp:attribute --%>
<%-- ���嶯̬������XMLԪ�ص����� --%>
<%-- jsp:body --%>
<%-- ���嶯̬������XMLԪ�ص����� --%>
<%-- jsp:text --%>
<%-- ���ڷ�װģ������ --%>

<%-- jsp�������� --%>
<%-- request : HttpServletRequest���ʵ�� --%>
<%-- response : HttpServletResponse���ʵ�� --%>
<%-- out : PrintWriter���ʵ�������ڰɽ���������ҳ�� --%>
<%-- session : HttpSession���ʵ�� --%>
<%-- qpplication : ServletContext���ʵ������Ӧ���������й� --%>
<%-- config ServletConfig���ʵ�� --%>
<%-- pageContext : PageContext���ʵ�����ṩ��JSPҳ�����ж����Լ������ռ�ķ��� --%>
<%-- page : ������Java���е�this�ؼ��� --%>
<%-- Exception : Exception��Ķ��󣬴����������JSPҳ���ж�Ӧ���쳣���� --%>

<%-- ��������� --%>
<%-- JSP�ṩ��Java���Ե�ȫ��֧�֣�����ֱ��ʹ��Java���Ա�д���������� --%>

<%-- �ж���� --%>
<%-- һ��ifelseʵ�� --%>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%! int day = 3; %>
<!DOCTYPE html>
<html>
<head>
<title>����̳�</title>
</head>
<body>
<% if (day == 1 || day == 7) { %>
    <p>��������ĩ</p>
<% } else { %>
    <p>���첻����ĩ</p>
<% } %>
</body>
</html>
<%-- һ��switch���ӣ�ʹ��out.println() --%>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%! int day = 3; %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>����̳�</title>
</head>
<body>
<h3>SWITCH...CASE ʵ��</h3>
<% 
switch(day) {
case 0:
   out.println("������");
   break;
case 1:
   out.println("����һ");
   break;
case 2:
   out.println("���ڶ�");
   break;
case 3:
   out.println("������");
   break;
case 4:
   out.println("������");
   break;
case 5:
   out.println("������");
   break;
default:
   out.println("������");
}
%>
</body> 
</html>

<%-- ѭ����� --%>
<%-- ��ѡ��������ƣ��հ�Java�﷨ --%>

<%-- jsp������ --%>
<%-- ��Java������ --%>
<%-- �ַ���(string):�Ե����Ż�˫���ſ�ʼ�ͽ��� --%>
<%-- Null:null --%>
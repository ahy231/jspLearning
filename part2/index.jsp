<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<html>
<head>
<title>life.jsp</title>
</head>
<body>

<%! 
  private int initVar=0;
  private int serviceVar=0;
  private int destroyVar=0;
%>
  
<%-- jspInitΪ��ʼ��������jspDestroyΪ������ --%>

<%!
  public void jspInit(){
    initVar++;
    System.out.println("jspInit(): JSP����ʼ����"+initVar+"��");
  }
  public void jspDestroy(){
    destroyVar++;
    System.out.println("jspDestroy(): JSP��������"+destroyVar+"��");
  }
%>

<%-- _jspServiceΪִ�к�����serviceVar�ں����ڲ����� --%>
<%-- �˴���������_jspService������serviceVar����������� --%>

<%
  serviceVar++;
  System.out.println("_jspService(): JSP����Ӧ��"+serviceVar+"������");

  String content1="��ʼ������ : "+initVar;
  String content2="��Ӧ�ͻ�������� : "+serviceVar;
  String content3="���ٴ��� : "+destroyVar;
%>
<h1>����̳� JSP ����ʵ��</h1>
<p><%=content1 %></p>
<p><%=content2 %></p>
<p><%=content3 %></p>

</body>
</html>
<%-- jsp����Ԫ�� --%>
<jsp:action_name attrivute="value" />

<%-- ��׼����Ԫ�أ�һЩԤ���庯�� --%>
<%-- jsp :
    include : ��ҳ�汻�����ʱ�������һ���ļ�
    useBean : Ѱ�һ���ʵ����һ��JavaBean
    setProperty : ����JavaBean������
    getProperty : ���ĳ��JavaBean������
    forward : ������ת��һ���µ�ҳ��
    plugin : �������������Ϊjava�������OBJECT��EMBED���
    element : ���嶯̬XMLԪ��
    attribute : ���ö�̬�����XMLԪ������
    body : ���ö�̬�����XMLԪ������
    text : ��JSPҳ����ĵ���ʹ��д���ı���ģ��
     --%>

<%-- ���������� --%>
<%-- ���ж���Ҫ�ض�����������: id���Ժ�scope���� --%>
<%-- id����ʱ����Ԫ�ص�Ψһ��ʶ��������jspҳ�������á�����Ԫ�ش�����idֵ����ͨ��PageContext������ --%>
<%-- scope��������ʶ����Ԫ�ص��������ڡ�id���Ժ�scope������ֱ�ӹ�ϵ��scope���Զ����������id�����������scope�������ĸ����ܵ�ֵ: (a)page, (b)request, (c)session, ��(d)application --%>

<jsp:include/>
<%-- ����page��flush���� --%>
<%-- page�����ļ���Ե�ַ --%>
<%-- flush�����Ƿ�ˢ�»����� --%>
<%-- �˴���ʾʵ����include�ļ����� --%>

<jsp:useBean/>
<%-- useBean������������һ������jsp������ʹ�õ�JavaBean�� --%>
<%-- ���������,���ǿ���ͨ��jsp:setProperty��jsp:getProperty�������޸ĺͼ���bean������. --%>
<%-- ����: 
    class : ָ��Bean����������
    type : ָ�������øö������������
    beanName : ͨ��java.beans.Beans��instantiate()����ָ��Bean������
     --%>

<jsp:setProperty/>
<%-- setProperty���������Ѿ�ʵ������Bean��������ԣ��������÷� --%>
<%-- ���ȣ�������jsp:useBeanԪ�ص����棨���棩ʹ��jsp:setProperty --%>
<jsp:useBean id="myName" />
<jsp:setProperty name="myName" property="someProperty" />
<%-- ��ʱ������jsp:useBean���ҵ���һ�����е�Bean�������´�����һ��Beanʵ����jsp:setProperty����ִ�С� --%>
<%-- �ڶ����÷��ǰ�jsp:setProperty����jsp:useBeanԪ�ص��ڲ� --%>
<jsp:useBean id="myName">
    <jsp:setProperty name="myName" property="someProperty" />
<jsp:useBean/>
<%-- jsp:setProperty�������ĸ����� --%>
<%-- name : ���룬��ʾҪ���õ��������ĸ�Bean
    property : ���룬��ʾҪ�����ĸ����ԡ���һ�������÷�: ���property��ֵ��"*", ��ʾ�������ֺ�Bean��������ƥ�������������������ݸ���Ӧ������set����
    value : ��ѡ��ָ��Bean���Ե�ֵ����param����ͬʱʹ�á�
    param : ��ѡ��ָ�����ĸ����������ΪBean���Ե�ֵ�������ǰ����û�в�������ʲô����Ҳ������ϵͳ�����null���ݸ�Bean���Ե�set��������ˣ��������Bean�Լ��ṩĬ������ֵ��ֻ�е����������ȷ�ƶ�����ֵʱ���޸�Ĭ������ֵ
     --%>

<jsp:getProperty/>
<%-- getProperty����ֵ��:
    name : Ҫ������Bean��������
    property : ��ʾҪ��ȡBean���Ե�ֵ
     --%>

<jsp:forward page="���URL��ַ" />
<%-- page���԰�����ʱһ�����URL��page��ֵ�ȿ���ֱ�Ӹ�����Ҳ�����������ʱ��̬���㣬����ʱһ��jspҳ�����һ��Java Servlet --%>
<%-- ʵ����forward�ļ����� --%>

<jsp:plugin />
<%-- plugin��������������������ͣ�����ͨ��Java�������Java Applet�������OBJECT��EMBEDԪ�ء� --%>
<%-- �����Ҫ�Ĳ�������ڣ��������ز����Ȼ��ִ��Java�����Java���������һ��applet��һ��JavaBean�� --%>
<%-- plugin�����ж����ӦHTMLԪ�ص��������ڸ�ʽ��Java�����paramԪ�ؿ�������Applet��Bean���ݲ����� --%>
<%-- ������ʹ��plugin����Ԫ�صĵ���ʵ��:  --%>
<jsp:plugin type="applet" codebase="dirname" code="MyApplet.class"
    width="60" height="80">
    <jsp:param name="fontcolor" value="red" />
    <jsp:param name="background" value="black" />

    <%-- fallbackԪ����������ֹ��ϵĴ���ʱ���͸��û�������Ϣ --%>
    <jsp:fallback>
        Unable to initialize Java plugin
    </jsp:fallback>

</jsp:plugin>

<jsp:element/> <jsp:attribute/> <jsp:body/>
<%-- ����������Ԫ�ض�̬����XMLԪ�ء���̬ʱ�ǳ���Ҫ�ģ������ζ��XMLԪ���ڱ���ʱ�Ƕ�̬���ɵĶ��Ǿ�̬ --%>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>��̬Ԫ��</title>
</head>
<body>
<jsp:element name="xmlElement">
<jsp:attribute name="xmlElementAttr">
   ����ֵ
</jsp:attribute>
<jsp:body>
   XML Ԫ�ص�����
</jsp:body>
</jsp:element>
</body>
</html>
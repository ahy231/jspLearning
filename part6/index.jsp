<%-- jsp��ʽ���� --%>
<%-- jsp��ʽ������jsp����Ϊÿ��ҳ���ṩ��java���󣬿����߿���ֱ��ʹ�����Ƕ�������ʾ������jsp��ʽ����Ҳ����ΪԤ������� --%>
<%-- jsp��֧�ֵľŴ���ʽ����
    request : HttpServletRequest�ӿڵ�ʵ��
    response : HttpServletResponse�ӿڵ�ʵ��
    out : JspWriter���ʵ�������ڰѽ���������ҳ��
    session : HttpSession���ʵ��
    application : ServletContext���ʵ������Ӧ���������й�
    config : ServletConfig���ʵ��
    pageContext : PageContext���ʵ�����ṩ��jspҳ�����ж����Լ������ռ�ķ���
    page : ������java���е�this�ؼ���
    exception : Exception��Ķ��󣬴����������jspҳ���ж�Ӧ���쳣���� --%>

<%-- request���� --%>
<%-- request������javax.servlet.http.HttpServletRequest���ʵ����ÿ���ͻ�������һ��jspҳ��ʱ��jsp����ͻ�����һ���µ�request������������� --%>
<%-- request�����ṩ��һϵ�з�������ȡHTTPͷ��Ϣ��cookies��HTTP�����ȵ� --%>

<%-- response���� --%>
<%-- response����ʱjavax.servlet.http.HttpServletResponse���ʵ�� --%>
<%-- ������������request����ʱ��ͬʱ����������Ӧ����ͻ��˵�response���� --%>
<%-- response����Ҳ�����˴���HTTPͷģ��Ľӿ� --%>
<%-- ͨ��������󣬿������ǿ�������µ�cookie��ʱ�����HTTP״̬��ȵ� --%>


<%-- out���� --%>
<%-- out����ʱjavax.servlet.jsp.JspWriter���ʵ����������response������д������ --%>
<%-- �����JspWriter��������Ҳi���Ƿ��л��������в�ͬ��ʵ����������������pageָ����ʹ��buffered='false'���������ɹرջ��� --%>
<%-- JspWriter������˴󲿷�java.io.PrintWriter���еķ��� --%>
<%-- ����JspWriter������һЩרΪ���������Ƶķ��������о��ǣ�JspWriter����׳�IOException�쳣����PrintWriter���� --%>
<%-- out.print(dataType dt) : ���Type���͵�ֵ --%>
<%-- out.println(dataType dt) : ���TYpe���͵�ֵȻ���� --%>
<%-- out.flush() : ˢ������� --%>

<%-- session���� --%>
<%-- session����ʱjavax.servlet.http.HttpSessioon���ʵ������Java Servlet�е�session������һ������Ϊ --%>
<%-- session�������������ڸ����ͻ��������ĻỰ --%>

<%-- application���� --%>
<%-- application����ֱ�Ӱ�װ��servlet��ServletConText��Ķ���ʱjavax.servlet.ServletContext���ʵ�� --%>
<%-- ���������jspҳ����������������ж����������jspҳ�档���������jspҳ���ʼ��ʱ������������jspDestroy()�����ĵ��ö����Ƴ� --%>
<%-- ͨ����application��������ԣ������������webӦ�õ�jsp�ļ����ܷ��ʵ���Щ���� --%>

<%-- config���� --%>
<%-- config����ʱjavax.servlet.ServletConfig���ʵ����ֱ�Ӱ�װ��servlet��ServletConfig��Ķ��� --%>
<%-- ��������������߷���Servlet����jsp����ĳ�ʼ�������������ļ�·���� --%>
<%-- ����ʱconfig�����ʹ�÷��������Ǻ���Ҫ�����Բ�����: --%>
<html>
<% config.getServletName();%>
</html>
<%-- �����ذ�����<servlet-name>Ԫ���е�servlet���֣�ע�⣬<servlet-name>Ԫ����WEB-INF\web.xml�ļ��ж��� --%>

<%-- pageContext���� --%>
<%-- pageContext����ʱjavax.servlet.jsp.PageCOntext���ʵ����������������jspҳ�� --%>
<%-- ���������Ҫ��������ҳ����Ϣ��ͬʱ���˵��󲿷�ʵ��ϸ�� --%>
<%-- �������洢��request�����response��������� --%>
<%-- application����config����session����out�������ͨ������������������������ --%>
<%-- pageContext����Ҳ�����˴���jspҳ���ָ����Ϣ������������Ϣ��ErrorPage URL��ҳ��scope�� --%>
<%-- PageContext�ඨ����һЩ�ֶΣ�����PAGE_SCOPE��REQUEST_SCOPE��SESSION_SCOPE��APPLICATION_SCOPE --%>
<%-- ��Ҳ�ṩ��40���ַ�������һ��̳���javax.servlet.jsp.JspContext�� --%>
<%-- ����һ����Ҫ�ķ�������removeAttribute()�����ɽ���һ������������ --%>
<%-- ���磬pageContext.removeAttribute("attrName")�Ƴ��ĸ�scope��������ԣ������������ַ���ֵ�Ƴ��ض�scope�е�������� --%>
<html>
<% pageContext.removeAttribute("attrName", PAGE_SCOPE);%>
</html>

<%-- page���� --%>
<%-- ����������ҳ��ʵ�������á������Ա�����������jspҳ��Ĵ��� --%>
<%-- page�������this�����ͬ��� --%>

<%-- exception���� --%>
<%-- exception�����װ�˴���ǰҳ�����׳����쳣��Ϣ����ͨ�������������Գ����������ʵ���Ӧ --%>
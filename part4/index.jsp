<%-- jspָ��(directive) --%>
<%@ directive attribute="value" %>

<%-- Pageָ�� --%>
<%@ page attribute="value" %>
<%-- XML�﷨ --%>
<jsp:directive.page attribute="value" />
<%-- attrivute : 
    buffer : ָ��out����ʹ�û������Ĵ�С
    autoFlush : ����out����Ļ�����
    contentType : ָ����ǰjspҳ���MIME���ͺ��ַ�����
    errorPage : ָ����jspҳ�淢���쳣ʱ����Ҫת��Ĵ�����ҳ��
    isErrorPage : ָ����ǰjspҳ�淢���쳣ʱ��Ҫת��Ĵ�����ҳ��
    extends : ָ��servlet����һ����̳�
    import : ����Ҫʹ�õ�java��
    info : ����jspҳ���������Ϣ
    isThreadSafe : ָ����jspҳ��ķ����Ƿ�Ϊ�̰߳�ȫ
    language : ����jspҳ�����õĽű����ԣ�Ĭ����java
    session : ָ��jspҳ���Ƿ�ʹ��session
    isELIgnored : ָ���Ƿ�ִ��EL���ʽ
    isScriptingEnabled : ȷ���ű�Ԫ���ܷ�ʹ��
     --%>

<%-- Includeָ�� --%>
<%@ include file="�ļ����url��ַ" %>
<%-- XML�﷨ --%>
<jsp:directive.include file="�ļ����url��ַ" />

<%-- Taglibָ�� --%>
<%@ taglib uri="uri" prefix="prefixOfTag" %>
<%-- XML�﷨ --%>
<jsp:directive.taglib uri="uri" prefix="prefixOfTag" />
<%-- jsp http״̬�� --%>
<%-- http�����http��Ӧ��������http״̬�룬״̬���ǹ涨�Ĵ����ն�״̬����ֵ --%>
<%-- jsp�ṩ������http״̬��ķ��� --%>
<%-- �����о���HttpServletResponse������������״̬��ķ���
    public void setStatus(int statusCode) : 
    �˷����������������״̬�롣���������Ӧ����һ�������״̬���һ���ĵ�����ȷ������PrintWriter�����κ�����ǰ����setStatus����
    public void sendRedirect(String url) :
    �˷�������302��Ӧ��ͬʱ����һ��Locationͷ����URLһ���µ��ĵ�
    public void sendError(int code, String message) :
    �˷�����һ��״̬��(ͨ��Ϊ404)��һ������Ϣ���Զ�����HTML�ĵ��в����ظ��ͻ��� --%>

<%-- һ��407����ʾ����407.jsp�� --%>
<%-- һ��302����ʵ����302.jsp�� --%>
<%-- һ��404����ʵ����404.jsp�� --%>
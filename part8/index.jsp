<%-- HttpServletResponse�� --%>
<%-- response������javax.servlet.http.HttpServletResponse���һ��ʵ�� --%>
<%-- ����������ᴴ��request����һ������Ҳ�ᴴ��һ���ͻ�����Ӧ --%>
<%-- response�������˴�����HTTP��Ϣͷ�Ľӿ� --%>
<%-- ͨ��ʹ��������󣬿������ǿ�������µ�cookie��ʱ���������HTTP״̬��ȵ� --%>
<%-- �����г�����������HTTP��Ӧͷ�ķ�������Щ������HttpServletResponse���ṩ
    String encodeRedirectURL(String url)
    String encodeURL(String url)
    boolean containsHeader(String name)
    boolean isCommitted()
    void addCookie(Cookie cookie)
    void addDateHeader(String name, long date)
    void addHeader(String name, String value)
    void addIntHeader(String name, int value)
    void flushBuffer()
    void reset()
    void resetBuffer()
    void sendError(int sc)
    void sendError(int sc, String msg)
    void sendRedirect(String location)
    void setBufferSize(int size)
    void setCharacterEncoding(String charset)
    void setContentLength(int len)
    void setContentType(String type)
    void setDateHeader(String name, long date)
    void setHeader(String name, String value)
    void setIntHeader(String name, int value)
    void setLocale(Locale loc)
    void setStatus(int sc) --%>

<%-- HTTP��Ӧͷ����ʵ�� --%>
<%-- head.jsp�ļ��е�����ʹ��setIntHeader()������setRefreshHeader()������ģ��һ������ʱ�� --%>
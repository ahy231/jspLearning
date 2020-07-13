<%-- HttpServletResponse类 --%>
<%-- response对象是javax.servlet.http.HttpServletResponse类的一个实例 --%>
<%-- 就像服务器会创建request对象一样，它也会创建一个客户端相应 --%>
<%-- response对象定义了处理创建HTTP信息头的接口 --%>
<%-- 通过使用这个对象，开发者们可以添加新的cookie或时间戳，还有HTTP状态码等等 --%>
<%-- 以下列出了用来设置HTTP相应头的方法，这些方法由HttpServletResponse类提供
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

<%-- HTTP响应头程序实例 --%>
<%-- head.jsp文件中的例子使用setIntHeader()方法和setRefreshHeader()方法来模拟一个数字时钟 --%>
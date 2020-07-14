<%-- HttpServletRequest类 --%>
<%-- request对象提供了一系列方法来获取HTTP信息头，包括表单数据，cookies，HTTP方法等等 --%>
<%-- jsp编程中常用的获取HTTP信息头的方法很多，这里只列举，不解释
    Cookie[] getCookies()
    Enumeration getAttributeNames()
    Enumeration getHeaderNames()
    Enumeration getParameterNames()
    HttpSession getSession()
    HttpSession getSession(boolean create)
    Locale getLocale()
    Object getAttribute(String name)
    ServletInputStream getInputStream()
    String getAuthType()
    String getCharacterEncoding()
    String getContentType()
    String getContextPath()
    String getHeader(String name)
    String getMethod()
    String getParameter()
    String getPathInfo()
    String getProtocol()
    String getQueryString()
    String getRemoteUser()
    String getRequestURI()
    String getRequestedSessionID()
    String getServletPath()
    String[] getParameterValues(String name)
    boolean isSecure()
    int getContentLength()
    int getIntHeader(String name)
    int getServerPort()
     --%>

<%-- 一个HTTP信息头示例在head.jsp文件中 --%>
<%-- jsp http状态码 --%>
<%-- http请求和http响应都包含了http状态码，状态码是规定的代表终端状态的数值 --%>
<%-- jsp提供了设置http状态码的方法 --%>
<%-- 以下列举了HttpServletResponse类中用来设置状态码的方法
    public void setStatus(int statusCode) : 
    此方法可以设置任意的状态码。如果您的响应包含一个特殊的状态码和一个文档，请确保在用PrintWriter返回任何内容前调用setStatus方法
    public void sendRedirect(String url) :
    此方法产生302响应，同时产生一个Location头告诉URL一个新的文档
    public void sendError(int code, String message) :
    此方法将一个状态码(通常为404)和一个短消息，自动插入HTML文档中并发回给客户端 --%>

<%-- 一个407错误示例在407.jsp中 --%>
<%-- 一个302错误实例在302.jsp中 --%>
<%-- 一个404错误实例在404.jsp中 --%>
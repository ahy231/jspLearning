<%-- jsp隐式对象 --%>
<%-- jsp隐式对象是jsp容器为每个页面提供的java对象，开发者可以直接使用它们而不用显示声明。jsp隐式对象也被成为预定义变量 --%>
<%-- jsp所支持的九大隐式对象
    request : HttpServletRequest接口的实例
    response : HttpServletResponse接口的实例
    out : JspWriter类的实例，用于把结果输出至网页上
    session : HttpSession类的实例
    application : ServletContext类的实例，与应用上下文有关
    config : ServletConfig类的实例
    pageContext : PageContext类的实例，提供对jsp页面所有对象以及命名空间的访问
    page : 类似于java类中的this关键字
    exception : Exception类的对象，代表发生错误的jsp页面中对应的异常对象 --%>

<%-- request对象 --%>
<%-- request对象是javax.servlet.http.HttpServletRequest类的实例。每当客户端请求一个jsp页面时，jsp引擎就会制造一个新的request来代表这个请求 --%>
<%-- request对象提供了一系列方法来获取HTTP头信息，cookies，HTTP方法等等 --%>

<%-- response对象 --%>
<%-- response对象时javax.servlet.http.HttpServletResponse类的实例 --%>
<%-- 当服务器创建request对象时会同时创建用于相应这个客户端的response对象 --%>
<%-- response对象也定义了处理HTTP头模块的接口 --%>
<%-- 通过这个对象，开发者们可以添加新的cookie，时间戳，HTTP状态码等等 --%>


<%-- out对象 --%>
<%-- out对象时javax.servlet.jsp.JspWriter类的实例，用来在response对象中写入内容 --%>
<%-- 最初的JspWriter类对象根据也i按是否有缓存来进行不同的实例化操作。可以在page指令中使用buffered='false'属性来轻松关闭缓存 --%>
<%-- JspWriter类包含了大部分java.io.PrintWriter类中的方法 --%>
<%-- 不过JspWriter新增了一些专为处理缓存而设计的方法。还有就是，JspWriter类会抛出IOException异常，而PrintWriter不会 --%>
<%-- out.print(dataType dt) : 输出Type类型的值 --%>
<%-- out.println(dataType dt) : 输出TYpe类型的值然后换行 --%>
<%-- out.flush() : 刷新输出流 --%>

<%-- session对象 --%>
<%-- session对象时javax.servlet.http.HttpSessioon类的实例。和Java Servlet中的session对象有一样的行为 --%>
<%-- session对象用来跟踪在各个客户端请求间的会话 --%>

<%-- application对象 --%>
<%-- application对象直接包装了servlet的ServletConText类的对象，时javax.servlet.ServletContext类的实例 --%>
<%-- 这个对象在jsp页面的整个生命周期中都代表着这个jsp页面。这个对象在jsp页面初始化时被创建，随着jspDestroy()方法的调用而被移除 --%>
<%-- 通过向application中添加属性，则所有组成您web应用的jsp文件都能访问到这些属性 --%>

<%-- config对象 --%>
<%-- config对象时javax.servlet.ServletConfig类的实例，直接包装了servlet的ServletConfig类的对象 --%>
<%-- 这个对象允许开发者访问Servlet或者jsp引擎的初始化参数，比如文件路径等 --%>
<%-- 以下时config对象的使用方法，不是很重要，所以不常用: --%>
<html>
<% config.getServletName();%>
</html>
<%-- 它返回包含在<servlet-name>元素中的servlet名字，注意，<servlet-name>元素在WEB-INF\web.xml文件中定义 --%>

<%-- pageContext对象 --%>
<%-- pageContext对象时javax.servlet.jsp.PageCOntext类的实例，用来代表整个jsp页面 --%>
<%-- 这个对象主要用来访问页面信息，同时过滤掉大部分实现细节 --%>
<%-- 这个对象存储了request对象和response对象的引用 --%>
<%-- application对象，config对象，session对象，out对象可以通过访问这个对象的属性来导出 --%>
<%-- pageContext对象也包含了传给jsp页面的指令信息，包括缓存信息，ErrorPage URL，页面scope等 --%>
<%-- PageContext类定义了一些字段，包括PAGE_SCOPE，REQUEST_SCOPE，SESSION_SCOPE，APPLICATION_SCOPE --%>
<%-- 它也提供了40余种方法，有一般继承自javax.servlet.jsp.JspContext类 --%>
<%-- 其中一个重要的方法就是removeAttribute()，它可接受一个或两个参数 --%>
<%-- 比如，pageContext.removeAttribute("attrName")移除四个scope中相关属性，但是下面这种方法值移除特定scope中的相关属性 --%>
<html>
<% pageContext.removeAttribute("attrName", PAGE_SCOPE);%>
</html>

<%-- page对象 --%>
<%-- 这个对象就是页面实例的引用。它可以被看做是整个jsp页面的代表 --%>
<%-- page对象就是this对象的同义词 --%>

<%-- exception对象 --%>
<%-- exception对象包装了从先前页面中抛出的异常信息。它通常被用来产生对出错条件的适当相应 --%>
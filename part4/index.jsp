<%-- jsp指令(directive) --%>
<%@ directive attribute="value" %>

<%-- Page指令 --%>
<%@ page attribute="value" %>
<%-- XML语法 --%>
<jsp:directive.page attribute="value" />
<%-- attrivute : 
    buffer : 指定out对象使用缓冲区的大小
    autoFlush : 控制out对象的缓存区
    contentType : 指定当前jsp页面的MIME类型和字符编码
    errorPage : 指定当jsp页面发生异常时现需要转向的错误处理页面
    isErrorPage : 指定当前jsp页面发生异常时需要转向的错误处理页面
    extends : 指定servlet从哪一个类继承
    import : 导入要使用的java类
    info : 定义jsp页面的描述信息
    isThreadSafe : 指定对jsp页面的访问是否为线程安全
    language : 定义jsp页面所用的脚本语言，默认是java
    session : 指定jsp页面是否使用session
    isELIgnored : 指定是否执行EL表达式
    isScriptingEnabled : 确定脚本元素能否被使用
     --%>

<%-- Include指令 --%>
<%@ include file="文件相对url地址" %>
<%-- XML语法 --%>
<jsp:directive.include file="文件相对url地址" />

<%-- Taglib指令 --%>
<%@ taglib uri="uri" prefix="prefixOfTag" %>
<%-- XML语法 --%>
<jsp:directive.taglib uri="uri" prefix="prefixOfTag" />
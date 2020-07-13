<%-- jsp基本语法 --%>

<%-- jsp代码片段 --%>
<% %>
<%-- xml语句 --%>
<jsp:scriptlet>
    //
</jsp:scriptlet>

<%-- jsp声明 --%>
<%! ; ; %>
<%-- xml语句 --%>
<jsp:declaration>
    //
</jsp:declaration>

<%-- jsp表达式 --%>
<%= %>
<%-- xml语句 --%>
<jsp:expression>
    //
</jsp:expression>

<%-- 注释 --%>
<%-- jsp注释不会发送给浏览器 --%>
<%-- 而html注释会发送给浏览器 --%>
<%-- 注释中 \', \", <\%, %\>均转义 --%>

<%-- jsp指令 --%>
<%-- 定义页面依赖属性如脚本语言、error页面、缓存需求等等 --%>
<%@ page %>
<%-- 包含其他文件 --%>
<%@ include %>
<%-- 引入标签库定义，可以实自定义标签 --%>
<%@ taglib %> 

<%-- jsp行为 --%>
<%-- 行为标签基本上是一些预先就定义好的函数 --%>
<%-- 只有一种语法格式 --%>
<%-- xml语句 --%>
<jsp:action_name attribute="value" />
<%-- jsp:include --%>
<%-- 用于在当前页面中包含静态或动态资源 --%>
<%-- jsp:useBean --%>
<%-- 寻找和初始化一个JavaBean组件 --%>
<%-- jsp:setProperty --%>
<%-- 设置JavaBean组件的值 --%>
<%-- jsp:getProperty --%>
<%-- 将JavaBean组件的值插入到output中 --%>
<%-- jsp:forward --%>
<%-- 从一个JSP文件想另一个文件传递一个包含用户请求的request对象 --%>
<%-- jsp:plugin --%>
<%-- 用于在生成的HTML页面中包含Applet和JavaBean对象 --%>
<%-- jsp:element --%>
<%-- 动态创建一个XML元素 --%>
<%-- jsp:attribute --%>
<%-- 定义动态创建的XML元素的属性 --%>
<%-- jsp:body --%>
<%-- 定义动态创建的XML元素的主体 --%>
<%-- jsp:text --%>
<%-- 用于封装模板数据 --%>

<%-- jsp隐含对象 --%>
<%-- request : HttpServletRequest类的实例 --%>
<%-- response : HttpServletResponse类的实例 --%>
<%-- out : PrintWriter类的实例，用于吧结果输出至网页上 --%>
<%-- session : HttpSession类的实例 --%>
<%-- qpplication : ServletContext类的实例，与应用上下文有关 --%>
<%-- config ServletConfig类的实例 --%>
<%-- pageContext : PageContext类的实例，提供对JSP页面所有对象以及命名空间的访问 --%>
<%-- page : 类似于Java类中的this关键字 --%>
<%-- Exception : Exception类的对象，代表发生错误的JSP页面中对应的异常对象 --%>

<%-- 控制流语句 --%>
<%-- JSP提供对Java语言的全面支持，可以直接使用Java语言编写控制流部分 --%>

<%-- 判断语句 --%>
<%-- 一个ifelse实例 --%>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%! int day = 3; %>
<!DOCTYPE html>
<html>
<head>
<title>菜鸟教程</title>
</head>
<body>
<% if (day == 1 || day == 7) { %>
    <p>今天是周末</p>
<% } else { %>
    <p>今天不是周末</p>
<% } %>
</body>
</html>
<%-- 一个switch例子，使用out.println() --%>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%! int day = 3; %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>菜鸟教程</title>
</head>
<body>
<h3>SWITCH...CASE 实例</h3>
<% 
switch(day) {
case 0:
   out.println("星期天");
   break;
case 1:
   out.println("星期一");
   break;
case 2:
   out.println("星期二");
   break;
case 3:
   out.println("星期三");
   break;
case 4:
   out.println("星期四");
   break;
case 5:
   out.println("星期五");
   break;
default:
   out.println("星期六");
}
%>
</body> 
</html>

<%-- 循环语句 --%>
<%-- 与选择语句类似，照搬Java语法 --%>

<%-- jsp字面量 --%>
<%-- 与Java中类似 --%>
<%-- 字符串(string):以单引号或双引号开始和结束 --%>
<%-- Null:null --%>
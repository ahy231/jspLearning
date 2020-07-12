<%-- jsp动作元素 --%>
<jsp:action_name attrivute="value" />

<%-- 标准动作元素，一些预定义函数 --%>
<%-- jsp :
    include : 在页面被请求的时候引入的一个文件
    useBean : 寻找或者实例化一个JavaBean
    setProperty : 设置JavaBean的属性
    getProperty : 输出某个JavaBean的属性
    forward : 把请求转到一个新的页面
    plugin : 根据浏览器类型为java插件生成OBJECT或EMBED标记
    element : 定义动态XML元素
    attribute : 设置动态定义的XML元素属性
    body : 设置动态定义的XML元素内容
    text : 在JSP页面的文档中使用写入文本的模板
     --%>

<%-- 常见的属性 --%>
<%-- 所有动作要素都有两个属性: id属性和scope属性 --%>
<%-- id属性时动作元素的唯一标识，可以在jsp页面中引用。动作元素创建的id值可以通过PageContext来调用 --%>
<%-- scope属性用于识别动作元素的生命周期。id属性和scope属性有直接关系，scope属性定义了相关联id对象的寿命。scope属性有四个可能的值: (a)page, (b)request, (c)session, 和(d)application --%>

<jsp:include/>
<%-- 包括page和flush属性 --%>
<%-- page代表文件相对地址 --%>
<%-- flush代表是否刷新缓存区 --%>
<%-- 此处演示实例在include文件夹中 --%>

<jsp:useBean/>
<%-- useBean动作用来加载一个将在jsp特面中使用的JavaBean。 --%>
<%-- 在类载入后,我们可以通过jsp:setProperty和jsp:getProperty动作来修改和检索bean的属性. --%>
<%-- 属性: 
    class : 指定Bean的完整包名
    type : 指定将引用该对象变量的类型
    beanName : 通过java.beans.Beans的instantiate()方法指定Bean的名字
     --%>

<jsp:setProperty/>
<%-- setProperty用来设置已经实例化的Bean对象的属性，有两种用法 --%>
<%-- 首先，可以在jsp:useBean元素的外面（后面）使用jsp:setProperty --%>
<jsp:useBean id="myName" />
<jsp:setProperty name="myName" property="someProperty" />
<%-- 此时，不管jsp:useBean是找到了一个现有的Bean，还是新创建了一个Bean实例，jsp:setProperty都会执行。 --%>
<%-- 第二种用法是把jsp:setProperty放入jsp:useBean元素的内部 --%>
<jsp:useBean id="myName">
    <jsp:setProperty name="myName" property="someProperty" />
<jsp:useBean/>
<%-- jsp:setProperty动作有四个属性 --%>
<%-- name : 必须，表示要设置的属性是哪个Bean
    property : 必须，表示要设置哪个属性。有一个特殊用法: 如果property的值是"*", 表示所有名字和Bean属性名字匹配的请求参数都将被传递给相应的属性set方法
    value : 可选，指定Bean属性的值，与param不能同时使用。
    param : 可选，指定用哪个请求参数作为Bean属性的值。如果当前请求没有参数，则什么事情也不做，系统不会把null传递给Bean属性的set方法。因此，你可以让Bean自己提供默认属性值，只有当请求参数明确制定了新值时才修改默认属性值
     --%>

<jsp:getProperty/>
<%-- getProperty属性值有:
    name : 要检索的Bean属性名称
    property : 表示要提取Bean属性的值
     --%>

<jsp:forward page="相对URL地址" />
<%-- page属性包含的时一个相对URL。page的值既可以直接给出，也可以在请求的时候动态计算，可以时一个jsp页面或者一个Java Servlet --%>
<%-- 实例在forward文件夹中 --%>

<jsp:plugin />
<%-- plugin动作用来根据浏览器类型，插入通过Java插件运行Java Applet所必需的OBJECT或EMBED元素。 --%>
<%-- 如果需要的插件不存在，它会下载插件，然后执行Java组件。Java组件可以是一个applet或一个JavaBean。 --%>
<%-- plugin动作有多个对应HTML元素的属性用于格式化Java组件。param元素可用于想Applet或Bean传递参数。 --%>
<%-- 以下是使用plugin动作元素的典型实例:  --%>
<jsp:plugin type="applet" codebase="dirname" code="MyApplet.class"
    width="60" height="80">
    <jsp:param name="fontcolor" value="red" />
    <jsp:param name="background" value="black" />

    <%-- fallback元素在组件出现故障的错误时发送给用户错误信息 --%>
    <jsp:fallback>
        Unable to initialize Java plugin
    </jsp:fallback>

</jsp:plugin>

<jsp:element/> <jsp:attribute/> <jsp:body/>
<%-- 这三个动作元素动态定义XML元素。动态时非常重要的，这就意味着XML元素在编译时是动态生成的而非静态 --%>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>动态元素</title>
</head>
<body>
<jsp:element name="xmlElement">
<jsp:attribute name="xmlElementAttr">
   属性值
</jsp:attribute>
<jsp:body>
   XML 元素的主体
</jsp:body>
</jsp:element>
</body>
</html>

<jsp:text/>
<%-- text动作元素允许在jsp页面和文档中使用写入文本的模板，语法格式如下: --%>
<jsp:text>模板数据</jsp:text>
<%-- 以上文本模板不能包含重复元素，之恶能包含文本和EL表达式。请注意，在XML文件中，您不能使用表达式如${whatever>0}，因为>符号是非法的。你可以使用${whatever gt 0}表达式或者嵌入在一个CDATA部分 --%>
<jsp:text><![CDATA[<br>]]></jsp:text>
<%-- 如果你需要在XHTML中声明DOCTYPE，必须使用到<jsp:text>动作元素，实例如下: --%>
<jsp:text><![CDATA[<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"DTD/xhtml1-strict.dtd">]]>
</jsp:text>
<head><title>jsp:text action</title></head>
<body>

<books><book><jsp:text>  
    Welcome to JSP Programming
</jsp:text></book></books>

</body>
</html>
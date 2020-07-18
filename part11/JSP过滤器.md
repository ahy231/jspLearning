<!--
 * @Copyright: free for non-commercial usage
 * @Author: ahy231
 * @Date: 2020-07-14 14:56:49
 * @LastEditor: ahy231
 * @LastEditTime: 2020-07-14 16:46:14
--> 
# JSP<font color=green><b>过滤器</b></font>
`JSP`和`Servlet`中的过滤器都是`Java`类。  
过滤器可以动态地拦截请求和响应，以变换或使用包含在请求或响应中的信息。  
可以将一个或多个过滤器附加到一个`Servlet`或一组`Servlet`。过滤器也可以附加到`JavaServer Page(JSP)`文件和`HTML`页面。
过滤器是可用于`Servlet`编程的`Java`类，可以实现以下目的：  
* 在客户端的请求访问后端资源之前，拦截这些请求。
* 在服务器的响应发送回客户端之前，处理这些响应。

根据规范建议的各种类型的过滤器：
* 身份验证过滤器(Authentication Filters)
* 数据压缩过滤器(Data compression Filters)
* 加密过滤器(Encryption Filters)
* 触发资源访问过滤器
* 图像转换过滤器(Image Conversion Filters)
* 日志记录和审核过滤器(Logging and Auditing Filters)
* MIME-TYPE链过滤器(Tokenizing Filters)
* 标记化过滤器(Tokenizing Filters)
* XSL/T过滤器(XSL/T Filters)，转换XML内容

过滤器通过`Web`部署描述符(<font color=#00a0ff>web.xml</font>)中的`XML`标签来声明，然后映射到您的应用程序的部署描述符中的`Servlet`名称或`URL`模式。
当`Web`容器启动`Web`应用程序时，它回为您在部署描述符中声明的每一个过滤器创建一个实例。  
`Filter`的执行顺序与在<font color=#00a0ff>web.xml</font>配置文件中的配置顺序一致，一般把`Filter`配置在所有的`Servlet`之前。  
![alt text](https://www.runoob.com/wp-content/uploads/2014/01/20161112201612568.png "Filter的过滤过程")

## Servlet<b>过滤器方法</b>
过滤器时一个实现了javax.servlet.Filter接口的Java类。javax.servlet.Filter接口定义了三个方法：  
| 序号 | 方法&描述 |
| :--: | :------- |
|   1  | `public void doFilter(ServletRequest, ServletResponse, FilterChain)`<br>该方法完成实际的过滤操作，当客户端的请求与过滤器设置的`URL`匹配时，`Servlet`容器将先调用过滤器的`doFilter`方法。`FilterChain`用于访问后续过滤器。|
|   2  | `public void init(FilterConfig filterConfig)`<br>`web`应用程序启动时，`web`服务器将创建`Filter`的实例对象，并调用器`init`方法，读取<font color=#00a0ff>web.xml</font>配置，完成对象的初始化功能，从而为后续的用户请求作好拦截的准备工作（`filter`对象只会创建一次，`init`方法也只会执行一次）。开发人员通过`init`方法的参数，可获得代表当前`filter`配置信息的`FilterConfig`对象。|
|   3  | `public void destroy()` <br>`Servlet`容器在销毁过滤器实例前调用该方法，在该方法中释放`Servlet`过滤器占用的资源。|

## FilterConfig<b>使用</b>
`Filter`的`init`方法中提供了一个`FilterConfig`对象。  
如<font color=#00a0ff>web.xml</font>文件配置如下：
```
<filter>
    <filter-name>LogFilter</filter-name>
    <filter-class>com.runoob.test.LogFilter</filter-class>
    <init-param>
        <param-name>Site</param-name>
        <param-value>菜鸟教程</param-value>
    </init-param>
</filter>
```
在`init`方法使用`FilterConfig`对象获取参数：
```
public void init(FilterConfig config) throws ServletException {
    //获取初始化参数
    String site = config.getInitParameter("Site");
    //输出初始化参数
    System.out.println("网站名称：" + site);
}
```
## JSP<b>过滤器实例</b>
以下时`Servlet`过滤器的实例，将输出网站名称和地址。本实例让您对`Servlet`过滤器有基本的了解，您可以使用相同的概念编写更复杂的过滤器应用程序：  
过滤器实例保存在[LogFilter.java](LogFilter.java)中。
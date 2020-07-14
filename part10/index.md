<!--
 * @Copyright: free for non-commercial usage
 * @Author: ahy231
 * @Date: 2020-07-14 10:06:10
 * @LastEditor: ahy231
 * @LastEditTime: 2020-07-14 13:31:35
--> 
# JSP表单处理

## <font color=#ff00ff>**GET**方法</font>
**GET**方法将请求的编码信息添加在网址后面，网址与编码信息通过"?"号分隔。如下所示：   
*http://www.runoob.com/hello?key1=value1&key2=value2*   
**GET**方法是浏览器默认传递参数的方法，一些敏感信息，如密码等建议不适用GET方法。   
用**GET**时，传输数据的大小由限制（注意不是参数的个数有限制），最大为1024字节。   

## **POST**方法
一些敏感信息，如密码等我们可以通过**POST**方法传递，**POST**体检数据时隐式的。   
**POST**提交数据时不可见的，GET是通过在url里面传递的（可以看一下你浏览器的地址栏）。   
JSP使用 `getParameter()` 来获得传递的参数，`getInputStream()` 方法用来处理客户端的二进制数据流的请求。   

## JSP读取表单数据
* `getParameter()`: 使用`request.getParameter()`方法来获取表单参数的值。
* `getParameterValues()`: 获得如`checkbox`类（名字相同，但值有多个）的数据。接收数组变量，如`checkbox`类型。
* `getParameterNames()`: 该方法可以取得所有变量的名称，该方法返回一个`Enumeration`。
* `getInputStream()`: 调用此方法来读取来自客户端的二进制数据流。

## 使用URL的GET方法实例
实例保存在[*get1.jsp*](get1.jsp)中。  

## 使用表单的GET方法实例
实例保存在[*get2.jsp*](get2.jsp)中。

## 使用表单的POST方法实例
实例保存在[*post.jsp*](post.jsp)中。
<!--
 * @Copyright: free for non-commercial usage
 * @Author: ahy231
 * @Date: 2020-07-14 14:56:49
 * @LastEditor: ahy231
 * @LastEditTime: 2020-07-14 16:46:14
--> 
# JSP<font color=green><b>������</b></font>
`JSP`��`Servlet`�еĹ���������`Java`�ࡣ  
���������Զ�̬�������������Ӧ���Ա任��ʹ�ð������������Ӧ�е���Ϣ��  
���Խ�һ���������������ӵ�һ��`Servlet`��һ��`Servlet`��������Ҳ���Ը��ӵ�`JavaServer Page(JSP)`�ļ���`HTML`ҳ�档
�������ǿ�����`Servlet`��̵�`Java`�࣬����ʵ������Ŀ�ģ�  
* �ڿͻ��˵�������ʺ����Դ֮ǰ��������Щ����
* �ڷ���������Ӧ���ͻؿͻ���֮ǰ��������Щ��Ӧ��

���ݹ淶����ĸ������͵Ĺ�������
* �����֤������(Authentication Filters)
* ����ѹ��������(Data compression Filters)
* ���ܹ�����(Encryption Filters)
* ������Դ���ʹ�����
* ͼ��ת��������(Image Conversion Filters)
* ��־��¼����˹�����(Logging and Auditing Filters)
* MIME-TYPE��������(Tokenizing Filters)
* ��ǻ�������(Tokenizing Filters)
* XSL/T������(XSL/T Filters)��ת��XML����

������ͨ��`Web`����������(<font color=#00a0ff>web.xml</font>)�е�`XML`��ǩ��������Ȼ��ӳ�䵽����Ӧ�ó���Ĳ����������е�`Servlet`���ƻ�`URL`ģʽ��
��`Web`��������`Web`Ӧ�ó���ʱ������Ϊ���ڲ�����������������ÿһ������������һ��ʵ����  
`Filter`��ִ��˳������<font color=#00a0ff>web.xml</font>�����ļ��е�����˳��һ�£�һ���`Filter`���������е�`Servlet`֮ǰ��  
![alt text](https://www.runoob.com/wp-content/uploads/2014/01/20161112201612568.png "Filter�Ĺ��˹���")

## Servlet<b>����������</b>
������ʱһ��ʵ����javax.servlet.Filter�ӿڵ�Java�ࡣjavax.servlet.Filter�ӿڶ���������������  
| ��� | ����&���� |
| :--: | :------- |
|   1  | `public void doFilter(ServletRequest, ServletResponse, FilterChain)`<br>�÷������ʵ�ʵĹ��˲��������ͻ��˵���������������õ�`URL`ƥ��ʱ��`Servlet`�������ȵ��ù�������`doFilter`������`FilterChain`���ڷ��ʺ�����������|
|   2  | `public void init(FilterConfig filterConfig)`<br>`web`Ӧ�ó�������ʱ��`web`������������`Filter`��ʵ�����󣬲�������`init`��������ȡ<font color=#00a0ff>web.xml</font>���ã���ɶ���ĳ�ʼ�����ܣ��Ӷ�Ϊ�������û������������ص�׼��������`filter`����ֻ�ᴴ��һ�Σ�`init`����Ҳֻ��ִ��һ�Σ���������Աͨ��`init`�����Ĳ������ɻ�ô���ǰ`filter`������Ϣ��`FilterConfig`����|
|   3  | `public void destroy()` <br>`Servlet`���������ٹ�����ʵ��ǰ���ø÷������ڸ÷������ͷ�`Servlet`������ռ�õ���Դ��|

## FilterConfig<b>ʹ��</b>
`Filter`��`init`�������ṩ��һ��`FilterConfig`����  
��<font color=#00a0ff>web.xml</font>�ļ��������£�
```
<filter>
    <filter-name>LogFilter</filter-name>
    <filter-class>com.runoob.test.LogFilter</filter-class>
    <init-param>
        <param-name>Site</param-name>
        <param-value>����̳�</param-value>
    </init-param>
</filter>
```
��`init`����ʹ��`FilterConfig`�����ȡ������
```
public void init(FilterConfig config) throws ServletException {
    //��ȡ��ʼ������
    String site = config.getInitParameter("Site");
    //�����ʼ������
    System.out.println("��վ���ƣ�" + site);
}
```
## JSP<b>������ʵ��</b>
����ʱ`Servlet`��������ʵ�����������վ���ƺ͵�ַ����ʵ��������`Servlet`�������л������˽⣬������ʹ����ͬ�ĸ����д�����ӵĹ�����Ӧ�ó���  
������ʵ��������[LogFilter.java](LogFilter.java)�С�
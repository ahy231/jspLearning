<!--
 * @Copyright: free for non-commercial usage
 * @Author: ahy231
 * @Date: 2020-07-14 10:06:10
 * @LastEditor: ahy231
 * @LastEditTime: 2020-07-14 14:07:37
--> 
# JSP������

## <font color=yellow>**GET**����</font>
**GET**����������ı�����Ϣ�������ַ���棬��ַ�������Ϣͨ��"?"�ŷָ���������ʾ��   
*http://www.runoob.com/hello?key1=value1&key2=value2*   
**GET**�����������Ĭ�ϴ��ݲ����ķ�����һЩ������Ϣ��������Ƚ��鲻����GET������   
��**GET**ʱ���������ݵĴ�С�����ƣ�ע�ⲻ�ǲ����ĸ��������ƣ������Ϊ1024�ֽڡ�   

## <font color=yellow>**POST**����</font>
һЩ������Ϣ������������ǿ���ͨ��**POST**�������ݣ�**POST**�������ʱ��ʽ�ġ�   
**POST**�ύ����ʱ���ɼ��ģ�GET��ͨ����url���洫�ݵģ����Կ�һ����������ĵ�ַ������   
JSPʹ�� `getParameter()` ����ô��ݵĲ�����`getInputStream()` ������������ͻ��˵Ķ�����������������   

## <font color=yellow>JSP��ȡ������</font>
* `getParameter()`: ʹ��`request.getParameter()`��������ȡ��������ֵ��
* `getParameterValues()`: �����`checkbox`�ࣨ������ͬ����ֵ�ж���������ݡ����������������`checkbox`���͡�
* `getParameterNames()`: �÷�������ȡ�����б��������ƣ��÷�������һ��`Enumeration`��
* `getInputStream()`: ���ô˷�������ȡ���Կͻ��˵Ķ�������������

## <font color=yellow>ʹ��URL��GET����ʵ��</font>
ʵ��������[*get1.jsp*](get1.jsp)�С�  

## <font color=yellow>ʹ�ñ���GET����ʵ��</font>
ʵ��������[*get2.jsp*](get2.jsp)�С�

## <font color=yellow>ʹ�ñ���POST����ʵ��</font>
ʵ��������[*post.jsp*](post.jsp)�С�

## <font color=yellow>����Checkbox���ݵ�JSP����</font>
ʵ��������[*checkbox.jsp*](checkbox.jsp)�С�
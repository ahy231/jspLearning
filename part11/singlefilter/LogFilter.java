/*
 * @Copyright: free for non-commercial usage
 * @Author: ahy231
 * @Date: 2020-07-14 16:44:25
 * @LastEditor: ahy231
 * @LastEditTime: 2020-07-15 10:18:02
 */ 
package singlefilter;
//�������� java ��
import javax.servlet.*;
import java.util.*;

//ʵ�� Filter ��
public class LogFilter implements Filter  {
    public void  init(FilterConfig config) throws ServletException { 
        // ��ȡ��ʼ������
        String site = config.getInitParameter("Site"); 

        // �����ʼ������
        System.out.println("��վ����: " + site); 
    }
    public void  doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws java.io.IOException, ServletException {

        // ���վ������
        System.out.println("վ����ַ��http://www.runoob.com");

        // �����󴫻ع�����
        chain.doFilter(request,response);
    }
    public void destroy( ){
        /* �� Filter ʵ���� Web �����ӷ����Ƴ�֮ǰ���� */
    }
}
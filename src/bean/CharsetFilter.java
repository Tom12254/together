
package bean;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class CharsetFilter implements Filter {
	private String charset;
	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		req.setCharacterEncoding(charset);//���÷���˽������ַ�������get����ʽ����Ч��doGetҪ�޸�tomcat���ã����Դ������ĵ�ʱ�򣬾�������post��ʽ
		resp.setContentType("text/html;charset=gbk");//���÷���˷�����Ϣ���õ��ַ�����ע�⣬��������MIME�������ݵ�ʱ����������servlet�������޸ġ�
		chain.doFilter(req,resp);//���������ݸ���һ����
	}
	
	
	public void init(FilterConfig config) throws ServletException {
		charset=config.getInitParameter("charset");
		if(charset==null) charset="gbk";

	}

}

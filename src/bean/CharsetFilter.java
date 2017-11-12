
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
		req.setCharacterEncoding(charset);//设置服务端解析用字符集，对get请求方式不生效，doGet要修改tomcat配置，所以传递中文的时候，尽量采用post方式
		resp.setContentType("text/html;charset=gbk");//设置服务端反馈信息采用的字符集，注意，传递其他MIME类型数据的时候，请自行在servlet中设置修改。
		chain.doFilter(req,resp);//将请求处理传递给下一环节
	}
	
	
	public void init(FilterConfig config) throws ServletException {
		charset=config.getInitParameter("charset");
		if(charset==null) charset="gbk";

	}

}

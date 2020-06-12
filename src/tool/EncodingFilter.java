package tool;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet implementation class EncodingFilter
 */
@WebFilter("/*")
public class EncodingFilter implements Filter {
	 /**
	 * doFilterメソッド
	 * リクエストとレスポンスの変数のCharacterEncodingをUTF-8にするメソッド
	 * @param request,response,chain
	 * @return void
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		chain.doFilter(request,response);
	}
	//フィルタ処理の最初に一回だけ呼ばれるメソッド
	public void init(FilterConfig filterConfig){}
	//フィルタ処理の最後に一回だけ呼ばれるメソッド
	public void destroy(){}


}

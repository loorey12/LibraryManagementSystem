package tool;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
* すべてのリクエストを処理するコントロール
* @author プンヒマル
* @version 1.0.0
*/
@WebServlet(urlPatterns={"*.action"})
public class FrontController extends HttpServlet {
	 /**
	 * doPostメソッド
	 * POSTリクエストをハンドルするメソッド
	 * @param request,response
	 * @return void
	 */
	public void doPost(
		HttpServletRequest request, HttpServletResponse response
	) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try {
			//リクエストのURLに含まれる、サーブレットのパスを取得すて先頭の１文字を削除する
			String path=request.getServletPath().substring(1);
			//Stringの(.aをA)と(/を.)で書き換える
			String name=path.replace(".a", "A").replace('/', '.');
			System.out.println(name);
			//指定した名前のクラスに関連付けられた、Classオブジェクトを返す
			Action action=(Action)Class.forName(name).newInstance();
			System.out.println(action);
			String url=action.execute(request, response);
			System.out.println(url);
			request.getRequestDispatcher(url).
				forward(request, response);
		} catch (Exception e) {
			e.printStackTrace(out);
		}
	}
	 /**
	 * doGetメソッド
	 * GETリクエストをハンドルするメソッド
	 * @param request,response
	 * @return void
	 */
	public void doGet(
		HttpServletRequest request, HttpServletResponse response
	) throws ServletException, IOException {
		//GETできているリクエストの場合もdoPost()メソッドにあてるメソッド
		doPost(request, response);
	}
}

package tool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
* Abstractクラス
* @author プンヒマル
* @version 1.0.0
*/
public abstract class Action {
	 /**
	 * executeメソッド
	 * このクラスをextendsしている全クラスがimplementするメソッド
	 * @param request,response
	 * @return なし
	 */
	public abstract String execute(
		HttpServletRequest request, HttpServletResponse response
	)throws Exception;

}

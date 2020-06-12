package userAccount;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import dao.UserDAO;
import tool.Action;

public class UserSearchAction extends Action {

	public String execute(
			HttpServletRequest request, HttpServletResponse response
		) throws Exception {
		int disp1 = Integer.parseInt(request.getParameter("disp1"));
		System.out.println(disp1);
		int disp2 = Integer.parseInt(request.getParameter("disp2"));
		String keyword=request.getParameter("keyword");
		if (keyword==null) keyword="";

		UserDAO dao=new UserDAO();
		List<User> list=dao.search(keyword,disp1,disp2);
		for(User data:list){
//			System.out.println(data.get(u));
		}
		if(list.isEmpty()){
			return "";
		}

		request.setAttribute("list", list);


		return "usr_mgmt.jsp";
		}
}

package move;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardDTO;
import board.boardDAO;

import move.ActionForward;

import java.util.ArrayList;

public class moveMainAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		boardDAO bdao = new boardDAO();
		move.ActionForward forward = new ActionForward();
		
		//System.out.println("moveMainAction");
		
		try {
			request.setCharacterEncoding("utf-8");
			ArrayList<boardDTO> blist = bdao.list();
			request.setAttribute("blist", blist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		forward.setRedirect(false);
		forward.setPath("goToMain.cd");
		System.out.println("End of moveMainAction");
		
		return forward;
	}

}

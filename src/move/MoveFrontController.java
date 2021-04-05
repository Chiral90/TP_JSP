package move;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import move.Action;
import move.ActionForward;



/**
 * Servlet implementation class MoveFrontController
 */
@WebServlet("/MoveFrontController")
public class MoveFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoveFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String RequestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = RequestURI.substring(contextPath.length());
    	
    	//System.out.println(RequestURI);
    	//System.out.println(contextPath);
    	//System.out.println(command);
    	
    	ActionForward forward = null;
    	Action action = null;
    	if (command.equals("/main.cd")) {
    		action = new moveMainAction();
    		try {
    			forward = action.execute(request, response);
    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    	}
    	if (command.equals("/goToMain.cd")) {
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("mainpage.jsp?page=default");
    	}
    	if (command.equals("/login.cd")) {
    		forward = new ActionForward();
    		forward.setRedirect(true);
    		forward.setPath("mainpage.jsp?page=login");
    	}
    	if (command.equals("/signup.cd")) {
    		forward = new ActionForward();
    		forward.setRedirect(true);
    		forward.setPath("mainpage.jsp?page=signup");
    	}
    	if (command.equals("/board.cd")) {
    		forward = new ActionForward();
    		forward.setRedirect(true);
    		forward.setPath("mainpage.jsp?page=board");
    	}
    	if (forward!=null) {
    		if (forward.isRedirect()) {
    			response.sendRedirect(forward.getPath());
    		} else {
    			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
    			dispatcher.forward(request, response);
    		}
    	}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

}

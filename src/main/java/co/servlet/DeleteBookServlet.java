package co.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;
import com.entity.Book;

public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   BookDao bookDao=new BookDao();
    public DeleteBookServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int bid=Integer.parseInt(request.getParameter("bid"));
		bookDao.deleteBook(bid);
		response.sendRedirect("Booklist.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

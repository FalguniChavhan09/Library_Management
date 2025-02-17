package co.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;
import com.entity.Book;


public class bookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public bookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	//	int bid = Integer.parseInt(request.getParameter("bid"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		double price = Double.parseDouble(request.getParameter("price"));
		
		Book book = new Book(title,author,price);
		BookDao.save(book);
		boolean result=BookDao.save(book);
		if(!result){
			System.out.println("Book Added Successfully");
		}
		else{
			System.out.println("Something went wrong");
		}
		response.sendRedirect("Booklist.jsp");
	
	}

}
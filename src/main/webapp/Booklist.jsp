<%@page import="java.util.List"%>
<%@page import="com.entity.Book"%>
<%@page import="com.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f4;
         background-image: url('https://th.bing.com/th/id/OIP.UtZ3HTLfbHwwB7KKGtm_4AHaJQ?rs=1&pid=ImgDetMain');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

    .container {
        width: 80%;
        margin: auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    h2 {
        color: #333;
        border-bottom: 2px solid #007BFF;
        padding-bottom: 10px;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007BFF;
        color: #fff;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }

    .btn-delete {
        color: #fff;
        background-color: #dc3545;
        border: none;
        padding: 5px 10px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 4px 2px;
        transition-duration: 0.4s;
    }

    .btn-delete:hover {
        background-color: #c82333;
        color: white;
    }

    .links {
        margin-top: 20px;
        text-align: center;
    }

    .links a {
        color: #007BFF;
        font-weight: bold;
        margin: 0 15px;
        text-decoration: none;
    }

    .links a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Book List</h2>
        <table>
            <thead>
                <tr>
                    <th>Book Id</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Actions</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% 
                BookDao bookDao = new BookDao();
                List<Book> books = bookDao.getBooks();
                for(Book book : books) {
                %>
                <tr>
                    <td><%= book.getBid() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getPrice() %></td>
                    <td><a href="updateBook.jsp?bid=<%= book.getBid() %>">Update</a></td>
                    <td>
                        <form action="DeleteBookServlet" method="get" style="display:inline;">
                            <input type="hidden" name="bid" value="<%= book.getBid() %>"/>
                            <input type="submit" class="btn-delete" value="Delete"/>
                        </form>
                    </td>
                </tr>
                <% } %>   
            </tbody>
        </table>
        <div class="links">
            <a href="addBook.jsp">Add Book</a>
            <a href="index.jsp">Dashboard</a>
        </div>
    </div>
</body>
</html>

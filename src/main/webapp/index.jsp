<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        background-image: url('https://th.bing.com/th/id/OIP.UtZ3HTLfbHwwB7KKGtm_4AHaJQ?rs=1&pid=ImgDetMain');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

    h1 {
        color: #0056b3;
        margin-bottom: 20px;
        font-size: 2em;
    }

    .container {
        text-align: center;
        background-color: #ffffff;
        border-radius: 8px;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        font-size: 1.2em;
        border: 1px solid #007BFF;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }

    a:hover {
        background-color: #007BFF;
        color: #ffffff;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Library Management</h1>
        <a href="addBook.jsp">Add Book</a>
          <a href="updateBook.jsp">Update Book</a>
           <a href="Booklist.jsp">View Table</a>
    </div>
    
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap');
    @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css');

    *, *:before, *:after {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    body {
        background-color: #080710;
        font-family: 'Poppins', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .background {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 430px;
        height: 520px;
        z-index: -1;
    }

    .background .shape {
        position: absolute;
        border-radius: 50%;
    }

    .shape:first-child {
        background: linear-gradient(#1845ad, #23a2f6);
        width: 200px;
        height: 200px;
        top: -80px;
        left: -80px;
    }

    .shape:last-child {
        background: linear-gradient(to right, #ff512f, #f09819);
        width: 200px;
        height: 200px;
        bottom: -80px;
        right: -30px;
    }

    form {
        background-color: rgba(255, 255, 255, 0.13);
        border-radius: 10px;
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: 50px 35px;
        text-align: center;
        width: 400px;
    }

    form h3 {
        font-size: 32px;
        font-weight: 500;
        line-height: 42px;
        margin-bottom: 30px;
        color: #ffffff;
    }

    label {
        font-size: 16px;
        font-weight: 500;
        display: block;
        margin: 30px 0 10px;
        color: #ffffff;
    }

    input, button {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: none;
        font-size: 14px;
        margin-top: 8px;
    }

    input {
        background-color: rgba(255, 255, 255, 0.07);
        color: #ffffff;
    }

    button {
        background-color: #ffffff;
        color: #080710;
        font-weight: 600;
        margin-top: 30px;
        cursor: pointer;
        transition: background-color 0.3s, color 0.3s;
    }

    button:hover {
        background-color: #007BFF;
        color: #ffffff;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        text-decoration: none;
        color: #ffffff;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="updateBookServlet" method="post">
        <h3>Add Book Here</h3>
         <label for="bid">Title</label>
        <input type="text" placeholder="Book Id" name="bid" id="bid" value="${book.id }" required>

        <label for="title">Title</label>
        <input type="text" placeholder="Title" name="title" id="title" value="${book.title }" required>

        <label for="author">Author</label>
        <input type="text" placeholder="Author" name="author" id="author"value="${book.author }" required>
        
        <label for="price">Price</label>
        <input type="text" placeholder="Price" name="price" id="price"value="${book.price }" required>

        <button type="submit">Submit</button>
        <button type="reset">Cancel</button>
        <a href="Booklist.jsp">View BooK List</a>
    </form>
</body>
</html>

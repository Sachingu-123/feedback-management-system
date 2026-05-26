<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback Form</title>

<link rel="stylesheet"
type="text/css"
href="css/Style.css">
<script src="<%=application.getContextPath()%>/js/script.js"></script>

</head>

<body>

<div>

    <h1>Feedback Form</h1>

    <form action="feedback"
      method="post"
      name="feedbackForm"
      onsubmit="return validateForm()">

        <input type="text"
               name="name"
               placeholder="Enter Your Name"
               required>
        <br><br>

        <input type="email"
               name="email"
               placeholder="Enter Your Email"
               required>
        <br><br>

        <textarea name="message"
                  placeholder="Enter Feedback"
                  rows="5"
                  cols="30"></textarea>

        <br><br>

        <button type="submit">Submit Feedback</button>

    </form>

</div>

</body>
</html>
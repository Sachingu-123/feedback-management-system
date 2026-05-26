<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback Response</title>

<link rel="stylesheet"
href="<%=application.getContextPath()%>/css/Style.css">

</head>

<body>

<div>

    <h1>Feedback Submitted Successfully 🎉</h1>

    <p>
        Name :
        <%=request.getAttribute("name") %>
    </p>

    <p>
        Email :
        <%=request.getAttribute("email") %>
    </p>

    <p>
        Feedback :
        <%=request.getAttribute("message") %>
    </p>

</div>

</body>
</html>
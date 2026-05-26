<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>

<link rel="stylesheet"
href="<%=application.getContextPath()%>/css/Style.css">

</head>

<body>

<div>

    <h1>Feedback Submitted Successfully 🎉</h1>
    <h2>
    	Welcome,
    	<%=session.getAttribute("username") %>
	</h2>

</div>

</body>
</html>
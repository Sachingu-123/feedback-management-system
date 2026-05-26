<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Admin Page</title>

<link rel="stylesheet"
href="<%=application.getContextPath()%>/css/Style.css">

</head>

<body>

<div>

    <h1>All Feedbacks</h1>
    <table border="1" cellpadding="10">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Message</th>
</tr>

<%

try{

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con =
        DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/feedback_db",
        "root",
        "Aspirant@123");

    String query = "select * from feedback";

    PreparedStatement ps =
            con.prepareStatement(query);

    ResultSet rs = ps.executeQuery();

    while(rs.next()){

%>

<tr>

    <td><%=rs.getInt("id") %></td>

    <td><%=rs.getString("name") %></td>

    <td><%=rs.getString("email") %></td>

    <td><%=rs.getString("message") %></td>

</tr>

<%

    }

    con.close();

}catch(Exception e){

    out.println(e);

}

%>

</table>

</div>

</body>
</html>
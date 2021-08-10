<%@ page import="java.util.List" %>
<%@ page import="model.User" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link href="../css/tooplate-chilling-cafe.css" rel="stylesheet" type="text/css" />

<html>
<head>
    <title>Us</title>
</head>
<body>
<% String msg = (String) session.getAttribute("msg");%>
<% if (msg != null && !"".equals(msg)) { %>
<span><%=msg%></span>
<%
        session.removeAttribute("msg");
    }%>

<% List<User> users = (List<User>) request.getAttribute("user");%>
<h1>
    <div style="text-align: center ">

        <table border="1">

            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>Action</th>
            </tr>
            <% if (users != null && !users.isEmpty()) {
                for (User user : users) {
            %>
            <tr>
                <td><%=user.getName()%>
                </td>
                <td><%=user.getSurname()%>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/deleteuser?id=<%=user.getId()%>">Delete</a>
                    <a href="${pageContext.request.contextPath}/singleUser?id=<%=user.getId()%>">Show More</a>

                </td>
            </tr>
            <% }
            }%>
        </table>

    </div>
</h1>
</body>
</html>
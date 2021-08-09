<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="others/landing.css"/>

<!DOCTYPE html>
<html>
<head>
    <title>index</title>

<body>
<% String msg = (String) session.getAttribute("msg");%>
<% if (msg != null && !"".equals(msg)) { %>
<span><%=msg%></span>
<%
        session.removeAttribute("msg");
    }%>
<div id="top">


    <a style="text-align: center" href="${pageContext.request.contextPath}/login">
        <button class="btn btn-primary">Log In</button>
    </a>
    <a style="text-align: center" href="register.jsp">
        <button class="btn btn-primary">Register</button>
    </a>


</div>
</body>
</html>



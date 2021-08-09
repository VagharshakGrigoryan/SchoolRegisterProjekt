<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="others/chuse.css"/>
<!DOCTYPE html>
<html>
<head>
    <title>AdUser</title>
</head>
<body >
<br>
<br>
<div style="text-align: center " ><h1><p style="font-size: 100px; color: #b8daff" >Welcome</p> </h1><br></div>
<br>
<h1>
    <div style="text-align: center ">
        <h1> <p style="font-size: 50px; color: #b8daff" >You can choose what school do you wanna to study.</p>
            <br><br>
            <a href="${pageContext.request.contextPath}/addSchool.jsp">
                <button class="btn btn-primary">choose school</button>
            </a></h1>
        <br>
        <br>
        <br>
        <div style="text-align: center ">
            <br>
            <h2>
                <a href="${pageContext.request.contextPath}/logout">
                    <button class="btn btn-primary">Logout</button>
                </a><br>
            </h2>
        </div>
    </div>
</h1>
</body>
</html>
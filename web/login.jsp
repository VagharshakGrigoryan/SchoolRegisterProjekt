<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="others/login.css" />

<div  style="text-align: center "><h1>

    <strong> <%if (request.getAttribute("msg")!=null){ %>
    </strong></h1>
</div>
<br>
<h1> <p style="font-size: 50px; color: #b8daff" >
    <strong> <%=request.getAttribute("msg")%>

    </strong></h1>
<% } %>

<div id="top">
    <form action="login" method="post">
        <div class="form-group">
            <label>Email</label>
            <label for="InputEmail"></label><input type="text" name ="email"
          class="form-control" id="InputEmail" aria-describedby="emailHelp" placeholder="Enter email" required>
        </div>
        <div class="form-group">
            <label for="InputPassword1">Password</label>
            <input type="password" name ="password" class="form-control"
                   id="InputPassword1" placeholder="Password" required>
        </div>

        <button type="submit" class="btn btn-primary">Log In</button>
    </form>
</div>

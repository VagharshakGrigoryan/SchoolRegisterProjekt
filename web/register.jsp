<%@ page import="model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>

    <title>Registration Page</title>
    <link rel="stylesheet" href="resources/bootstrap.min.css"/>
    <link rel="stylesheet" href="others/register.css"/>

</head>
<body>
<div id="top">
    <form method="Post" action="${pageContext.request.contextPath}/register" enctype="multipart/form-data">

        <div class="form-group">
            <label>Name</label>
            <label>
                <input type="text" name="name" class="form-control" aria-describedby="emailHelp"
                       placeholder="Enter Your first name" required>
            </label>
        </div>
        <div class="form-group">
            <label>Surname</label>
            <label>
                <input type="text" name="surname" class="form-control" aria-describedby="emailHelp"
                       placeholder="Enter your last name" required>
            </label>
        </div>
        <div class="form-group">
            <label>Email</label>
            <label>
                <input type="email" name="email" class="form-control" aria-describedby="emailHelp"
                       placeholder="Enter your email" required>
            </label>
        </div>


        <div class="form-group">
            <label for="InputPassword">Confirm Password</label>
            <input type="password" name="password" class="form-control" id="InputPassword"
                   placeholder="Please confirm Password" required>
        </div>
            <tr>
                <td>
                    Region:
                </td>
                <td>
                    <label>
                        <select name="region">
                            <option> Aragatsotn</option>
                            <option>Ararat</option>
                            <option>Armavir</option>
                            <option>Gegharkunik</option>
                            <option>Kotayk</option>
                            <option>Lori</option>
                            <option>Shirak</option>
                            <option>Syunik</option>
                            <option>Tavush</option>
                            <option>Vayots Dzor</option>
                        </select>
                    </label>
                </td>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                    <label>
                        <select name="gender">
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label for="InputDate">Birthday date</label>
                        <input type="datetime-local" name="birthday" class="form-control"
                               id="InputDate" placeholder="birthday date" required>
                    </div>
                </td>
            </tr>
        <div class="form-group">
            <label>Add profile picture</label>
            <label>
                <input type="file" name="picture"  aria-describedby="emailHelp"
                       placeholder="Enter Your foto" required>
            </label>
        </div>
        <tr>
                <td>
                    <input type="submit" value="register">
                </td>
                <td>
                    <input type="reset" value="reset">
                </td>
            </tr>
    </form>
</div></body>
</html>


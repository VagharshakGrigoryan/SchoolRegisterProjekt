<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="others/user.css"/>
<!DOCTYPE html>
<html>
<head>
    <title>Add school</title>

</head>
<body>
<div id="top">
    <form method="Post" action="${pageContext.request.contextPath}/addSchool">

        <div class="form-group">
            <tr>
                <td>
                    name:
                </td>
                <td>
                    <label>
                        <select name="name">
                            <option> Գյումրու թիվ 37 ավագ դպրոց</option>
                            <option>Գյումրու թիվ 26 ավագ դպրոց</option>
                            <option>Գյումրու թիվ 3 ավագ դպրոց</option>
                            <option>Գյումրու թիվ 2 ավագ դպրոց</option>
                        </select>
                    </label>
                </td>
            <tr>
                <td>
                    classes :
                </td>
                <td>
                    <label>
                        <select name="classes">
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                    </label>
                </td>
            </tr>

            <tr>
                <td>
                    flow :
                </td>
                <td>
                    <label>
                        <select name="flow">
                            <option>Հումանիտար պատմական</option>
                            <option>Հումանիտար լեզուներ</option>
                            <option>Բնագիտական</option>
                            <option>Տնտեսագիտական</option>
                        </select>
                    </label>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label for="InputDate">Registration date</label>
                        <input type="datetime-local" name="registerdate" class="form-control"
                               id="InputDate" placeholder="register date" required>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="add">
                </td>
                <td>
                    <input type="reset" value="reset">
                </td>
            </tr>
        </div>

    </form>
</div>
</body>
</html>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="model.School" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="others/profile.css"/>
<%
    User user= (User) request.getAttribute("user");%>

<div class="student-profile py-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent text-center">
                        <img class="profile_img" src="${pageContext.request.contextPath}/getImage?picUrl=<%=user.getPicUrl()%>" alt="Trulli" width="300" height="333">

                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent border-0">
                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
                    </div>
                    <div class="card-body pt-0">
                        <table class="table table-bordered">
                            <tr>
                                <th width="30%">Name</th>
                                <td width="2%">:</td>
                                <td><%=user.getName()%></td>
                            </tr>
                            <tr>
                                <th width="30%">Surname</th>
                                <td width="2%">:</td>
                                <td><%=user.getSurname()%></td>
                            </tr>
                            <tr>
                                <th width="30%">Email</th>
                                <td width="2%">:</td>
                                <td><%=user.getEmail()%></td>
                            </tr>
                            <tr>
                                <th width="30%">Password</th>
                                <td width="2%">:</td>
                                <td> <%=user.getPassword()%></td>
                            </tr>
                            <tr>
                                <th width="30%">Region</th>
                                <td width="2%">:</td>
                                <td><%=user.getRegion()%></td>
                            </tr>
                            <tr>
                                <th width="30%">Gender</th>
                                <td width="2%">:</td>
                                <td><%=user.getGender()%></td>
                            </tr>
                            <tr>
                                <th width="30%">Birthday</th>
                                <td width="2%">:</td>
                                <td> <%=user.getBirthday()%></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="height: 26px"></div>
                <div style="text-align: center ">
                    <br>
                    <h2>
                        <a href="${pageContext.request.contextPath}/logout">
                            <button class="btn btn-primary">Logout</button>
                        </a><br>
                    </h2>
                </div>
            </div>
            </div>
        </div>
    </div>

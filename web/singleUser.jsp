<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="model.School" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="others/register.css"/>

<a href="${pageContext.request.contextPath}/home.jsp" >Go Home</a>
<div class="student-profile py-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent text-center">
                        <img class="profile_img" src="(D:\java projekt\fin\web\pic\235-2359775_big.jpg)" alt="student dp">
                        <h3>Ishmam Ahasan Samin</h3>
                    </div>
                    <div class="card-body">


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
                                <th width="30%">Roll</th>
                                <td width="2%">:</td>
                                <td>125</td>
                            </tr>
                            <tr>
                                <th width="30%">Academic Year </th>
                                <td width="2%">:</td>
                                <td>2020</td>
                            </tr>
                            <tr>
                                <th width="30%">Gender</th>
                                <td width="2%">:</td>
                                <td>Male</td>
                            </tr>
                            <tr>
                                <th width="30%">Religion</th>
                                <td width="2%">:</td>
                                <td>Group</td>
                            </tr>
                            <tr>
                                <th width="30%">blood</th>
                                <td width="2%">:</td>
                                <td>B+</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="height: 26px"></div>

            </div>
        </div>
    </div>
</div>
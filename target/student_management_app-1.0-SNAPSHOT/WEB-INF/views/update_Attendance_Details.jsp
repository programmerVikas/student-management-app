<%-- 
    Document   : update_Attendance_Details
    Created on : 6 Oct, 2020, 12:07:32 PM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>attendance-details-update Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--google font-->
        <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@800&display=swap" rel="stylesheet">
        <!--font awesome-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <style>
            *{
                margin: 0%;
                padding: 0%;
                box-sizing: border-box;

            }          
            li .dropdown-menu a{
                transition: 0.3s ;
            }

            li .dropdown-menu a:hover{
                background-color: #F7DC6F;
            }
        </style>
    </head>
    <body>
        <div class="section  mb-5">  
            <%@include file="admin_navbar.jsp" %>
            <div class="container-fluid bg-dark py-3">
                <div class="container">
                    <h3 class="bg-dark text-light">Attendance</h3>                    
                </div>
            </div>

            <div class="container mt-5 mb-5">
                <div class="row-sm">
                    <div class=" col-md-6 ">
                        <div class="">
                            <h3>Edit Attendance</h3>
                        </div><hr>
                        <form action="/student_management_app/attendance/teacherUpdate" method="post" class="mt-5">
                            <input type="hidden" name="id" value="${id}">
                            <div class="form-row">                                
                                <div class="form-group col-md-6 ">
                                    <label for="inputState">Select Subject :-</label>
                                    <select id="u_sub" class="form-control" name="subject">
                                        <option >${singleData.subject}</option>                                        
                                    </select>
                                    <span class="text-warning" id="role_alt"></span>
                                </div>     
                                <div class="form-group col-md-6 ">
                                    <label for="inputState">Select Student :-</label>
                                    <select id="u_std" class="form-control" name="student_name">
                                        <option selected>${singleData.student_name}</option>
                                        <c:forEach var="data" items="${preData}">
                                            <c:if test="${data.user_type == 'student'}">
                                                <option >${data.first_name} ${data.last_name}</option>                            
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                    <span class="text-warning" id="roles_alt"></span>
                                </div>     
                            </div>

                            <div class="form-row">                  
                                <div class="form-group col-md-6">
                                    <label>Roll no.</label>
                                    <input type="number" class="form-control"  name="student_roll" id="title" placeholder="Enter roll no."  value="${singleData.student_roll}">
                                    <span class="text-warning" id="title_alt"></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4"> Date</label>
                                    <input type="text" class="form-control"  name="present_date" id="p_dates" value="${singleData.present_date}">
                                    <span class="text-warning" id="dates_alt"></span>
                                </div>
                            </div>
                            <div class="form-row ">
                                <div class="form-group col-md-6">
                                    <label for="inputState">PRN</label>
                                    <input type="text" id="u_prn" class="form-control" name="student_prn" placeholder="Enter your Prn no." value="${singleData.student_prn}">                        
                                    <span class="text-warning" id="prn_alt"></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputState">Status :-</label>
                                    <select id="u_status" class="form-control" name="student_status">
                                        <option selected>${singleData.student_status}</option>
                                        <option value="present">Present</option>
                                        <option value="absent">Absent</option>
                                    </select>
                                    <span class="text-warning" id="status_alt"></span>
                                </div>
                            </div>     
                            <button type="submit" class="btn btn-primary btn-lg mt-1">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning"></span>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>

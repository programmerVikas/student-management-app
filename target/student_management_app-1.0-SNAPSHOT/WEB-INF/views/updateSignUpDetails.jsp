<%-- 
    Document   : updateSignUpDetails
    Created on : 5 Oct, 2020, 7:28:37 AM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Update signup details Page</title>
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
        <div class="section sec1 mb-5">         

            <%@include file="admin_navbar.jsp" %>
            <!--nav bar is Ending --------------------------------------------------------------------------------------->

                

            <div class="container-fluid bg-dark py-3">
                <div class="container">
                    <h3 class="bg-dark text-light">User</h3>                    
                </div>
            </div>

            <div class="container mt-5 mb-5">
                <div class="row-sm">
                    <div class=" col-md-8 ">
                        <div class="">
                            <h3>Edit User</h3>
                        </div><hr>
                        <form action="/student_management_app/updateData" method="post">
                            
                            <input type="hidden" name="id" value="${id}">
                            <div class="form-row">                                
                                <div class="form-group col-md-4 ">                                   
                                    <input type="hidden" value="${data.user_type}" name="user_type">                                                                        
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">First Name</label>
                                    <input type="text" class="form-control" id="first" placeholder="Enter first name" name="first_name" value="${data.first_name}">                                     
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Last Name</label>
                                    <input type="text" class="form-control" id="last" placeholder="Enter last name" name="last_name" value="${data.last_name}">
                                    
                                </div>
                            </div>

                            <div class="form-row">                                
                                <div class="form-group col-md-6 ">                                                                   
                                    <input type="hidden" class="form-control" id="u_name" placeholder="Enter your unique prn" name="prn" value="${data.prn}">
                                    
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    
                                    <input type="hidden" class="form-control" id="u_pass" placeholder="Enter password" name="pass1" value="${data.pass1}">
                                    
                                </div>                                
                            </div>

                            <div class="form-row">                                
                                <div class="form-group col-md-12 ">                                 
                                    <label for="inputEmail4">School / University / College</label>
                                    <input type="text" class="form-control" id="college" placeholder="Enter your school/university/college name" name="school" value="${data.school}">
                                    
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Course</label>
                                    <input type="text" class="form-control" id="u_course" placeholder="Enter course name" name="course" value="${data.course}">
                                    
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Branch / Department</label>
                                    <input type="text" class="form-control" id="u_branch" placeholder="Enter branch /Department name" name="branch" value="${data.branch}">
                                   
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label >Select Gender</label>
                                    <select id="u_gender" class="form-control" name="gender">                                      
                                        <option>${data.gender}</option>                                                                     
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4"> DOB</label>
                                    <input type="date" class="form-control"  name="dob" id="u_dobs" value="${data.dob}">                                    
                                </div>
                            </div>

                            <div class="form-row">                                
                                <div class="form-group col-md-6">                                 
                                    <label for="inputEmail4">phone</label>
                                    <input type="number" class="form-control" id="u_phone" placeholder="Enter phone number" name="phone" value="${data.phone}">                                   
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-8">                                 
                                    <label for="exampleInputEmail1">@Email</label>
                                    <input type="email" class="form-control" id="u_mail" aria-describedby="emailHelp" placeholder="Enter email-ID" name="mail" value="${data.mail}">                                    
                                </div>                                                                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">                                    
                                    <input type="hidden" class="form-control" id="u_con" placeholder="Enter country name" name="country" value="${data.country}">                                    
                                </div>
                                <div class="form-group col-md-4">                                    
                                    <input type="hidden" name="s_state" value="${data.s_state}">                                                                   
                                </div>
                                <div class="form-group col-md-4">                                   
                                    <input type="hidden" class="form-control" id="u_city" placeholder="Enter city name " name="city" value="${data.city}">
                                    
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputAddress">Address</label>
                                <textarea class="form-control" id="u_add1" rows="3" placeholder="Enter permanent address" name="address1">${data.address1}</textarea>                               
                            </div>
                            <div class="form-group">                                
                                <input type="hidden" name="address2" value="${data.address2}">                                                          
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning"></span>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>

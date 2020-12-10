<%-- 
    Document   : loginPage
    Created on : 30 Sep, 2020, 11:19:17 AM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>signup page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="<c:url value="/resources/script/script.js"/>"></script>  <!--   user-defined script-->
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
                transition: 0.5s ;
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
                    <h6 class="text-warning">${msg}</h6>
                </div>
            </div>

            <div class="container mt-5 mb-5">
                <div class="row-sm">
                    <div class=" col-md-8 ">
                        <div class="">
                            <h3>Add User</h3>
                        </div><hr>
                        <form action="saveUser" method="post" onsubmit="return validation()">
                            <div class="form-row">                                
                                <div class="form-group col-md-4 ">
                                    <label for="inputState">Select User Role :-</label>
                                    <select id="user_type" class="form-control" name="user_type">
                                        <option selected>--select--</option>
                                        <option value="admin">Admin</option>
                                        <option value="teacher">Teacher</option>
                                        <option value="student">Student</option>
                                    </select>
                                    <span class="text-warning" id="role_alt"></span>
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">First Name</label>
                                    <input type="text" class="form-control" id="first" placeholder="Enter first name" name="first_name">
                                    <span class="text-warning" id="first_alt"></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Last Name</label>
                                    <input type="text" class="form-control" id="last" placeholder="Enter last name" name="last_name">
                                    <span class="text-warning" id="last_alt"></span>
                                </div>
                            </div>

                            <div class="form-row mt-5">                                
                                <div class="form-group col-md-6 ">                                 
                                    <label for="inputEmail4">PRN-NO./ User-ID</label>
                                    <input type="text" class="form-control" id="u_name" placeholder="Enter your Prn-no.." name="prn">
                                    <span class="text-warning" id="user_alt"></span>
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Password</label>
                                    <input type="password" class="form-control" id="u_pass" placeholder="Enter password" name="pass1">
                                    <span class="text-warning" id="pass_alt"></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Confirm Password</label>
                                    <input type="password" class="form-control" id="u_cpass" placeholder="Enter confirm Password" name="pass2">
                                    <span class="text-warning" id="cpass_alt"></span>
                                </div>
                            </div>

                            <div class="form-row">                                
                                <div class="form-group col-md-12 ">                                 
                                    <label for="inputEmail4">School / University / College</label>
                                    <input type="text" class="form-control" id="college" placeholder="Enter your school/university/college name" name="school">
                                    <span class="text-warning" id="school_alt"></span>
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Course</label>
                                    <input type="text" class="form-control" id="u_course" placeholder="Enter course name" name="course">
                                    <span class="text-warning" id="course_alt"></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Branch / Department</label>
                                    <input type="text" class="form-control" id="u_branch" placeholder="Enter branch /Department name" name="branch">
                                    <span class="text-warning" id="branch_alt"></span>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label >Select Gender</label>
                                    <select id="u_gender" class="form-control" name="gender">                                      
                                        <option value="male" selected>Male</option>
                                        <option value="female">Female</option>                                        
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4"> DOB</label>
                                    <input type="date" class="form-control"  name="dob" id="u_dobs">
                                    <span class="text-warning" id="birth_alt"></span>
                                </div>
                            </div>

                            <div class="form-row">                                
                                <div class="form-group col-md-6">                                 
                                    <label for="inputEmail4">phone</label>
                                    <input type="number" class="form-control" id="u_phone" placeholder="Enter phone number" name="phone">
                                    <span class="text-warning" id="phone_alt"></span>
                                </div>                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-8">                                 
                                    <label for="exampleInputEmail1">@Email</label>
                                    <input type="email" class="form-control" id="u_mail" aria-describedby="emailHelp" placeholder="Enter email-ID" name="mail">
                                    <span class="text-warning" id="mail_alt"></span>
                                </div>                                                                                
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputCity">Country</label>
                                    <input type="text" class="form-control" id="u_con" placeholder="Enter country name" name="country">
                                    <span class="text-warning" id="con_alt"></span>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputState">State</label>
                                    <select id="u_state" class="form-control" name="s_state">
                                        <option selected>Choose...</option>
                                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                        <option value="Assam">Assam</option>
                                        <option value="Bihar">Bihar</option>
                                        <option value="Chhattisgarh">Chhattisgarh</option>
                                        <option value="Goa">Goa</option>
                                        <option value="Gujarat">Gujarat</option>
                                        <option value="Haryana">Haryana</option>
                                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                                        <option value="Jharkhand">Jharkhand</option>
                                        <option value="Karnataka">Karnataka</option>
                                        <option value="Kerala">Kerala</option>
                                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                                        <option value="Maharashtra">Maharashtra</option>
                                        <option value="Manipur">Manipur</option>
                                        <option value="Meghalaya">Meghalaya</option>
                                        <option value="Mizoram">Mizoram</option>
                                        <option value="Nagaland">Nagaland</option>
                                        <option value="Odisha">Odisha</option>
                                        <option value="Punjab">Punjab</option>
                                        <option value="Rajasthan">Rajasthan</option>
                                        <option value="Sikkim">Sikkim</option>
                                        <option value="Tamil Nadu">Tamil Nadu</option>
                                        <option value="Telangana">Telangana</option>
                                        <option value="Tripura">Tripura</option>
                                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                                        <option value="Uttarakhand">Uttarakhand</option>
                                        <option value="West Bengal">West Bengal</option>                                        
                                    </select>
                                    <span class="text-warning" id="state_alt"></span>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="City">City</label>
                                    <input type="text" class="form-control" id="u_city" placeholder="Enter city name " name="city">
                                    <span class="text-warning" id="city_alt"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputAddress">Address</label>
                                <textarea class="form-control" id="u_add1" rows="3" placeholder="Enter permanent address" name="address1"></textarea>
                                <span class="text-warning" id="add1_alt"></span>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress2">Address 2</label>                               
                                <textarea class="form-control" id="u_add2" rows="3" placeholder="Enter local address" name="address2"></textarea>
                                <span class="text-warning" id="add2_alt"></span>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning"></span>
                        </form>
                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>

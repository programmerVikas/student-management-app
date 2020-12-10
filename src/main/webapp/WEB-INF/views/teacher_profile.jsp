<%-- 
    Document   : teacher_profile
    Created on : 16 Oct, 2020, 11:18:02 AM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Teacher profile Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>      
        <!--google font-->
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Sansita+Swashed:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Arima+Madurai:wght@500&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Trade+Winds&display=swap" rel="stylesheet">

        <!--font awesome-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <style>
            *{
                margin: 0%;
                padding: 0%;
                box-sizing: border-box;

            }
            .sec1{
                width: 100%;
                height: 100vh;
                position: relative;            
            }
            .bg{
                position: absolute;
                width: 100%;
                height: 90vh;
                background: linear-gradient(to right,rgba(100,0,0,0.5),rgba(110,0,0,0.4)), url("https://images.pexels.com/photos/1112048/pexels-photo-1112048.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"); 
                background-size: 100% 100vh;
                background-repeat: no-repeat;
                background-position: top;
            }
            .h1{
                margin-top: 35%;
            }

            li .dropdown-menu a{
                transition: 0.3s ;
            }

            li .dropdown-menu a:hover{
                background-color: #F7DC6F;
            }

            .profileHeader{
                background-image: url("https://www.pngitem.com/pimgs/m/44-440150_clip-art-color-bubbles-background-sphere-hd-png.png");
                background-position: center;
                background-size: auto;
            }

            /*https://lh3.googleusercontent.com/proxy/pwF8FeOFqvkkKd-M-Y9WhkSMqWv_hN24d2JBgr8Yqk0JtplbwnCZpKctrPCkh5_fqySrjME_veFCcTw5c8O59SI1tOpQIPwRBbynu3LSLU-ykfe1ypTY94KcxvOWRgEhcxbfUn-j2QPUbCQ*/

            .profileBody{
                background-image: linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%);            
            }
            .profileCard{
                margin-top: 10px;
                box-shadow: 2px 2px 10px 2px black;
            }
            .profileCard2{               
                box-shadow: 2px 2px 7px 1px black;
                border-radius: 5px;
            }

            .editCard{
                margin-top: 10px;
                box-shadow: 2px 2px 7px 1px black;
                border-radius: 5px;
                margin-bottom: 50px;
                margin-right: 10px;
            }
            .editCard2{
                background-image: linear-gradient(to top, #dfe9f3 0%, white 100%);
            }

        </style>
    </head>
    <body>
        <div class="section sec1">    
            <%@include  file="teacher_navbar.jsp" %>
            <div class="container-fluid">
                <div class="card mt-2 editCard2 mb-5">
                    <div class="row">

                        <!--profile part *************************************************************************************************************--> 
                        <div class=" col-md-4 ">
                            <div class="profileCard card" style="font-family: 'Arima Madurai', cursive;">
                                <div class="profileHeader card-header text-center py-3" style="font-family: 'Trade Winds', cursive;">
                                    <i class="fa fa-user-circle img-fluid text-primary mb-2" aria-hidden="true" style="font-size: 90px;"></i>
                                    <h6>Hello ${name}</h6>
                                </div>
                                <div class="card-body profileBody" style="color: #003399;">

                                    <!--name *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>NAME :</b> </P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.first_name} ${data.last_name}</P>
                                        </div>
                                    </div>

                                    <!--PRN NO *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>PRN NO / ID : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.prn}</P>
                                        </div>
                                    </div>

                                    <!--BRANCH *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>BRANCH  : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.branch}</P>
                                        </div>
                                    </div>

                                    <!--COURSE *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>COURSE  : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.course}</P>
                                        </div>
                                    </div>

                                    <!--DOB (YYYY/MM/DD) *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>DOB : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.dob}</P>
                                        </div>
                                    </div>

                                    <!--EMAIL *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>@EMAIL : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.mail}</P>
                                        </div>
                                    </div>

                                    <!--PHONE *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>PHONE : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.phone}</P>
                                        </div>
                                    </div>

                                    <!--CITY *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>CITY : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.city}</P>
                                        </div>
                                    </div>

                                    <!--STATE *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>STATE : </b></P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.s_state}</P>
                                        </div>
                                    </div>

                                    <!--COUNTRY *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>COUNTRY :</b> </P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.country}</P>
                                        </div>
                                    </div>

                                    <!--ADDRESS *******************************************************************************-->
                                    <div class="form-row text-center">
                                        <div class="col-md-4">
                                            <P><b>ADDRESS :</b> </P>
                                        </div>
                                        <div class="col-md-8 text-center">
                                            <P>${data.address1}</P>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                        <!--Edit profile part  ***********************************************************************************************************-->
                        <div class=" col-md-8 ">
                            <div class="card editCard">
                                <div class="card-header bg-dark">
                                    <h4 class="text-light">Edit Profile</h4>                                    
                                </div>
                                <div class="card-body mt-3">
                                    <form action="/student_management_app/teacherUpdateProfile" method="post">
                                        <input type="hidden" name="id" value="${id}">
                                        <input type="hidden" value="${data.user_type}" name="user_type">                                            

                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="inputEmail4">First Name</label>
                                                <input type="text" class="form-control" id="first" placeholder="Enter first name" name="first_name" value="${data.first_name}">      
                                                <span class="text-warning" id="first_alt"></span>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="inputPassword4">Last Name</label>
                                                <input type="text" class="form-control" id="last" placeholder="Enter last name" name="last_name" value="${data.last_name}">
                                                <span class="text-warning" id="last_alt"></span>
                                            </div>
                                        </div>

                                        <div class="form-row mb-4">                                
                                            <div class="form-group col-md-6 "> 
                                                <label for="inputPassword4">Prn</label>
                                                <input type="text" class="form-control" id="u_name" placeholder="Enter your unique prn" name="prn" value="${data.prn}">
                                                <span class="text-warning" id="user_alt"></span>
                                            </div>                                
                                        </div>

                                        <div class="form-row profileCard2 mb-3 p-3">                                
                                            <div class="form-group col-md-6 "> 
                                                <label for="inputPassword4">Edit/change Password</label>
                                                <input type="text" class="form-control" id="u_pass" placeholder="Enter password" name="pass1" value="${data.pass1}">
                                                <span class="text-warning" id="pass_alt"></span>
                                            </div>                                
                                        </div>


                                        <div class="form-row mt-4">                                
                                            <div class="form-group col-md-12 ">                                 
                                                <label for="inputEmail4">School / University / College</label>
                                                <input type="text" class="form-control" id="college" placeholder="Enter your school/university/college name" name="school" value="${data.school}">
                                                <span class="text-warning" id="school_alt"></span>
                                            </div>                                
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="inputPassword4">Course</label>
                                                <input type="text" class="form-control" id="u_course" placeholder="Enter course name" name="course" value="${data.course}">
                                                <span class="text-warning" id="course_alt"></span>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Branch / Department</label>
                                                <input type="text" class="form-control" id="u_branch" placeholder="Enter branch /Department name" name="branch" value="${data.branch}">
                                                <span class="text-warning" id="branch_alt"></span>
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
                                                <span class="text-warning" id="birth_alt"></span>
                                            </div>
                                        </div>

                                        <div class="form-row">                                
                                            <div class="form-group col-md-6">                                 
                                                <label for="inputEmail4">phone</label>
                                                <input type="number" class="form-control" id="u_phone" placeholder="Enter phone number" name="phone" value="${data.phone}">  
                                                <span class="text-warning" id="phone_alt"></span>
                                            </div>                                
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-md-8">                                 
                                                <label for="exampleInputEmail1">@Email</label>
                                                <input type="email" class="form-control" id="u_mail" aria-describedby="emailHelp" placeholder="Enter email-ID" name="mail" value="${data.mail}">                                    
                                                <span class="text-warning" id="mail_alt"></span>
                                            </div>                                                                                
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-md-4">        
                                                <label for="inputPassword4">Country</label>
                                                <input type="text" class="form-control" id="u_con" placeholder="Enter country name" name="country" value="${data.country}">                                    
                                                <span class="text-warning" id="con_alt"></span>
                                            </div>
                                            <div class="form-group col-md-4">    
                                                <label for="inputPassword4">State</label>
                                                <input type="text" class="form-control" name="s_state" value="${data.s_state}" placeholder="Enter state name ">      
                                                <span class="text-warning" id="state_alt"></span>
                                            </div>
                                            <div class="form-group col-md-4">     
                                                <label for="inputPassword4">City</label>
                                                <input type="text" class="form-control" id="u_city" placeholder="Enter city name " name="city" value="${data.city}">
                                                <span class="text-warning" id="city_alt"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="inputAddress">Address</label>
                                            <textarea class="form-control" id="u_add1" rows="3" placeholder="Enter permanent address" name="address1">${data.address1}</textarea>                               
                                            <span class="text-warning" id="add1_alt"></span>
                                        </div>
                                        <div class="form-group">                                
                                            <input type="hidden" name="address2" value="${data.address2}">                                                          
                                        </div>
                                        <button type="submit" class="btn btn-success btn-lg">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning"></span>


                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>



        </div>
    </body>
</html>

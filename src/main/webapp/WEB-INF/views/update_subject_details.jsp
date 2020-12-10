<%-- 
    Document   : admin_add_subject
    Created on : 3 Oct, 2020, 8:23:46 AM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Subject-update Page</title>
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
                    <h3 class="bg-dark text-light">Subject</h3>
                    <h6 class="text-warning">${msg}</h6>
                </div>
            </div>

            <div class="container mt-5">
                <div class="row-sm">
                    <div class="col-md-6">
                        <div class="">
                            <h3>Edit Subject</h3>
                        </div><hr>

                        <form  action="/student_management_app/subject/updateData" class="mt-5" onclick="return  validation()" method="post">
                            
                            <input type="hidden" value="${id}" name="id">
                            
                            <div class="form-row">
                                <div class="form-group col-md-8 ">
                                    <label for="inputState">Subject</label>
                                    <input type="text" class="form-control"  name="subject" id="sub" placeholder="Enter subject name" value="${data.subject}">
                                    <span class="text-warning" id="sub_alt"></span>
                                </div>   
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-8 ">
                                    <label for="inputState">Subject Title</label>                        
                                    <textarea class="form-control"  name="subject_title" id="subtitle" placeholder="Enter subject title">${data.subject_title}</textarea>
                                    <span class="text-warning" id="subtitle_alt"></span>
                                </div>   
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg mt-3">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning"></span>
                        </form>

                    </div>
                </div>
            </div>

        </div>
            
            <script type="text/javascript">
                
                function validation(){
                    var sub = document.getElementById("sub").value;
                    var subtitle = document.getElementById("subtitle").value;
                    
                    //              subject   ------------------------------------------

                if (sub === "") {
                    document.getElementById('sub_alt').innerHTML = "&#x2718; Please fill subject name";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('sub_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";

                }
                if ((sub.length <= 2) || (sub.length >= 100)) {
                    document.getElementById('sub_alt').innerHTML = "&#x2718; subject length should be between 2 & 100";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('sub_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }
                if (!isNaN(sub)) {
                    document.getElementById('sub_alt').innerHTML = "&#x2718; must be use character";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('sub_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }
                
                
                 //              subject title  ------------------------------------------

                if (subtitle === "") {
                    document.getElementById('subtitle_alt').innerHTML = "&#x2718; Please fill subject name";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('subtitle_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";

                }
                if ((subtitle.length <= 5) || (subtitle.length >= 300)) {
                    document.getElementById('subtitle_alt').innerHTML = "&#x2718; subject title length should be between 5 & 300";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('sub_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }
                if (!isNaN(subtitle)) {
                    document.getElementById('subtitle_alt').innerHTML = "&#x2718; must be use character";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('subtitle_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }

               
                }                
                
            </script>
            
    </body>
</html>

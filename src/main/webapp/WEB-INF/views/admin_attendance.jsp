<%-- 
    Document   : admin_attendance
    Created on : 2 Oct, 2020, 8:08:32 PM
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
        <title>attendance Page</title>
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
            <%@include file="attendance.jsp" %>
        </div>

        <script type="text/javascript">
            
            var today = new Date();

                var date =  today.getDate()+'-'+(today.getMonth() + 1)+'-'+ today.getFullYear();
                document.getElementById("p_dates").value=date;
            
            function  validation() {
                var subject = document.getElementById("u_sub").value;
                var student = document.getElementById("u_std").value;
                var s_title = document.getElementById("title").value;
                var prn = document.getElementById("u_prn").value;              
                var status = document.getElementById("u_status").value;

                if (subject === "--select--") {
                    document.getElementById('role_alt').innerHTML = "&#x2718; Please choose your subject";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('role_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }

                if (student === "--select--") {
                    document.getElementById('roles_alt').innerHTML = "&#x2718; select student";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('roles_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }




//              subject title  ------------------------------------------

                if (s_title === "") {
                    document.getElementById('title_alt').innerHTML = "&#x2718; Please fill your roll no.";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('title_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";

                }


                //                prn --------------------------------------------                

                if (prn === "") {
                    document.getElementById('prn_alt').innerHTML = "&#x2718; Please fill your prn no.";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('prn_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }             

                //                status --------------------------------------------              

                if (status === "--select--") {
                    document.getElementById('status_alt').innerHTML = "&#x2718; Please choose your status";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('status_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }



            }

        </script>

    </body>
</html>

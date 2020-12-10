<%-- 
    Document   : profile_page
    Created on : 12 Oct, 2020, 8:16:27 AM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>admin profile Page</title>
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
            <%@include  file="admin_navbar.jsp" %>
            <%@include  file="profile_page.jsp" %>
        </div>
    </body>
</html>

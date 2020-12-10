<%-- 
    Document   : loginPage
    Created on : 30 Sep, 2020, 11:19:17 AM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"> 
         <!--google font-->
        <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@800&display=swap" rel="stylesheet">
        <style>
            .sec1{
                width: 100%;
                height: 100vh;
              clip-path: polygon(50% 0%, 100% 0, 100% 84%, 0 100%, 0 0);
                background-color: #6666ff;                
            }
            .card{
                background-color: #9999ff;
                box-shadow: 4px 5px 10px 5px black;
            }
        </style>
    </head>
    <body>
        <div class="section sec1">          
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-inverse py-4 ">
                <a class="navbar-brand ml-5" href="#" style="font-size: 22px; font-family: 'Sansita Swashed', cursive;">Student-management-System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mr-5">
                        <li class="nav-item mr-5">
                            <a class="nav-link text-light" href="/student_management_app/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="#">Login</a>
                        </li>                         
                    </ul>                       
                </div>
            </nav>          

            <div class="container mt-5">
                <div class="row-sm">
                    <div class="card col-md-4 offset-md-4 text-light ">
                        <div class=" text-center border-bottom border-primary py-3">                         
                            <h3>Login Here</h3>
                        </div>
                        <p>${msg}</p>
                        <form action="loginPage" class="card-body" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1"><i class="fa fa-envelope" aria-hidden="true"></i> Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="mail">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1"><i class="fa fa-unlock" aria-hidden="true"></i> Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pass">
                            </div>
                           
                            <button type="submit" class="btn btn-primary">Login</button>
                           
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </body>
</html>

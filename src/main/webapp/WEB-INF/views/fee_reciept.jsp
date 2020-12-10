<%-- 
    Document   : fee_reciept
    Created on : 11 Oct, 2020, 9:42:12 AM
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
        <title>fee resciept Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--google font-->
        <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@800&display=swap" rel="stylesheet">
        <!--font awesome-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <style>
            body{
                background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);
            }
        </style>

    </head>
    <body>
        <div class="container-fluid-sm">
            <div class="container">
                <div class="row-sm row-md">
                    <div class=" col-sm-10 offset-sm-1 col-md-6 offset-md-3 col-lg-8 offset-lg-2 mt-5">
                        <div class="card mb-5" style="overflow: hidden">
                            <div class="form-row py-3" style="background-image: linear-gradient(-20deg, #00cdac 0%, #8ddad5 100%);">
                                <div class="col-md-3 text-center">
                                    <img class="img-fluid" src="https://i.pinimg.com/originals/9a/60/7d/9a607d099086850aee3b4ba076781bc1.png" width="100px">
                                </div>
                                <div class="col-md-6 text-center mt-4">
                                    <h3>Fee Reciept</h3>                                   
                                </div>
                                <div class="col-md-3 text-center">
                                    <img class="img-fluid" src="https://static.thenounproject.com/png/8174-200.png" width="100px">
                                </div>
                            </div>

                            <div class="table-responsive" style="background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);">
                                <table class="table mb-0">                                    
                                    <thead>
                                        <tr >
                                            <th class="bg-warning text-light" style="clip-path: polygon(0 0, 90% 0, 99% 49%, 90% 100%, 0 100%, 0% 70%, 0% 30%);"><h6 class="ml-5">Fee-Details</h6></th>
                                            <th  class="text-right"><p> <b>Date :-</b>&nbsp;&nbsp;&nbsp; ${data.fee_date}</p></th>                                           
                                        </tr>
                                    </thead>
                                </table>
                            </div>

                            <div class="container table-responsive mt-5">
                                <table class="table table-bordered">         
                                    <thead style="background-image: linear-gradient(to right, #f78ca0 0%, #f9748f 19%, #fd868c 60%, #fe9a8b 100%);">
                                        <tr class="text-center">
                                            <th>SL.</th>
                                            <th >FEE DESCRIPTION </th>
                                            <th>DETAILS</th>                                       
                                        </tr>
                                    </thead>
                                    <tbody style="background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);">
                                        <tr >
                                            <th class="text-center"> 1 </th>
                                            <th >PRN NO </th>
                                            <td>${data.prn_no}</td>                                       
                                        </tr>

                                        <tr >
                                            <th class="text-center"> 2 </th>
                                            <th >STUDENT NAME </th>
                                            <td>${data.student_name}</td>                                       
                                        </tr>

                                        <tr>
                                            <th  class="text-center"> 3 </th>
                                            <th >SEMESTER </th>
                                            <td>${data.semester}</td>                                       
                                        </tr>

                                        <tr>
                                            <th  class="text-center"> 4 </th>
                                            <th > YEAR </th>
                                            <td>${data.course_year}</td>                                       
                                        </tr>

                                        <tr class="">
                                            <th colspan="3">  </th>                                                                               
                                        </tr>

                                        <tr >
                                            <th class="text-center"> 5 </th>
                                            <th >TOTAL PAID  </th>
                                            <td><i class="fa fa-inr" aria-hidden="true"> ${data.recent_amount}</td>                                       
                                        </tr>

                                        <tr >
                                            <th class="text-center"> 6 </th>
                                            <th >DUE AMOUNT </th>
                                            <td><i class="fa fa-inr" aria-hidden="true"> ${data.due_fee}</td>                                       
                                        </tr>

                                        <tr class="" >
                                            <th class="text-center"> 7 </th>
                                            <th >OTHER AMOUNT </th>
                                            <td><i class="fa fa-inr" aria-hidden="true"> 00.000</td>                                       
                                        </tr>

                                        <tr >
                                            <th class="text-center"> 8 </th>
                                            <th > TOTAL AMOUNT </th>
                                            <td><i class="fa fa-inr" aria-hidden="true"> ${data.total_amount}</td>                                       
                                        </tr>
                                    </tbody>
                                    <tfoot class="card-footer">
                                        <tr>
                                            <th colspan="3"> </th>                                            
                                        </tr>
                                        <tr>
                                            <th class="text-center"> Accontant signature </th>
                                            <th colspan="3">..............................................................................</th>
                                            
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<!--
 <div class="form-row">
                             <div class="col-md-7 col-sm-6  col-lg-7 bg-primary py-2 " style="clip-path: polygon(0 0, 90% 0, 99% 49%, 90% 100%, 0 100%, 0% 70%, 0% 30%);">
                                 <h6 class="ml-5 mt-2 text-light">Fee-Details</h6>
                            </div>
                            <div class="col-md-5 text-right col-lg-5 col-sm-6">
                                <p> <b>Date :-</b>&nbsp;&nbsp;&nbsp; 08/06/2020</p>
                            </div>
                        </div>-->
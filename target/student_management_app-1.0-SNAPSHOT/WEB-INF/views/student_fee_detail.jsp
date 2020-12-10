<%-- 
    Document   : student_fee_detail
    Created on : 16 Oct, 2020, 7:38:44 PM
    Author     : vikasroy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Fee-details Page</title>
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
            <%@include file="student_navbar.jsp" %>
            <div class="container-fluid bg-dark py-3">
                <div class="container">
                    <h3 class=" text-light">Fee List</h3>
                </div>
            </div><p><br></p>

            <div class="container-fluid table-responsive">
                <table class="table table-bordered" id="myTable" >
                    <thead class="bg-danger">
                    <div class="form-row bg-primary p-2 border-0 rounded mr-0 ml-0">                  
                        <div class="form-group col-md-4 mb-0">                                    
                            <input type="text" placeholder="search by  Student name  'OR' Prn 'OR' Date... " class="form-control" id="myInput" onkeyup="myFunction()" >
                        </div><span id="found" class="text-light"></span>                        
                    </div> 
                    <tr>
                        <th scope="col">S.NO.</th>
                        <th scope="col">Prn-No</th>
                        <th scope="col">Student-name</th>
                        <th scope="col">Semester</th>
                        <th scope="col">Year</th>                            
                        <th scope="col"><i class="fa fa-inr" aria-hidden="true"></i> Total Paid</th>                            
                        <th scope="col"><i class="fa fa-inr" aria-hidden="true"></i> Due Amount</th>                            
                        <th scope="col"><i class="fa fa-inr" aria-hidden="true"></i> Total Amount</th>                            
                        <th scope="col">Date (DD-MM-YYYY)</th>                         
                        <th scope="col">Reciept</th> 

                    </tr>
                    </thead>
                    <tbody>

                        <c:forEach var="feedata" items="${feedata}" varStatus="loopCounter">
                            <c:if test="${feedata.prn_no == prn}">
                            <tr class="bg-info text-light">
                                <th scope="row"><c:out value="${loopCounter.count}"/></th>                             
                                <td scope="row">${feedata.prn_no}</td>                             
                                <td>${feedata.student_name}</td>
                                <td>${feedata.semester}</td>
                                <td >${feedata.course_year}</td>                                
                                <td class="bg-danger text-center"><i class="fa fa-inr" aria-hidden="true"></i> ${feedata.recent_amount} . 00</td>                                
                                <td class="bg-warning text-center"><i class="fa fa-inr" aria-hidden="true"></i> ${feedata.due_fee} . 00</td>       
                                <td class="bg-primary text-center"><i class="fa fa-inr" aria-hidden="true"></i> ${feedata.total_amount} . 00</td>       
                                <td >${feedata.fee_date}</td>
                               
                                <td ><a href="getReciept/${feedata.id}"><i class="fa fa-folder text-warning" aria-hidden="true" style="font-size: 20px;" title="reciept"></i></a></td>
                            </tr>
                            </c:if>
                        </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>

       
    </body>
</html>

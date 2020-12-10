<%-- 
    Document   : student_marksheet
    Created on : 17 Oct, 2020, 7:55:15 AM
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
        <title>Student marksheet Page</title>
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
            .tb{
                border: 5px double black;
            }

            .tbdtl{
                border-bottom:  5px solid #6666ff;
            }
            
            .res{
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
            }

        </style>
    </head>
    <body>
        <div class="section  mb-5">  
            <%@include file="student_navbar.jsp" %>

            <div class="container mt-5">
                  <div class="text-center py-3 res bg-info text-light"><h4>RESULT</h4></div>
                <div class=" table-responsive tb">                  
                    <table class="table table-bordered  ">
                        <thead>
                            <tr class="">
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <th class="text-center" scope="col" colspan="2"><span class="text-warning">Name</span> :  &nbsp;&nbsp;&nbsp; ${markData.student_name}</th>
                                        <th class="text-center" scope="col" colspan="2"><span class="text-warning">Prn</span> :  &nbsp;&nbsp;&nbsp; ${markData.prn_no}</th>      
                                        </c:if>
                                    </c:forEach>
                            </tr>
                            <tr class="tbdtl">
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <th class="text-center" scope="col" colspan="2"><span class="text-warning">Semester</span> :  &nbsp;&nbsp;&nbsp; ${markData.semester}</th>
                                        <th class="text-center" scope="col" colspan="2"><span class="text-warning">Course Year</span> :  &nbsp;&nbsp;&nbsp; ${markData.course_year}</th>                           
                                        </c:if>
                                    </c:forEach>
                            </tr>
                            <tr class="text-center">
                                <th scope="col" colspan="4"><br></th>                         
                            </tr>
                            <tr class="text-center bg-warning">
                                <th scope="col" colspan="2">Subject</th>                          
                                <th scope="col" colspan="2">Marks</th>                            
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="text-center">
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <td colspan="2">${markData.first_Subject}</td>
                                        <td colspan="2">${markData.first_Subject_Marks}</td>                            
                                    </c:if>
                                </c:forEach>
                            </tr>                       
                            <tr class="text-center">
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <td colspan="2">${markData.second_Subject}</td>
                                        <td colspan="2">${markData.second_Subject_Marks}</td>                            
                                    </c:if>
                                </c:forEach>
                            </tr>                       
                            <tr class="text-center">
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <td colspan="2">${markData.third_Subject}</td>
                                        <td colspan="2">${markData.third_Subject_Marks}</td>                            
                                    </c:if>
                                </c:forEach>
                            </tr>                       
                            <tr class="text-center">
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <td colspan="2">${markData.fourth_Subject}</td>
                                        <td colspan="2">${markData.fourth_Subject_Marks}</td>                            
                                    </c:if>
                                </c:forEach>
                            </tr>                       
                            <tr class="text-center">
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <td colspan="2">${markData.fifth_Subject}</td>
                                        <td colspan="2">${markData.fifth_Subject_Marks}</td>                            
                                    </c:if>
                                </c:forEach>
                            </tr>     
                            
                             <tr class="text-center">
                                <th scope="col" colspan="4"><br></th>                         
                            </tr>
                            
                            <tr class="text-center" style="background-color: #cc99ff">
                                <td>Result:</td>
                                <c:forEach var="markData" items="${markData}">
                                    <c:if test="${markData.prn_no == prn}">
                                        <td>${markData.result}</td>
                                        <td colspan="2">CGPA:  &nbsp;&nbsp; ${markData.cgpa}</td>                            
                                    </c:if>
                                </c:forEach>
                            </tr>     
                            
                        </tbody>
                    </table>
                </div>
                  <div class="justify-content  mt-3 text-primary border border-primary rounded" style="background-color: #ffccff">
                    <h5 class="text-center">--- DISCLAIMER ---</h5>
                     <small>The results published online are provisional. We are not responsible for any inadvertent error that may have created in the data / results
                    being published on the net. This is being published on the net just for immediate information to the examinees. The final grade sheet issued
                    by the university should only be treated authentic and final in this regard.</small>
                </div>
            </div>
        </div>



    </body>
</html>

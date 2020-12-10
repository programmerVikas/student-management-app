<%-- 
    Document   : admin_add_fee
    Created on : 3 Oct, 2020, 9:33:23 AM
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
        <title>fee Page</title>
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
    
        <div class="section  mb-5">  
            <%@include file="admin_navbar.jsp" %>

            <div class="container-fluid bg-dark py-3">
                <div class="container">
                    <h3 class="bg-dark text-light">Fee</h3>
                    <h6 class="text-warning">${msg}</h6>
                </div>
            </div>

            <div class="container mt-5">
                <div class="row-sm">
                    <div class="col-md-6">
                        <div class="">
                            <h3>Add Fee</h3>
                        </div><hr>

                        <form action="/student_management_app/fee/saveFee" method="post" class="mt-5" onsubmit="return validation()">


                            <!--student name  ----------------------------------------------------->

                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="inputState">Select Student</label>
                                    <select id="fee_std" class="form-control" name="student_name">
                                        <option selected>--select--</option>
                                        <c:forEach var="data" items="${data}">   
                                            <c:if test="${data.user_type == 'student'}">
                                                <option >${data.first_name} ${data.last_name}</option>  
                                            </c:if>
                                        </c:forEach>                                    
                                    </select>
                                    <span class="text-warning" id="std_fee"></span>
                                </div>



                                <!--prn-no ----------------------------------------------------------------->

                                <div class="col-md-6">
                                    <label for="inputState">PRN-no</label>
                                    <input type="text" class="form-control"  name="prn_no" id="prn_id" placeholder="Enter Your ID">
                                    <span class="text-warning" id="fee_id"></span>
                                </div>
                            </div>


                            <!--semester ----------------------------------------------------------------------->

                            <div class="form-row mt-4">
                                <div class="col-md-4">
                                    <label for="inputState">Select semester</label>
                                    <select id="sem_std" class="form-control" name="semester">
                                        <option selected>--select--</option>
                                        <option>1st sem..</option>
                                        <option>2nd sem..</option>        
                                        <option>3rd sem..</option>        
                                        <option>4th sem..</option>        
                                        <option>5th sem..</option>        
                                        <option>6th sem..</option>        
                                        <option>7th sem..</option>        
                                        <option>8th sem..</option>                                                                                 
                                    </select>
                                    <span class="text-warning" id="std_sem"></span>
                                </div>



                                <!--year ------------------------------------------------------------------------------------------------->

                                <div class="col-md-4">
                                    <label for="inputState">Select year</label>
                                    <select id="fee_year" class="form-control" name="course_year">
                                        <option selected>--select--</option>
                                        <option>1st year</option>
                                        <option>2nd year</option>        
                                        <option>3rd year</option>        
                                        <option>4th year</option>                                                                                                                         
                                    </select>
                                    <span class="text-warning" id="year_alt"></span>
                                </div>


                                <!--current date -------------------------------------------------------------->

                                <div class="col-md-4">
                                    <label for="inputState">Date</label>
                                    <input type="text" class="form-control"  name="fee_date" id="fee_date" >
                                    <span class="text-warning" id="fee_alt"></span>
                                </div>
                            </div>


                            <!--Recent amount  --------------------------------------------------------------------->

                            <div class="form-row mt-4">
                                <div class="col-md-6">
                                    <label for="inputState">Amount</label>
                                    <input type="number" class="form-control"  name="recent_amount" id="fee_amt" placeholder="Enter amount">
                                    <span class="text-warning" id="amt_alt"></span>
                                </div>



                                <!--total fee  --------------------------------------------------------------------------------->

                                <div class="col-md-6">
                                    <label for="inputState">Total Amount</label>
                                    <input type="number" class="form-control"  name="total_amount" id="fee_total" placeholder="Enter total amount">
                                    <span class="text-warning" id="total_alt"></span>
                                </div>
                            </div>

                            <!--due fee  --------------------------------------------------------------------------------->
                              
                            
                            <div class="form-row">
                                <div class="col-md-6 d-none">
                                    <label for="inputState">Due</label>
                                    <input type="hidden" class="form-control "  name="due_fee" id="fee_due" value="0">                              
                                </div>
                            </div>
                  



                    <!--button ------------------------------------------------------------------------------------>
                    <div class="form-row ml-3">
                    <button type="submit" class="btn btn-primary btn-lg mt-4">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning mt-4"></span>
                    </div>
                    </form>

                </div>
            </div>
        </div>



    <script type="text/javascript">

        var today = new Date();

        var date = today.getDate() + '-' + (today.getMonth() + 1) + '-' + today.getFullYear();
        document.getElementById("fee_date").value = date;


        function validation() {

            var name = document.getElementById("fee_std").value;
            var prn = document.getElementById("prn_id").value;
            var sem = document.getElementById("sem_std").value;
            var year = document.getElementById("fee_year").value;
            var recentamt = document.getElementById("fee_amt").value;
            var totalFee = document.getElementById("fee_total").value;







            //    student-name *****************************************************************************

            if (name === "--select--") {
                document.getElementById('std_fee').innerHTML = "&#x2718; Please choose student name";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('std_fee').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }


            // prn ********************************************************************************

            if (prn === "") {
                document.getElementById('fee_id').innerHTML = "&#x2718; Please fill your Prn-no..";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('fee_id').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }

            if ((prn.length < 10) || (prn.length > 15)) {
                document.getElementById('fee_id').innerHTML = "&#x2718; Prn length should be between 11 & 15";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('fee_id').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }


            //    semester *****************************************************************************

            if (sem === "--select--") {
                document.getElementById('std_sem').innerHTML = "&#x2718; Please choose semester";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('std_sem').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }

            //    semester *****************************************************************************

            if (year === "--select--") {
                document.getElementById('year_alt').innerHTML = "&#x2718; Please choose year";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('year_alt').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }


            // Recent Amount ********************************************************************************

            if (recentamt === "") {
                document.getElementById('amt_alt').innerHTML = "&#x2718; Please fill your amount..";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('amt_alt').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }

            if ((recentamt.length <= 2)) {
                document.getElementById('amt_alt').innerHTML = "&#x2718; small amount is not applicable";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('amt_alt').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }

            // Total Amount ********************************************************************************

            if (totalFee === "") {
                document.getElementById('total_alt').innerHTML = "&#x2718; Please fill total amount..";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('total_alt').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }

            if ((totalFee.length <= 2)) {
                document.getElementById('total_alt').innerHTML = "&#x2718; small amount is not applicable";
                document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                return false;
            } else {
                document.getElementById('total_alt').innerHTML = "&#x2713; Correct";
                document.getElementById('alt').innerHTML = "";
            }


            var sum = totalFee - recentamt;
            var due = document.getElementById("fee_due").value = sum;

        }

    </script>


</html>

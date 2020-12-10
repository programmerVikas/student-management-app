<%-- 
    Document   : teacher_add_marksheet
    Created on : 14 Oct, 2020, 8:33:16 AM
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
        <title>admin update result Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--google font-->
        <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@800&display=swap" rel="stylesheet">
        <!--font awesome-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> <!--sweet alert-->
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
                    <h3 class="bg-dark text-light">Marksheet</h3>
                    <h6 class="text-warning">${msg}</h6>
                </div>
            </div>


            <div class="container mt-5 mb-5">
                <div class="row-sm">
                    <div class=" col-md-6 ">
                        <div class="">
                            <h3>Add Marksheet</h3>
                        </div><hr>


                        <form action="/student_management_app/marksheet/updateAdminMarkData" method="post" class="mt-5" onsubmit="return validation()">
                            <input type="hidden" name="id" value="${markData.id}">
                            <div class="form-row">                                        
                                <div class="form-group col-md-6 ">
                                    <label for="inputState">Select Student :-</label>
                                    <input type="text" name="student_name" class="form-control" id="std_name" value="${markData.student_name}">                                 
                                    <span class="text-warning" id="std_alt"></span>
                                </div>     

                                <div class="form-group col-md-6">
                                    <label>Prn no.</label>
                                    <input type="text" class="form-control"  name="prn_no" id="prnId" placeholder="Enter prn no." value="${markData.prn_no}">
                                    <span class="text-warning" id="prnalt"></span>
                                </div>

                            </div>

                            <div class="form-row">                  
                                <div class="form-group col-md-6">
                                    <label>Semester</label>
                                    <select id="sem_std" class="form-control" name="semester">
                                        <option selected>${markData.semester}</option>
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
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4"> course year</label>
                                    <select id="fee_year" class="form-control" name="course_year">
                                        <option selected>${markData.course_year}</option>
                                        <option>1st year</option>
                                        <option>2nd year</option>        
                                        <option>3rd year</option>        
                                        <option>4th year</option>                                                                                                                         
                                    </select>
                                    <span class="text-warning" id="year_alt"></span>
                                </div>
                            </div>

                            <!--subject adding   *******************************************************************************************-->  

                            <hr>
                            <h3>Add subject marks</h3>
                            <hr>

                            <div class="form-row ">
                                <div class="form-group col-md-6">                                      
                                    <label for="inputState">Select first subject</label>
                                    <select id="u_sub" class="form-control" name="first_Subject">                                        
                                        <c:forEach var="subject" items="${subject}" begin="0" end="0">                                
                                            <option selected>${subject.subject}</option>                                             
                                        </c:forEach>
                                    </select>             
                                    <span class="text-warning" id="sub_alt"></span>                                      
                                </div>     

                                <div class="form-group col-md-6">
                                    <label>Marks(grade/number/cgp).</label>
                                    <input type="text" class="form-control"  name="first_Subject_Marks" id="marksId" placeholder="Enter marks here...." value="${markData.first_Subject_Marks}">
                                    <span class="text-warning" id="marks"></span>
                                </div>
                            </div>         

                            <div class="form-row ">
                                <div class="form-group col-md-6">                                      
                                    <label for="inputState">Select second subject</label>
                                    <select id="u_sub" class="form-control" name="second_Subject">                                        
                                        <c:forEach var="subject" items="${subject}" begin="1" end="1">                                
                                            <option selected>${subject.subject}</option>                                             
                                        </c:forEach>
                                    </select>             
                                    <span class="text-warning" id="sub_alt"></span>                                      
                                </div>     

                                <div class="form-group col-md-6">
                                    <label>Marks(grade/number/cgp).</label>
                                    <input type="text" class="form-control"  name="second_Subject_Marks" id="marksId" placeholder="Enter marks here...." value="${markData.second_Subject_Marks}">
                                    <span class="text-warning" id="marks"></span>
                                </div>
                            </div>         

                            <div class="form-row ">
                                <div class="form-group col-md-6">                                      
                                    <label for="inputState">Select third subject</label>
                                    <select id="u_sub" class="form-control" name="third_Subject">                                        
                                        <c:forEach var="subject" items="${subject}" begin="2" end="2">                                
                                            <option selected>${subject.subject}</option>                                             
                                        </c:forEach>
                                    </select>             
                                    <span class="text-warning" id="sub_alt"></span>                                      
                                </div>     

                                <div class="form-group col-md-6">
                                    <label>Marks(grade/number/cgp).</label>
                                    <input type="text" class="form-control"  name="third_Subject_Marks" id="marksId" placeholder="Enter marks here...." value="${markData.third_Subject_Marks}">
                                    <span class="text-warning" id="marks"></span>
                                </div>
                            </div>      

                            <div class="form-row ">
                                <div class="form-group col-md-6">                                      
                                    <label for="inputState">Select fourth subject</label>
                                    <select id="u_sub" class="form-control" name="fourth_Subject">                                        
                                        <c:forEach var="subject" items="${subject}" begin="3" end="3">                                
                                            <option selected>${subject.subject}</option>                                             
                                        </c:forEach>
                                    </select>             
                                    <span class="text-warning" id="sub_alt"></span>                                      
                                </div>     

                                <div class="form-group col-md-6">
                                    <label>Marks(grade/number/cgp).</label>
                                    <input type="text" class="form-control"  name="fourth_Subject_Marks" id="marksId" placeholder="Enter marks here...." value="${markData.fourth_Subject_Marks}">
                                    <span class="text-warning" id="marks"></span>
                                </div>
                            </div>      

                            <div class="form-row ">
                                <div class="form-group col-md-6">                                      
                                    <label for="inputState">Select fifth subject</label>
                                    <select id="u_sub" class="form-control" name="fifth_Subject">                                        
                                        <c:forEach var="subject" items="${subject}" begin="4" end="4">                                
                                            <option selected>${subject.subject}</option>                                             
                                        </c:forEach>
                                    </select>             
                                    <span class="text-warning" id="sub_alt"></span>                                      
                                </div>     

                                <div class="form-group col-md-6">
                                    <label>Marks(grade/number/cgp).</label>
                                    <input type="text" class="form-control"  name="fifth_Subject_Marks" id="marksId" placeholder="Enter marks here...." value="${markData.fifth_Subject_Marks}">
                                    <span class="text-warning" id="marks"></span>
                                </div>
                            </div>     

                            <div class="form-row  border border-primary mt-3 bg-info">
                                <div class="form-group col-md-6">                                      
                                    <label for="inputState">Result</label>
                                    <select id="u_sub" class="form-control" name="result">                                            
                                        <option selected>${markData.result}</option>                                                                                     
                                        <option >PASS</option>                                                                                     
                                        <option>FAIL</option>                                                                                     
                                    </select>                                                                           
                                </div>      

                                <div class="form-group col-md-6">                                      
                                    <label for="inputState">CGPA</label>
                                    <input type="text" class="form-control" name="cgpa" placeholder="Enter total cgpa value" value="${markData.cgpa}">                        
                                </div>      
                            </div>   

                            <button type="submit" class="btn btn-primary btn-lg mt-1">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning"></span>
                        </form>



                    </div>
                </div>
            </div>


        </div>

        <script type="text/javascript">
            function validation() {
                var std_name = document.getElementById("std_name").value;
                var prnId = document.getElementById("prnId").value;
                var sem_std = document.getElementById("sem_std").value;
                var fee_year = document.getElementById("fee_year").value;
                var u_sub = document.getElementById("u_sub").value;
                var marksId = document.getElementById("marksId").value;



                //                student name --------------------------------------------                

                if (std_name === "--select--") {
                    swal({
                        text: "Please choose  student name!",
                        icon: "error",
                    });
                    document.getElementById('std_alt').innerHTML = "&#x2718; Please choose  student name";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('std_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }


                //                prn --------------------------------------------                

                if (prnId === "") {
                    swal({
                        text: "Please fill prn no!",
                        icon: "error",
                    });
                    document.getElementById('prnalt').innerHTML = "&#x2718; Please fill prn no.";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('prnalt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }

                if ((prnId.length < 11) || (prnId.length >= 15)) {
                    swal({
                        icon: "error",
                        text: "prn length should be between 11 & 15.!"
                    });
                    document.getElementById('prnalt').innerHTML = "&#x2718; prn length should be between 11 & 15";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('prnalt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }

                //                semester name --------------------------------------------                

                if (sem_std === "--select--") {
                    swal({
                        text: "Please choose  semester!",
                        icon: "error",
                    });
                    document.getElementById('std_sem').innerHTML = "&#x2718; Please choose  semester";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('std_sem').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }


//                year name ******************************************************

                if (fee_year === "--select--") {
                    swal({
                        text: "Please choose  course year!",
                        icon: "error",
                    });
                    document.getElementById('year_alt').innerHTML = "&#x2718; Please choose  course year";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('year_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }


                //                subject name ******************************************************

                if (u_sub === "--select--") {
                    swal({
                        text: "Please choose suject!",
                        icon: "error",
                    });
                    document.getElementById('sub_alt').innerHTML = "&#x2718; Please choose  suject";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('sub_alt').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }


                //                marks******************************************************

                if (marksId === "") {
                    swal({
                        text: "Please fill subject marks!",
                        icon: "error",
                    });
                    document.getElementById('marks').innerHTML = "&#x2718; Please fill subject marks.";
                    document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
                    return false;
                } else {
                    document.getElementById('marks').innerHTML = "&#x2713; Correct";
                    document.getElementById('alt').innerHTML = "";
                }


            }
        </script>

    </body>
</html>

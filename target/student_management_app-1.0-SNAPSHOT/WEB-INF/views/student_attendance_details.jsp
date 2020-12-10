<%-- 
    Document   : student_attendance_details
    Created on : 16 Oct, 2020, 7:03:46 PM
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
        <title>student attendance-details Page</title>
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
        <div class="section sec1">    
            <%@include  file="student_navbar.jsp" %>

            <div class="container-fluid bg-dark py-3">
                <div class="container">
                    <h3 class=" text-light">Attendance List</h3>
                </div>
            </div><p><br></p>

            <div class="container-fluid">
                <table class="table table" id="myTable">
                    <thead class="bg-danger">
                    <div class="form-row bg-primary p-2 border-0 rounded mr-0 ml-0">                  
                        <div class="form-group col-md-4 mb-0">                                    
                            <input type="text" placeholder="search by Subject name  'OR'  Student name  'OR' Prn 'OR' Date... " class="form-control" id="myInput" onkeyup="myFunction()">
                        </div><span id="found" class="text-light"></span>                        
                    </div> 
                    <tr>
                        <th scope="col">S.NO.</th>
                        <th scope="col">Subject</th>
                        <th scope="col">Student-name</th>
                        <th scope="col">Roll</th>
                        <th scope="col">PRN</th>                            
                        <th scope="col">Status</th>                            
                        <th scope="col">Date (DD-MM-YYYY)</th>                         
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="data" items="${data}" varStatus="loopCounter">
                                <c:if test="${data.student_prn == prn}">
                            <tr class="bg-info text-light">
                                <th scope="row"><c:out value="ID: ${loopCounter.count}"/></th>                             
                                <td scope="row">${data.subject}</td>                             
                                <td>${data.student_name}</td>   
                                <td>${data.student_roll}</td>
                                <td >${data.student_prn}</td>
                                <td >${data.student_status}</td>
                                <td>${data.present_date}</td>                                                             
                            </tr>
                                </c:if>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <script>
            function myFunction() {
                // Declare variables
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");

                // Loop through all table rows, and hide those who don't match the search query
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    td1 = tr[i].getElementsByTagName("td")[1];
                    td2 = tr[i].getElementsByTagName("td")[3];
                    td3 = tr[i].getElementsByTagName("td")[5];
                    if (td || td1 || td2 || td3) {
                        txtValue = td.textContent || td.innerText;
                        txtValue1 = td1.textContent || td1.innerText;
                        txtValue2 = td2.textContent || td2.innerText;
                        txtValue3 = td3.textContent || td3.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1 || txtValue1.toUpperCase().indexOf(filter) > -1 || txtValue2.toUpperCase().indexOf(filter) > -1 || txtValue3.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                            document.getElementById("found").innerHTML = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    } else {
                        document.getElementById("found").innerHTML = "Data not found ??";
                    }
                }
            }


        </script>

    </div>
</body>
</html>

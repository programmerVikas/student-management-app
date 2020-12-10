<%-- 
    Document   : admin_student_details
    Created on : 3 Oct, 2020, 11:33:53 AM
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
        <title>admin student details Page</title>
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
                    <h3 class=" text-light">Student List</h3>
                </div>
            </div><p><br></p>

            <div class="container-fluid-sm">                
                <table class="table table" id="myTable">                                      
                    <thead class="bg-danger">
                    <div class="form-row bg-primary p-2 border-0 rounded mr-0 ml-0">                  
                        <div class="form-group col-md-4 mb-0">                                    
                            <input type="text" placeholder="search by student name  'OR'  branch name  'OR'  PRN No. " class="form-control" id="myInput" onkeyup="myFunction()">
                        </div><span id="found" class="text-light"></span>                        
                    </div> 
                    <tr>
                        <th scope="col">S.NO.</th>
                        <th scope="col">Name</th>
                        <th scope="col">Prn-no.</th>
                        <th scope="col">Email id</th>
                        <th scope="col">DOB</th>
                        <th scope="col">Contact no.</th>                            
                        <th scope="col">Course</th>                            
                        <th scope="col">Branch</th>
                        <th scope="col">Address</th>
                        <th scope="col">Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="data" items="${data}" varStatus="loopCounter">

                            <c:if test="${data.user_type == 'student'}">
                                <tr class="bg-info text-light">
                                    <th scope="row"><c:out value="${loopCounter.count}"/></th>
                                    <td>${data.first_name} ${data.last_name}</td>
                                    <td>${data.prn}</td>
                                    <td>${data.mail}</td>
                                    <td>${data.dob}</td>
                                    <td >${data.phone}</td>
                                    <td >${data.course}</td>
                                    <td>${data.branch}</td>
                                    <td>${data.address1}</td>
                                    <td><a href="del/${data.id}"><i class="fa fa-trash text-danger" aria-hidden="true" style="font-size: 25px;" title="Delete"></i></a>&nbsp&nbsp&nbsp&nbsp&nbsp;
                                        <a href="getSingle/${data.id}"><i class="fa fa-pencil text-light" aria-hidden="true" style="font-size: 20px;" title="Edit"></i></a></td>
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
                    td2 = tr[i].getElementsByTagName("td")[6];
                    if (td || td1 || td2) {
                        txtValue = td.textContent || td.innerText;
                        txtValue1 = td1.textContent || td1.innerText;
                        txtValue2 = td2.textContent || td2.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1 || txtValue1.toUpperCase().indexOf(filter) > -1 || txtValue2.toUpperCase().indexOf(filter) > -1) {
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

    </body>
</html>

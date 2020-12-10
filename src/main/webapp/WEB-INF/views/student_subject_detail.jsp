<%-- 
    Document   : student_subject_detail
    Created on : 16 Oct, 2020, 6:26:40 PM
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
        <title>Student_Subject_details Page</title>
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
                    <h3 class=" text-light">Subject List</h3>
                </div>
            </div><p><br></p>

            <div class="container-fluid">                
                <table class="table table" id="myTable">                                      
                    <thead class="bg-danger">
                    <div class="form-row bg-primary p-2 border-0 rounded mr-0 ml-0">                  
                        <div class="form-group col-md-4 mb-0">                                    
                            <input type="text" placeholder="search Subject name " class="form-control" id="myInput" onkeyup="myFunction()">
                        </div><span id="found" class="text-light"></span>                        
                    </div> 
                    <tr>
                        <th scope="col">S.NO.</th>
                        <th scope="col">Subject</th>
                        <th scope="col">Title</th>                        
                     
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="data" items="${data}" varStatus="loopCounter">

                        <tr class="bg-info text-light">
                            <th scope="row"><c:out value="${loopCounter.count}"/></th>
                            <td>${data.subject}</td>
                            <td>${data.subject_title}</td>                                              
                        </tr>                            

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
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
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

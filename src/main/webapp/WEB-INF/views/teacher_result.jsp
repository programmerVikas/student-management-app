<%-- 
    Document   : result
    Created on : 15 Oct, 2020, 8:11:08 AM
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
        <title>teacher-result-details Page</title>
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
            <%@include file="teacher_navbar.jsp" %>
            <div class="container-fluid bg-dark py-3">
                <div class="container">
                    <h3 class=" text-light">Result List</h3>
                </div>
            </div><p><br></p>

            <div class="container-fluid table-responsive">
                <table class="table table" id="myTable">
                    <thead class="bg-danger">
                    <div class="form-row bg-primary p-2 border-0 rounded mr-0 ml-0">                  
                        <div class="form-group col-md-4 mb-0">                                    
                            <input type="text" placeholder="search by Subject name  'OR'  Student name  'OR' Prn 'OR' Date... " class="form-control" id="myInput" onkeyup="myFunction()">
                        </div><span id="found" class="text-light"></span>                        
                    </div> 
                    <tr class="text-center">
                        <th scope="col">S.NO.</th>                        
                        <th scope="col">Student-name</th>                      
                        <th scope="col">PRN</th>      
                        <th scope="col">Semester</th>      
                        <c:forEach var="data" items="${subj}" >
                            <th scope="col">${data.subject}</th>                                       
                            </c:forEach>

                        <th scope="col">Pass / Fail</th> 
                        <th scope="col">CGPA</th> 
                        <th scope="col">Edit</th> 
                    </tr>
                    </thead>
                    <tbody class="text-center">
                        <c:forEach var="data" items="${data}" varStatus="loopCounter">
                        
                            <tr class="bg-info text-light">
                          <th scope="row"><c:out value="${loopCounter.count}"/></th>                             
                                <td scope="row">${data.student_name}</td>                             
                                <td scope="row">${data.prn_no}</td>                                                               
                                <td scope="row">${data.semester}</td>                                                               
                                <td scope="row">${data.first_Subject_Marks}</td>                           
                                <td scope="row">${data.second_Subject_Marks}</td>                           
                                <td scope="row">${data.third_Subject_Marks}</td>                           
                                <td scope="row">${data.fourth_Subject_Marks}</td>                           
                                <td scope="row">${data.fifth_Subject_Marks}</td>                           
                                <td scope="row">${data.result}</td>                           
                                <td scope="row">${data.cgpa}</td>                           

                                <td><a href="/student_management_app/marksheet/deleteMarkValue/${data.id}"><i class="fa fa-trash text-danger" aria-hidden="true" style="font-size: 25px;" title="Delete"></i></a>&nbsp&nbsp&nbsp&nbsp&nbsp;
                                    <a href="/student_management_app/marksheet/getSingleMarkData/${data.id}"><i class="fa fa-pencil text-light" aria-hidden="true" style="font-size: 20px;" title="Edit"></i></a></td>
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
                    td1 = tr[i].getElementsByTagName("td")[1];
                    
                    if (td || td1) {
                        txtValue = td.textContent || td.innerText;
                        txtValue1 = td1.textContent || td1.innerText;
                        
                        if (txtValue.toUpperCase().indexOf(filter) > -1 || txtValue1.toUpperCase().indexOf(filter) > -1) {
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

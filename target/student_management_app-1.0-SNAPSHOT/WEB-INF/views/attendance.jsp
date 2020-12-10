
<div class="container-fluid bg-dark py-3">
    <div class="container">
        <h3 class="bg-dark text-light">Attendance</h3>
        <h6 class="text-warning">${msg}</h6>
    </div>
</div>

<div class="container mt-5 mb-5">
    <div class="row-sm">
        <div class=" col-md-6 ">
            <div class="">
                <h3>Add Attendance</h3>
            </div><hr>
            <form action="/student_management_app/attendance/saveData" method="post" class="mt-5" onsubmit="return validation()">
                <div class="form-row">                                
                    <div class="form-group col-md-6 ">
                        <label for="inputState">Select Subject :-</label>
                        <select id="u_sub" class="form-control" name="subject">
                            <option selected>--select--</option>
                            <c:forEach var="subject" items="${subject}">                                
                                    <option >${subject.subject}</option>                                             
                            </c:forEach>
                        </select>
                        <span class="text-warning" id="role_alt"></span>
                    </div>     
                    <div class="form-group col-md-6 ">
                        <label for="inputState">Select Student :-</label>
                        <select id="u_std" class="form-control" name="student_name">
                            <option selected>--select--</option>
                            <c:forEach var="data" items="${data}">
                                <c:if test="${data.user_type == 'student'}">
                                    <option >${data.first_name} ${data.last_name}</option>                            
                                </c:if>
                            </c:forEach>
                        </select>
                        <span class="text-warning" id="roles_alt"></span>
                    </div>     
                </div>

                <div class="form-row">                  
                    <div class="form-group col-md-6">
                        <label>Roll no.</label>
                        <input type="number" class="form-control"  name="student_roll" id="title" placeholder="Enter roll no.">
                        <span class="text-warning" id="title_alt"></span>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4"> Date</label>
                        <input type="text" class="form-control"  name="present_date" id="p_dates">
                        <span class="text-warning" id="dates_alt"></span>
                    </div>
                </div>
                <div class="form-row ">
                    <div class="form-group col-md-6">
                        <label for="inputState">PRN</label>
                        <input type="text" id="u_prn" class="form-control" name="student_prn" placeholder="Enter your Prn no.">                        
                        <span class="text-warning" id="prn_alt"></span>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Status :-</label>
                        <select id="u_status" class="form-control" name="student_status">
                            <option selected>--select--</option>
                            <option value="present">Present</option>
                            <option value="absent">Absent</option>
                        </select>
                        <span class="text-warning" id="status_alt"></span>
                    </div>
                </div>     
                <button type="submit" class="btn btn-primary btn-lg mt-1">save</button>&nbsp;&nbsp;&nbsp;<span id="alt" class="text-warning"></span>
            </form>
        </div>
    </div>
</div>

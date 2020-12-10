<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-inverse py-4 ">
                <a class="navbar-brand ml-5" href="#" style="font-size: 22px; font-family: 'Sansita Swashed', cursive;">Student-management-System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mr-5 font-weight-bold">
                        <li class="nav-item mr-5">
                            <a class="nav-link" href="/student_management_app/teacherHome"><i class="fa fa-home" aria-hidden="true"></i> HOME</a>
                        </li>
                          
                           <li class="nav-item dropdown mr-5">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bookmark" aria-hidden="true"></i>      ADMINSTRATION
                           </a>
                           <div class="dropdown-menu" aria-labelledby="navbarDropdown">                            
                             <a class="dropdown-item " href="/student_management_app/teacherAttendance">ADD ATTENDANCE</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="/student_management_app/teacherSubject">ADD SUBJECT</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="/student_management_app/teacherMarksheet">ADD MARKSHEET</a>
                           </div>
                         </li>

                          <li class="nav-item dropdown mr-5">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-info-circle" aria-hidden="true"></i> 
                             DETAILS
                           </a>
                           <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <a class="dropdown-item" href="/student_management_app/attendance/teacherAttendance_dtl">ATTENDANCE DETAIL</a>
                              <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="/student_management_app/teacherSeeStudentDetails">STUDENT DETAIL</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="/student_management_app/subject/getAllTeacherSubjectValue">SUBJECT DETAIL</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="/student_management_app/marksheet/getAllMarkValue">RESULT DETAIL</a>                             
                           </div>
                         </li>  
                         
                         <% HttpSession hs = request.getSession();
                    String name = (String)hs.getAttribute("name"); %>

                          <li class="nav-item dropdown mr-5">
                          <a  style="text-transform: uppercase;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> 
                             <big> <%= name %></big>
                           </a>
                           <div class="dropdown-menu " aria-labelledby="navbarDropdown">
                             <a class="dropdown-item" href="/student_management_app/teacherProfile">MY PROFILE</a>                                                      
                           </div>
                         </li>  
                    
                         <li class="nav-item">
                            <a class="nav-link btn btn-warning" href="/student_management_app/logOut"><i class="fa fa-sign-out" aria-hidden="true"></i> LOGOUT</a>
                        </li>                    
                    </ul>                       
                </div>
            </nav>    
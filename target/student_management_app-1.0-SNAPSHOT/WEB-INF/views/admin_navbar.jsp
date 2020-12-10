<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-inverse py-4 ">
    <a class="navbar-brand ml-5" href="#" style="font-size: 22px; font-family: 'Sansita Swashed', cursive;">Student-management-System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto mr-5 font-weight-bold">
            <li class="nav-item mr-5">
                <a class="nav-link" href="/student_management_app/home"><i class="fa fa-home" aria-hidden="true"></i> HOME</a>
            </li>

            <li class="nav-item dropdown mr-5">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bookmark" aria-hidden="true"></i>      ADMINSTRATION
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/student_management_app/signPage">ADD USER</a> 
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/student_management_app/attendance">ADD ATTENDANCE</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/student_management_app/subject">ADD SUBJECT</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/student_management_app/fee">ADD FEE</a>
                </div>
            </li>

            <li class="nav-item dropdown mr-5">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-info-circle" aria-hidden="true"></i> 
                    DETAILS
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/student_management_app/std_details">STUDENT DETAIL</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/student_management_app/attendance/attendance_dtl">ATTENDANCE DETAIL</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/student_management_app/subject/getAllValue">SUBJECT DETAIL</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/student_management_app/marksheet/getAdminAllMarkValue">RESULT DETAIL</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/student_management_app/fee/getAllValue">FEE DETAIL</a>
                </div>
            </li>  
            
            <% HttpSession hs = request.getSession();
                    String name = (String)hs.getAttribute("name"); %>

            <li class="nav-item dropdown mr-5">
                <a style="text-transform: uppercase;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> 
                    <big> <%= name %></big>
                </a>
                <div class="dropdown-menu " aria-labelledby="navbarDropdown">                    
                    <a class="dropdown-item" href="/student_management_app/profile">MY PROFILE</a>                                      
                </div>
            </li>  

            <li class="nav-item">
                <a class="nav-link btn btn-warning" href="/student_management_app/logOut"><i class="fa fa-sign-out" aria-hidden="true"></i> LOGOUT</a>
            </li>                    
        </ul>                       
    </div>
</nav>  
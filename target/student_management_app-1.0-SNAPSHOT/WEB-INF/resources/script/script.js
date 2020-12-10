function validation() {

    var user_type = document.getElementById('user_type').value;
    var first = document.getElementById('first').value;
    var last = document.getElementById('last').value;
    var u_name = document.getElementById('u_name').value;
    var u_pass = document.getElementById('u_pass').value;
    var u_cpass = document.getElementById('u_cpass').value;
    var college = document.getElementById('college').value;
    var u_course = document.getElementById('u_course').value;
    var u_branch = document.getElementById('u_branch').value;

    var u_dobs = document.getElementById('u_dobs').value;
    var u_phone = document.getElementById('u_phone').value;
    var u_mail = document.getElementById('u_mail').value;
    var u_con = document.getElementById('u_con').value;
    var u_state = document.getElementById('u_state').value;
    var u_city = document.getElementById('u_city').value;
    var u_add1 = document.getElementById('u_add1').value;
    var u_add2 = document.getElementById('u_add2').value;

//    User-type *****************************************************************************

    if (user_type === "--select--") {
        document.getElementById('role_alt').innerHTML = "&#x2718; Please choose your role";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('role_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }


//    first-name *****************************************************************************

    if (first === "") {
        document.getElementById('first_alt').innerHTML = "&#x2718; Please fill your first name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('first_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";

    }
    if ((first.length <= 2) || (first.length >= 20)) {
        document.getElementById('first_alt').innerHTML = "&#x2718; first name length should be between 2 & 20";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('first_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(first)) {
        document.getElementById('first_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('first_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }




//    last-name *****************************************************************************

    if (last === "") {
        document.getElementById('last_alt').innerHTML = "&#x2718; Please fill your last name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('last_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if ((last.length <= 2) || (last.length >= 20)) {
        document.getElementById('last_alt').innerHTML = "&#x2718; last name length should be between 2 & 20";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('last_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(last)) {
        document.getElementById('last_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('last_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    Prn *****************************************************************************
    if (user_type === "student") {
        if (u_name === "") {
            document.getElementById('user_alt').innerHTML = "&#x2718; Please fill your Prn-no..";
            document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
            return false;
        } else {
            document.getElementById('user_alt').innerHTML = "&#x2713; Correct";
            document.getElementById('alt').innerHTML = "";
        }

        if ((u_name.length < 10) || (u_name.length > 15)) {
            document.getElementById('user_alt').innerHTML = "&#x2718; Prn length should be between 11 & 15";
            document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
            return false;
        } else {
            document.getElementById('user_alt').innerHTML = "&#x2713; Correct";
            document.getElementById('alt').innerHTML = "";
        }
    } else {
        if (u_name === "") {
            document.getElementById('user_alt').innerHTML = "&#x2718; Please fill your Id-no..";
            document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
            return false;
        } else {
            document.getElementById('user_alt').innerHTML = "&#x2713; Correct";
            document.getElementById('alt').innerHTML = "";
        }

        if ((u_name.length < 1) || (u_name.length > 15)) {
            document.getElementById('user_alt').innerHTML = "&#x2718; Prn length should be between 1 & 15";
            document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
            return false;
        } else {
            document.getElementById('user_alt').innerHTML = "&#x2713; Correct";
            document.getElementById('alt').innerHTML = "";
        }
    }


    //    password *****************************************************************************

    if (u_pass === "") {
        document.getElementById('pass_alt').innerHTML = "&#x2718; Please fill your password";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('pass_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if (u_pass.length <= 7) {
        document.getElementById('pass_alt').innerHTML = "&#x2718; password length should be 8 ,and must be strong ";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('pass_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }


    //  Confirm  password *****************************************************************************

    if (u_cpass !== u_pass) {
        document.getElementById('cpass_alt').innerHTML = "&#x2718;  password is not matched";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('cpass_alt').innerHTML = "&#x2713; password matched";
        document.getElementById('alt').innerHTML = "";
    }

    //    college *****************************************************************************

    if (college === "") {
        document.getElementById('school_alt').innerHTML = "&#x2718; Please fill your college name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('school_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if (college.length <= 5) {
        document.getElementById('school_alt').innerHTML = "&#x2718; College length should greater than 5";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('school_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(college)) {
        document.getElementById('school_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('school_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    Course name *****************************************************************************

    if (u_course === "") {
        document.getElementById('course_alt').innerHTML = "&#x2718; Please fill your course name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('course_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if (u_course.length <= 2) {
        document.getElementById('course_alt').innerHTML = "&#x2718; course length should greater than 2";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('course_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(u_course)) {
        document.getElementById('course_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('course_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    Branch name *****************************************************************************

    if (u_branch === "") {
        document.getElementById('branch_alt').innerHTML = "&#x2718; Please fill your branch name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('branch_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if ((u_branch.length <= 2) || (u_branch.length >= 30)) {
        document.getElementById('branch_alt').innerHTML = "&#x2718; Branch length should be between 2 & 30";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('branch_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(u_branch)) {
        document.getElementById('branch_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('branch_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    DOB *****************************************************************************

    if (u_dobs === "") {
        document.getElementById('birth_alt').innerHTML = "&#x2718; Please fill your birth date";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('birth_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    Phone  *****************************************************************************

    if (u_phone === "") {
        document.getElementById('phone_alt').innerHTML = "&#x2718; Please fill your phone number";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('phone_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if ((u_phone.length < 10) || (u_phone.length > 10)) {
        document.getElementById('phone_alt').innerHTML = "&#x2718; length should be 10";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('phone_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }


    //    Email  *****************************************************************************

    if (u_mail === "") {
        document.getElementById('mail_alt').innerHTML = "&#x2718; Please fill your mail Id";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('mail_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    country  *****************************************************************************

    if (u_con === "") {
        document.getElementById('con_alt').innerHTML = "&#x2718; Please fill your  country name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('con_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if ((u_con.length <= 2) || (u_con.length >= 30)) {
        document.getElementById('con_alt').innerHTML = "&#x2718; country length should be between 2 & 30";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('con_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(u_con)) {
        document.getElementById('con_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('con_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    state  *****************************************************************************

    if (u_state === "Choose...") {
        document.getElementById('state_alt').innerHTML = "&#x2718; Please choose your  state name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('state_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    city  *****************************************************************************

    if (u_city === "") {
        document.getElementById('city_alt').innerHTML = "&#x2718; Please fill your  city name";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('city_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if ((u_city.length <= 2) || (u_con.length >= 20)) {
        document.getElementById('city_alt').innerHTML = "&#x2718; city length should be between 2 & 20";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('city_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(u_city)) {
        document.getElementById('city_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('city_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    Address  *****************************************************************************

    if (u_add1 === "") {
        document.getElementById('add1_alt').innerHTML = "&#x2718; Please fill your  permanent address";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('add1_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if ((u_add1.length <= 5) || (u_add1.length >= 30)) {
        document.getElementById('add1_alt').innerHTML = "&#x2718; Address length should be between 5 & 30";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('add1_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(u_add1)) {
        document.getElementById('add1_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('add1_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    //    Address2  *****************************************************************************

    if (u_add2 === "") {
        document.getElementById('add2_alt').innerHTML = "&#x2718; Please fill your  local address";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('add2_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

    if ((u_add2.length <= 5) || (u_add2.length >= 30)) {
        document.getElementById('add2_alt').innerHTML = "&#x2718; Address length should be between 5 & 30";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('add2_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }
    if (!isNaN(u_add2)) {
        document.getElementById('add2_alt').innerHTML = "&#x2718; must be use character";
        document.getElementById('alt').innerHTML = "&#x26A0; Something went wrong";
        return false;
    } else {
        document.getElementById('add2_alt').innerHTML = "&#x2713; Correct";
        document.getElementById('alt').innerHTML = "";
    }

}

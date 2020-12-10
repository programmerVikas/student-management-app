package com.spring.controller;

import com.spring.entity.Marksheet;
import com.spring.entity.SignUp;
import com.spring.entity.SubjectEntity;
import com.spring.services.FeeServices;
import com.spring.services.MarksheetServices;
//import com.spring.entity.UpdateSignUp;
import com.spring.services.SignUpServices;
import com.spring.services.SubjectServices;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @Autowired
    private SignUpServices signUpServices;
    @Autowired
    private SubjectServices subjectServices;
    @Autowired
    private FeeServices feeServices;
    @Autowired
    private MarksheetServices marksheetServices;

//    index page ***************************************************************************************
    @RequestMapping("/")
    public String index() {
        return "index";
    }

//    admin profile starting   ******************************************************************
    // profile page *************************************************************************************
    @RequestMapping("/profile")
    public String profile(HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession session = request.getSession();
        String name = (String) session.getAttribute("name");
        Integer id = (Integer) session.getAttribute("id");
        SignUp data = this.signUpServices.getSingleData(id);
        model.addAttribute("data", data);
        model.addAttribute("name", name);
        model.addAttribute("id", id);
        model.addAttribute("data", data);
        return "admin_profile";
    }

    //    updating profile page data ***************************************************************************************
    @RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
    public String updateProfile(@ModelAttribute SignUp signUp, Model model) {
        model.addAttribute("msg", "profile updated...");
        this.signUpServices.updateData(signUp);
        return "redirect:/profile";
    }

    //    admin profile Ending   ******************************************************************
//    login page **************************************************************************************
    @RequestMapping("/logPage")
    public String log() {
        return "loginPage";
    }

//    login page processing **************************************************************************************
    @RequestMapping("/loginPage")
    public String logProcessing(HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession session = request.getSession();
        List<SignUp> data = this.signUpServices.getAllData();
        String mail = request.getParameter("mail");
        String pass = request.getParameter("pass");
        session.setAttribute("mail", mail);
        String view = null;

        for (SignUp signUp : data) {
            if ((mail.equals(signUp.getMail())) && (pass.equals(signUp.getPass1())) && (signUp.getUser_type().equals("admin"))) {
                session.setAttribute("id", signUp.getId());
                session.setAttribute("name", signUp.getFirst_name());
                view = "redirect:/home";
                break;
            } else if ((mail.equals(signUp.getMail())) && (pass.equals(signUp.getPass1())) && (signUp.getUser_type().equals("teacher"))) {
                session.setAttribute("id", signUp.getId());
                session.setAttribute("name", signUp.getFirst_name());
                view = "redirect:/teacherHome";
                break;
            } else if ((mail.equals(signUp.getMail())) && (pass.equals(signUp.getPass1())) && (signUp.getUser_type().equals("student"))) {
                session.setAttribute("id", signUp.getId());
                session.setAttribute("name", signUp.getFirst_name());
                session.setAttribute("prn", signUp.getPrn());
                view = "redirect:/studentHome";
                break;
            } else {
                view = "loginPage";
                model.addAttribute("msg", "your mail and Password is INCORRECT");
            }
        }

        return view;
    }

//    sign page **************************************************************************************
    @RequestMapping("/signPage")
    public String sign(HttpServletRequest request) {
        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "signUpPage";
        }
    }

//    admin home **********************************************************************************
    @RequestMapping("/home")
    public String admin_home(HttpServletRequest request) {
        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "admin_home";
        }
    }

//    Teacher home *******************************************************************************
    @RequestMapping("/teacherHome")
    public String teacher_home(HttpServletRequest request) {
        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "teacher_home";
        }
    }

//    admin attendence page *********************************************************************************
    @RequestMapping("/attendance")
    public String attendance(SignUp signUp, Model model,HttpServletRequest request) {
        List<SignUp> data = this.signUpServices.getAllData();
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("data", data);
        model.addAttribute("subject", subjectEntitys);
        
         HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "admin_attendance";
        }
    }

//    add subject  ***********************************************************************************    
    @RequestMapping("/subject")
    public String subject(HttpServletRequest request) {
        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "admin_add_subject";
        }
    }

//    admin add fee *****************************************************************************
    @RequestMapping("/fee")
    public String addFee(Model model,HttpServletRequest request) {
        List<SignUp> data = this.signUpServices.getAllData();
        model.addAttribute("data", data);
        
         HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "admin_add_fee";
        }
    }

//    sign up save data *******************************************************************************
    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveData(@ModelAttribute SignUp signUp, Model model) {

        String page = null;
        try {
            model.addAttribute("msg", "user saved successfully...");
            this.signUpServices.saveData(signUp);
            page = "signUpPage";
        } catch (Exception e) {
            model.addAttribute("msg", "'SORRY' this Prn is already Used...");
            page = "signUpPage";
        }
        return page;
    }

//    student details  ***********************************************************************************
    @RequestMapping(value = "/std_details")
    public String getAllSignUpData(SignUp signUp, Model model,HttpServletRequest request) {
        List<SignUp> data = this.signUpServices.getAllData();
        model.addAttribute("data", data);
        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "admin_student_details";
        }
    }

//    delete sign up data ******************************************************************************
    @RequestMapping("/del/{uId}")
    public String deleteSignUpDetails(@PathVariable("uId") int id) {
        this.signUpServices.delete(id);
        return "redirect:/std_details";
    }

//    got to update sign up details page ******************************************************************************
    @RequestMapping("/getSingle/{uId}")
    public String getSingleData(@PathVariable("uId") int id, Model model) {
        model.addAttribute("id", id);
        SignUp data = this.signUpServices.getSingleData(id);
        model.addAttribute("data", data);
        return "updateSignUpDetails";
    }

//    updating sign up data ***************************************************************************************
    @RequestMapping(value = "/updateData", method = RequestMethod.POST)
    public String updateData(@ModelAttribute SignUp signUp) {
        this.signUpServices.updateData(signUp);
        return "redirect:/std_details";
    }

//    Teacher Controller is started --------------------------------------------------------------------------------------------
    //    teacher see student details page *********************************************************************************
    @RequestMapping("/teacherSeeStudentDetails")
    public String teacherSeeStudentDetails(SignUp signUp, Model model,HttpServletRequest request) {
        List<SignUp> data = this.signUpServices.getAllData();
        model.addAttribute("data", data);
        
        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "teacher_student_details";
        }
    }

    //    admin attendence page *********************************************************************************
    @RequestMapping("/teacherAttendance")
    public String teacherAttendance(SignUp signUp, Model model) {
        List<SignUp> data = this.signUpServices.getAllData();
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("data", data);
        model.addAttribute("subject", subjectEntitys);
        return "teacher_add_attendance";
    }

    //    teacher subject page *********************************************************************************
    @RequestMapping("/teacherSubject")
    public String teacherSubject(HttpServletRequest request) {
         HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "teacher_add_subject";
        }
    }

//    teacher add marksheet   ********************************************************************************
    @RequestMapping("/teacherMarksheet")
    public String teacherMarksheet(Model model,HttpServletRequest request) {
        List<SignUp> data = this.signUpServices.getAllData();
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("subject", subjectEntitys);
        model.addAttribute("data", data);
        
         HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "teacher_add_marksheet";
        }
    }

    //    teacher profile starting   ******************************************************************
    // profile page *************************************************************************************
    @RequestMapping("/teacherProfile")
    public String teacherProfile(HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession session = request.getSession();
        String name = (String) session.getAttribute("name");
        Integer id = (Integer) session.getAttribute("id");
        SignUp data = this.signUpServices.getSingleData(id);
        model.addAttribute("data", data);
        model.addAttribute("name", name);
        model.addAttribute("id", id);
        model.addAttribute("data", data);
        return "teacher_profile";
    }

    //    updating profile page data ***************************************************************************************
    @RequestMapping(value = "/teacherUpdateProfile", method = RequestMethod.POST)
    public String teacherUpdateProfile(@ModelAttribute SignUp signUp, Model model) {
        model.addAttribute("msg", "profile updated...");
        this.signUpServices.updateData(signUp);
        return "redirect:/teacherProfile";
    }

    //    teacher profile Ending   ******************************************************************
//    student Controller is starting************************************************************************************************
    //    student home***********************************************************************************    
    @RequestMapping("/studentHome")
    public String studentHome(HttpServletRequest request) {
         HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "student_home";
        }
    }

    //    teacher profile starting   ******************************************************************
    // profile page *************************************************************************************
    @RequestMapping("/studentProfile")
    public String studentProfile(HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession session = request.getSession();
        String name = (String) session.getAttribute("name");
        Integer id = (Integer) session.getAttribute("id");
        SignUp data = this.signUpServices.getSingleData(id);
        model.addAttribute("data", data);
        model.addAttribute("name", name);
        model.addAttribute("id", id);
        model.addAttribute("data", data);
        return "student_profile";
    }

    //    updating profile page data ***************************************************************************************
    @RequestMapping(value = "/studentUpdateProfile", method = RequestMethod.POST)
    public String studentUpdateProfile(@ModelAttribute SignUp signUp, Model model) {
        model.addAttribute("msg", "profile updated...");
        this.signUpServices.updateData(signUp);
        return "redirect:/studentProfile";
    }

//    student marksheet************************************************************************************
    @RequestMapping("/studentMarksheet")
    public String studentMarksheet(Model model, HttpServletRequest request, HttpServletResponse response) {
        List<Marksheet> markData = this.marksheetServices.getAllMarkValue();
        model.addAttribute("markData", markData);
        HttpSession hs = request.getSession();
        String prn = (String) hs.getAttribute("prn");
        model.addAttribute("prn", prn);        
        
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
        return "student_marksheet";
        }
    }

}

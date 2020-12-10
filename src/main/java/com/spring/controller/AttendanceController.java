/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.entity.Attendance;
import com.spring.entity.SignUp;
import com.spring.entity.SubjectEntity;
import com.spring.services.AttendanceServices;
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
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    private AttendanceServices attendanceServices;
    @Autowired
    private SignUpServices signUpServices;
    @Autowired
    private SubjectServices subjectServices;

    HttpServletRequest request;

    @RequestMapping(value = "/saveData", method = RequestMethod.POST)
    public String saveUser(@ModelAttribute Attendance attendance, Model model) {

        List<SignUp> data = this.signUpServices.getAllData();
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("subject", subjectEntitys);
        model.addAttribute("data", data);

        for (SignUp signUp : data) {
            if ((attendance.getStudent_name().equals(signUp.getFirst_name().concat(" " + signUp.getLast_name()))) && (attendance.getStudent_prn().equals(signUp.getPrn()))) {
                this.attendanceServices.saveData(attendance);
                model.addAttribute("msg", "Attendance added successfully...");
                break;
            } else {
                model.addAttribute("msg", "'SORRY' your name and prn not matched....");
            }
        }
        return "admin_attendance";
    }

    @RequestMapping("/attendance_dtl")
    public String getAttendanceDetails(Model model, HttpServletRequest request) {
        List<Attendance> data = this.attendanceServices.getAllData();
        model.addAttribute("data", data);

        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "admin_attendance_details";
        }
    }
    
    
    @RequestMapping(value = "/saveTeacherUser", method = RequestMethod.POST)
    public String saveTeacherUser(@ModelAttribute Attendance attendance, Model model) {

        List<SignUp> data = this.signUpServices.getAllData();
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("subject", subjectEntitys);
        model.addAttribute("data", data);

        for (SignUp signUp : data) {
            if ((attendance.getStudent_name().equals(signUp.getFirst_name().concat(" " + signUp.getLast_name()))) && (attendance.getStudent_prn().equals(signUp.getPrn()))) {
                this.attendanceServices.saveData(attendance);
                model.addAttribute("msg", "Attendance added successfully...");
                break;
            } else {
                model.addAttribute("msg", "'SORRY' your name and prn not matched....");
            }
        }
        return "teacher_add_attendance";
    }

//    teacher attendance details   -------------------------------------------------------------------------------------
    @RequestMapping("/teacherAttendance_dtl")
    public String getTeacherAttendanceDetails(Model model, HttpServletRequest request) {
        List<Attendance> data = this.attendanceServices.getAllData();
        model.addAttribute("data", data);

        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "teacher_attendance_details";
        }
    }

    @RequestMapping("/deleteData/{uId}")
    public String deleteData(@PathVariable("uId") int id) {
        this.attendanceServices.deleteData(id);
        return "redirect:/attendance/attendance_dtl";

    }

    //    teacher delete attendance details   -------------------------------------------------------------------------------------
    @RequestMapping("/teacherDeleteData/{uId}")
    public String teacherDeleteData(@PathVariable("uId") int id) {
        this.attendanceServices.deleteData(id);
        return "redirect:/attendance/teacherAttendance_dtl";

    }

    @RequestMapping("/getSingle/{uId}")
    public String getSingleData(@PathVariable("uId") int id, Model model) {
        Attendance data = this.attendanceServices.getSingleData(id);
        List<SignUp> preData = this.signUpServices.getAllData();
        model.addAttribute("id", id);
        model.addAttribute("singleData", data);
        model.addAttribute("preData", preData);
        return "update_Attendance_Details";

    }

//    teacher get single data -----------------------------------------------------------------------------------------
    @RequestMapping("/getTeacherSingle/{uId}")
    public String getTeacherSingleData(@PathVariable("uId") int id, Model model) {
        Attendance data = this.attendanceServices.getSingleData(id);
        List<SignUp> preData = this.signUpServices.getAllData();
        model.addAttribute("id", id);
        model.addAttribute("singleData", data);
        model.addAttribute("preData", preData);
        return "teacher_update_attendance_details";

    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String getUpdateData(@ModelAttribute Attendance attendance) {
        this.attendanceServices.updateData(attendance);
        return "redirect:/attendance/attendance_dtl";
    }

    //    teacher get single data -----------------------------------------------------------------------------------------
    @RequestMapping(value = "/teacherUpdate", method = RequestMethod.POST)
    public String getTeacherUpdateData(@ModelAttribute Attendance attendance) {
        this.attendanceServices.updateData(attendance);
        return "redirect:/attendance/teacherAttendance_dtl";
    }

//    student Attendance controller****************************************************************************
    //    student attendance details   -------------------------------------------------------------------------------------
    @RequestMapping("/getStudentAttendanceDetails")
    public String getStudentAttendanceDetails(Model model, HttpServletRequest request, HttpServletResponse response) {
        HttpSession hs = request.getSession();
        String prn = (String) hs.getAttribute("prn");
        model.addAttribute("prn", prn);
        List<Attendance> data = this.attendanceServices.getAllData();
        model.addAttribute("data", data);

        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "student_attendance_details";
        }
    }

}

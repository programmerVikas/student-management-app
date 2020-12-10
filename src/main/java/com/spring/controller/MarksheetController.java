/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.entity.Marksheet;
import com.spring.entity.SignUp;
import com.spring.entity.SubjectEntity;
import com.spring.services.MarksheetServices;
import com.spring.services.SignUpServices;
import com.spring.services.SubjectServices;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/marksheet")
public class MarksheetController {

    @Autowired
    private MarksheetServices marksheetServices;

    @Autowired
    private SubjectServices subjectServices;
    @Autowired
    private SignUpServices signUpServices;

    @RequestMapping(value = "/saveMark", method = RequestMethod.POST)
    public String saveMarkData(@ModelAttribute Marksheet marksheet, Model model) {

        List<SignUp> data = this.signUpServices.getAllData();
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("subject", subjectEntitys);
        model.addAttribute("data", data);

        for (SignUp signUp : data) {
            if ((marksheet.getStudent_name().equals(signUp.getFirst_name().concat(" " + signUp.getLast_name()))) && (marksheet.getPrn_no().equals(signUp.getPrn()))) {
                try {
                    this.marksheetServices.saveMarkData(marksheet);
                    model.addAttribute("msg", "marks added successfully....");
                } catch (Exception e) {
                    model.addAttribute("msg", "'SORRY' this Prn is already Used...");
                }
                break;
            } else {
                model.addAttribute("msg", "'SORRY' your name and prn not matched....");
            }
        }

        return "teacher_add_marksheet";

    }

    @RequestMapping("/getAllMarkValue")
    public String getAllMarkValue(Model model, HttpServletRequest request) {
        List<Marksheet> data = this.marksheetServices.getAllMarkValue();
        model.addAttribute("data", data);
        List<SubjectEntity> sub = this.subjectServices.getAllSubject();
        model.addAttribute("subj", sub);

        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "teacher_result";
        }
    }

    @RequestMapping("/deleteMarkValue/{uId}")
    public String deleteMarkValue(@PathVariable("uId") int id, HttpServletRequest request) {
        this.marksheetServices.deleteMarkData(id);
        return "redirect:/marksheet/getAllMarkValue";

    }

    //    got to update result details page ******************************************************************************
    @RequestMapping("/getSingleMarkData/{uId}")
    public String getSingleMarkData(@PathVariable("uId") int id, Model model, HttpServletRequest request) {
        model.addAttribute("id", id);
        Marksheet marksheet = this.marksheetServices.getSingleMarkData(id);
        model.addAttribute("markData", marksheet);
//        -----------------------------------------------------------------------
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("subject", subjectEntitys);
        return "teacher_update_result";

    }

//    updating result data ***************************************************************************************
    @RequestMapping(value = "/updateMarkData", method = RequestMethod.POST)
    public String updateMarkData(@ModelAttribute Marksheet marksheet) {
        this.marksheetServices.updateMarkData(marksheet);
        return "redirect:/marksheet/getAllMarkValue";
    }

//    admin result *******************************************************************************************************
//   admin get Result *************************************************************************************
    @RequestMapping("/getAdminAllMarkValue")
    public String getAdminAllMarkValue(Model model, HttpServletRequest request) {
        List<Marksheet> data = this.marksheetServices.getAllMarkValue();
        model.addAttribute("data", data);
        List<SubjectEntity> sub = this.subjectServices.getAllSubject();
        model.addAttribute("subj", sub);

        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "admin_result";
        }
    }

    //   admin delete Result *************************************************************************************
    @RequestMapping("/deleteAdminMarkValue/{uId}")
    public String deleteAdminMarkValue(@PathVariable("uId") int id, HttpServletRequest request) {
        this.marksheetServices.deleteMarkData(id);
        return "redirect:/marksheet/getAdminAllMarkValue";

    }

    //  admin  got to update result details page ******************************************************************************
    @RequestMapping("/getAdminSingleMarkData/{uId}")
    public String getAdminSingleMarkData(@PathVariable("uId") int id, Model model, HttpServletRequest request) {
        model.addAttribute("id", id);
        Marksheet marksheet = this.marksheetServices.getSingleMarkData(id);
        model.addAttribute("markData", marksheet);
//        -----------------------------------------------------------------------
        List<SubjectEntity> subjectEntitys = this.subjectServices.getAllSubject();
        model.addAttribute("subject", subjectEntitys);
        return "admin_update_result";

    }

// admin  updating result data ***************************************************************************************
    @RequestMapping(value = "/updateAdminMarkData", method = RequestMethod.POST)
    public String updateAdminMarkData(@ModelAttribute Marksheet marksheet, HttpServletRequest request) {
        this.marksheetServices.updateMarkData(marksheet);
        return "redirect:/marksheet/getAdminAllMarkValue";
    }

}

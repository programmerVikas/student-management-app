/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.entity.SubjectEntity;
import com.spring.services.SubjectServices;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/subject")
public class SubjectController {

    @Autowired
    private SubjectServices subjectServices;

    @RequestMapping(value = "/saveSubject", method = RequestMethod.POST)
    public String saveSubject(@ModelAttribute SubjectEntity subjectEntity, Model model) {

        try {
            this.subjectServices.saveSubject(subjectEntity);
            model.addAttribute("msg", "Subject added successfully....");
        } catch (Exception e) {
            model.addAttribute("msg", "'SORRY' this subject is already taken...");
        }
        return "admin_add_subject";
    }

    @RequestMapping("/getAllValue")
    public String getAllValue(Model model) {
        List<SubjectEntity> data = this.subjectServices.getAllSubject();
        model.addAttribute("data", data);
        return "admin_subject_details";
    }

    @RequestMapping("/deleteData/{uId}")
    public String deleteData(@PathVariable("uId") int id) {
        this.subjectServices.deleteData(id);
        return "redirect:/subject/getAllValue";
    }

    @RequestMapping("/getSingleData/{uId}")
    public String getSingleData(@PathVariable("uId") int id, Model model) {
        model.addAttribute("id", id);
        SubjectEntity subjectEntity = this.subjectServices.getSingleData(id);
        model.addAttribute("data", subjectEntity);
        return "update_subject_details";
    }

    @RequestMapping(value = "/updateData", method = RequestMethod.POST)
    public String getUpdateData(@ModelAttribute SubjectEntity subjectEntity) {
        this.subjectServices.getUpdate(subjectEntity);
        return "redirect:/subject/getAllValue";
    }

//    teacher add subject ************************************************************************
    @RequestMapping(value = "/teacherSaveSubject", method = RequestMethod.POST)
    public String teacherSaveSubject(@ModelAttribute SubjectEntity subjectEntity, Model model) {

        try {
            this.subjectServices.saveSubject(subjectEntity);
            model.addAttribute("msg", "Subject added successfully....");
        } catch (Exception e) {
            model.addAttribute("msg", "'SORRY' this subject is already taken...");
        }
        return "teacher_add_subject";
    }

    //    teacher get all subject ************************************************************************
    @RequestMapping("/getAllTeacherSubjectValue")
    public String getAllTeacherSubjectValue(Model model) {
        List<SubjectEntity> data = this.subjectServices.getAllSubject();
        model.addAttribute("data", data);
        return "teacher_subject_details";
    }

    //    teacher delete subject ************************************************************************
    @RequestMapping("/deleteTeacherSubjectData/{uId}")
    public String deleteTeacherSubjectData(@PathVariable("uId") int id) {
        this.subjectServices.deleteData(id);
        return "redirect:/subject/getAllTeacherSubjectValue";
    }
    
    
//    teacher update subject data---------------------------------------------------------------------------
        @RequestMapping("/getSingleTeacherSubjectData/{uId}")
    public String getSingleTeacherSubjectData(@PathVariable("uId") int id, Model model) {
        model.addAttribute("id", id);
        SubjectEntity subjectEntity = this.subjectServices.getSingleData(id);
        model.addAttribute("data", subjectEntity);
        return "update_teacher_subject_details";
    }

    @RequestMapping(value = "/getUpdateTeacherSubjectData", method = RequestMethod.POST)
    public String getUpdateTeacherSubjectData(@ModelAttribute SubjectEntity subjectEntity) {
        this.subjectServices.getUpdate(subjectEntity);
        return "redirect:/subject/getAllTeacherSubjectValue";
    }
    
    
//    student subject details****************************************************************************
    
     //    student get all subject ************************************************************************
    @RequestMapping("/getAllStudentSubjectValue")
    public String getAllStudentSubjectValue(Model model) {
        List<SubjectEntity> data = this.subjectServices.getAllSubject();
        model.addAttribute("data", data);
        return "student_subject_detail";
    }
    

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.entity.FeeEntity;
import com.spring.entity.SignUp;
import com.spring.services.FeeServices;
import com.spring.services.SignUpServices;
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
@RequestMapping("/fee")
public class FeeController {

    @Autowired
    private FeeServices feeServices;
    @Autowired
    private SignUpServices signUpServices;

    @RequestMapping(value = "/saveFee", method = RequestMethod.POST)
    public String saveSubject(@ModelAttribute FeeEntity feeEntity, Model model) {

        List<SignUp> data = this.signUpServices.getAllData();
        model.addAttribute("data", data);

        for (SignUp signUp : data) {
            if ((feeEntity.getStudent_name().equals(signUp.getFirst_name().concat(" " + signUp.getLast_name()))) && (feeEntity.getPrn_no().equals(signUp.getPrn()))) {

                try {
                    this.feeServices.saveData(feeEntity);
                    model.addAttribute("msg", "fee added successfully....");
                    break;
                } catch (Exception e) {
                    model.addAttribute("msg", "'SORRY' this user already paid, if you want to re-paid then go to fee details and update there.");
                    break;
                }
            } else {
                model.addAttribute("msg", "'SORRY' your name and prn not matched....");
            }
        }
        return "admin_add_fee";
    }

    @RequestMapping("/getAllValue")
    public String getAllValue(Model model, HttpServletRequest request) {
        List<FeeEntity> data = this.feeServices.getAllValue();
        model.addAttribute("feedata", data);

        HttpSession hs = request.getSession();
        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "admin_fee_details";
        }
    }

    @RequestMapping("/deleteData/{uId}")
    public String deleteData(@PathVariable("uId") int id, HttpServletRequest request) {
        this.feeServices.delete(id);
            return "redirect:/fee/getAllValue";
    }

    @RequestMapping("/getSingleData/{uId}")
    public String getSingleData(@PathVariable("uId") int id, Model model, HttpServletRequest request) {
        model.addAttribute("id", id);
        FeeEntity feeEntity = this.feeServices.getSingleData(id);
        model.addAttribute("data", feeEntity);
        List<SignUp> data = this.signUpServices.getAllData();
        model.addAttribute("signdata", data);
            return "update_fee_details";
    }

    @RequestMapping(value = "/updateData", method = RequestMethod.POST)
    public String getUpdateData(@ModelAttribute FeeEntity feeEntity) {
        this.feeServices.updateData(feeEntity);
        return "redirect:/fee/getAllValue";
    }

    @RequestMapping("/getReciept/{uId}")
    public String getReciept(@PathVariable("uId") int id, Model model, HttpServletRequest request) {
        FeeEntity feeEntity = this.feeServices.getSingleData(id);
        model.addAttribute("data", feeEntity);
            return "fee_reciept";
    }

//    student fee privately *******************************************************************************************
    @RequestMapping("/getAllStudentFeeData")
    public String getAllStudentFeeData(Model model, HttpServletRequest request, HttpServletResponse response) {
        List<FeeEntity> data = this.feeServices.getAllValue();
        model.addAttribute("feedata", data);

        HttpSession hs = request.getSession();
        String prn = (String) hs.getAttribute("prn");
        model.addAttribute("prn", prn);

        String mail = (String) hs.getAttribute("mail");
        if (mail == null) {
            return "error_page";
        } else {
            return "student_fee_detail";
        }
    }

}

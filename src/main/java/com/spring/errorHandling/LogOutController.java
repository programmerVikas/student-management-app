/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.errorHandling;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogOutController {
    
    @RequestMapping("/logOut")
    public String logOutPage(HttpServletRequest request){
         HttpSession session = request.getSession();
         session.invalidate();
        return "index";
    }
    
}

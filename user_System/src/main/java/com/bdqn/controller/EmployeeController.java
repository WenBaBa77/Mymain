package com.bdqn.controller;

import com.bdqn.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService userService;

    @RequestMapping("/login")
    public String login(String lastanme, String emal,Model mode){
        System.out.println("===="+lastanme);
        System.out.println("===="+emal);
        if(userService.Login(lastanme,emal)){
            mode.addAttribute("lastanme",lastanme);
            return "/WEB-INF/admin";
        }
        return "index";
    }
}

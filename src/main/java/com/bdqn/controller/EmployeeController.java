package com.bdqn.controller;

import com.bdqn.pojo.Employee;
import com.bdqn.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService userService;

    //asdesdd
    @RequestMapping("/login")
    public String login(String lastanme, String emal,Model mode){
        System.out.println("===="+lastanme);
        System.out.println("===="+emal);
        if(userService.Login(lastanme,emal)){
            mode.addAttribute("lastanme",lastanme);
            getallemp(mode);
            return "/WEB-INF/admin";
        }
        return "index";
    }

    @RequestMapping("/getall")
    @ResponseBody
    public String getallemp(Model model){
        List<Employee> getallemployee = userService.getallemployee();
        if(getallemployee!=null){
            System.out.println("====="+getallemployee.size()+"===");
            model.addAttribute("emplist",getallemployee);
            for (Employee e:getallemployee) {
                System.out.println(e.getLastName()+"=="+e.getDepartment().getDepname());
            }
            model.addAttribute("aa","1111111111111");
            return "index";
        }
        return "index";
    }
}

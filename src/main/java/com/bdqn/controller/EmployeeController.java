package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Employee;
import com.bdqn.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService userService;

    //asdesddddDdddddd滴滴滴
    @RequestMapping("/login")
    public String login(String lastanme, String emal,Model mode) throws IOException {
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
    @ResponseBody //不会走视图处理器
    public String getallemp(Model model) throws IOException {
        List<Employee> getallemployee = userService.getallemployee();
        if(getallemployee!=null){
            System.out.println("====="+getallemployee.size()+"===");
            model.addAttribute("emplist",getallemployee);
            for (Employee e:getallemployee) {
                System.out.println(e.getLastName()+"=="+e.getDepartment().getDepname());
            }
//            PrintWriter out = response.getWriter();
//            String s = JSON.toJSONString(getallemployee);
//            System.out.println(s);
//            out.write(s);
            return "/WEB-INF/admin";
        }
        return "index";
    }
}

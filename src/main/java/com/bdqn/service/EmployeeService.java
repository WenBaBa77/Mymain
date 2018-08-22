package com.bdqn.service;

import com.bdqn.pojo.Employee;

import java.util.List;

public interface EmployeeService {
    boolean Login(String lastanme,String emal);

    List<Employee> getallemployee();
}

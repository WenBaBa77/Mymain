package com.bdqn.service.impl;

import com.bdqn.mapper.EmployeeMapper;
import com.bdqn.pojo.Employee;
import com.bdqn.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeMapper userMapper;

    public boolean Login(String lastanme,String emal) {
        if(userMapper.login(lastanme,emal)>=1){
            return true;
        }
        return false;
    }

    @Override
    public List<Employee> getallemployee() {

        return null;
    }
}

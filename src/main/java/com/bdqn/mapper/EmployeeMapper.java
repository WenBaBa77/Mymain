package com.bdqn.mapper;

import com.bdqn.pojo.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeeMapper {
    int login(@Param("lastanme") String lastanme, @Param("emall") String emall);

    List<Employee> getalluser();
}

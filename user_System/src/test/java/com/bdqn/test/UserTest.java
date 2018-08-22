package com.bdqn.test;

import com.bdqn.service.EmployeeService;
import com.bdqn.service.impl.EmployeeServiceImpl;
import org.junit.jupiter.api.Test;

public class UserTest {


    private EmployeeService userService=new EmployeeServiceImpl();

    @Test
    public void tt(){

        boolean leleji = userService.Login("leleji", "112313afs@qwe.com");
        System.out.println(leleji);
    }
}

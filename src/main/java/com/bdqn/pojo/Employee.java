package com.bdqn.pojo;

public class Employee {
//    id number primary key,
//    lastName varchar2(20) not null ,
//    emall varchar2(20),
//    gender number not null,
//    depName number not null

    private int id;
    private String lastName;
    private String emall;
    private int gender;
    private int depName;

    private Department department;

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmall() {
        return emall;
    }

    public void setEmall(String emall) {
        this.emall = emall;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getDepName() {
        return depName;
    }

    public void setDepName(int depName) {
        this.depName = depName;
    }
}

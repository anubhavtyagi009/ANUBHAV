/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example;

import com.example.domain.Admin;
import com.example.domain.Director;
import com.example.domain.Employee;
import com.example.domain.Engineer;
import com.example.domain.Manager;

/**
 *
 * @author Anubhav
 */
public class EmployeeTest {
    
     
  
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Employee emp=new Employee(101,"john","12345",5000);
         Engineer e=new Engineer(101,"john smith","012-34-4567",10000);
         Manager m=new Manager(201,"barbara","23456",12000,"us dept");
         //String dept_name=m.getDept_name();
         Admin a=new Admin(301,"bill","34567",15999);
         Director d=new Director(401,"susan","45678",18000,"marketing",1000000);
         printEmployee(e);
             printEmployee(m );
             printEmployee(a);
             printEmployee(d);
             
    }
    /**
     *
     * @param 
     */
    public static void printEmployee(Employee emp)
         {
             System.out.println();
             System.out.println("Employee id"+emp.getEmp_id());
             System.out.println("Employee name"+emp.getEmp_name());
             System.out.println("Employee ssn"+emp.getEmp_ssn());
             System.out.println("Employee sal"+emp.getEmp_sal());
         }
             
         
    }

package com.example.controller;

import com.example.entity.Employee;
import com.example.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @PostMapping("/add")
    public String add(Employee employee) {
        employeeService.add(employee);
        return "redirect:/ems/emplist.jsp";
    }

    @GetMapping("/findAll")
    public String findAll(Model model) {
        model.addAttribute("employees", employeeService.findAll());
        return "ems/emplist";
    }

    @GetMapping("/delete")
    public String delete(String id) {
        employeeService.delete(id);
        return "redirect:/employee/findAll";
    }

    @GetMapping("/findById")
    public String findById(String id, Model model) {
        Employee employee = employeeService.findById(id);
        if (employee != null) {
            model.addAttribute("employee", employee);
            return "ems/updateEmp";
        }
        return "redirect:/employee/findAll";
    }

    @PostMapping("/update")
    public String update(Employee employee) {
        employeeService.update(employee);
        return "redirect:/employee/findAll";
    }
}

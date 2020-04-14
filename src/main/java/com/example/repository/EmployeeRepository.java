package com.example.repository;

import com.example.entity.Employee;

import java.util.List;

public interface EmployeeRepository {

    void add(Employee employee);

    List<Employee> findAll();

    void delete(String id);

    void update(Employee employee);

    Employee findById(String id);
}

package com.yr.dao;


import com.yr.entity.Employee;
import com.yr.entity.Page;
import com.yr.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDao {

    @Autowired
    private EmployeeMapper employeeMapper;

    //分页查询
    public void List(Page<Employee> page) {

        int sum = employeeMapper.queryCount();
        int cou = ((page.getPageNo() - 1) * page.getPageSize());
        page.setStart(cou);
        page.setSum(sum);
        List<Employee> list = employeeMapper.query(page);
        page.setList(list);
    }

    //删除
    public void delete(int id) {

        employeeMapper.delete(id);
    }

    //新增
    public int save(Employee employee) {

        employeeMapper.save(employee);
        return employee.getId();
    }

    //修改回显
    public Employee upGetAll(int id) {

        Employee employee = employeeMapper.getEmpById(id);
        return employee;
    }

    //修改
    public void update(Employee employee) {

        employeeMapper.update(employee);
    }

}

package com.yr.service;


import com.yr.dao.EmployeeDao;
import com.yr.entity.Employee;
import com.yr.entity.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class EmpService {

    @Autowired
    private EmployeeDao employeeDao;


    //分页查询
    @Transactional
    public void query(Page<Employee> page) {

        employeeDao.List(page);

    }

    //新增
    @Transactional
    public int save(Employee employee) {
        employeeDao.save(employee);
        return employee.getId();
    }

    //删除
    @Transactional
    public void delete(int id) {

        employeeDao.delete(id);
    }

    //修改回显
    @Transactional
    public Employee getEmpById(int id) {

        return employeeDao.upGetAll(id);
    }

    //修改
    @Transactional
    public void update(Employee employee) {

        employeeDao.update(employee);

    }
}

package com.yr.mapper;

import com.yr.entity.Department;
import com.yr.entity.Employee;
import com.yr.entity.Page;

import java.util.List;


public interface EmployeeMapper {

    //查询总条数
    public int queryCount();

    // 查询所有部门信息
    public List<Department> deptquery();

    // 查询所有员工信息
    public List<Employee> query(Page<Employee> page);

    // 添加
    public int save(Employee employee);


    // 删除
    public void delete(Integer id);

    // 修改先根据id查询回显数据
    public Employee getEmpById(Integer id);

    // 修改
    public void update(Employee employee);
}

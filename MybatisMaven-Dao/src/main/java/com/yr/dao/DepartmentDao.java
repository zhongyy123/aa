package com.yr.dao;

import com.yr.entity.Department;
import com.yr.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DepartmentDao {

    @Autowired
    private EmployeeMapper employeemapper;

    /**
     * 查询所有
     */
    public List<Department> queryDepart() {

        List<Department> deparList = employeemapper.deptquery();
        return deparList;
    }

}

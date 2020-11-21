package com.yr.service;

import com.yr.dao.DepartmentDao;
import com.yr.entity.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DeptService {

    @Autowired
    private DepartmentDao departmentDao;


    // 查询所有
    @Transactional
    public List<Department> getAll() {

        return departmentDao.queryDepart();
    }

}

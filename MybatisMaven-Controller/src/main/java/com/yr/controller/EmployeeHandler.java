package com.yr.controller;

import com.yr.entity.Department;
import com.yr.entity.Employee;
import com.yr.entity.Page;
import com.yr.service.DeptService;
import com.yr.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.Locale;
import java.util.Map;


@Controller
public class EmployeeHandler {

    @Autowired
    private EmpService empService;

    @Autowired
    private DeptService deptService;

    // 新增
    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Employee save(@RequestParam("file") MultipartFile file, Employee employee) throws IOException {

        String filename = System.currentTimeMillis() + ".jpg";
        String headPath = "E:\\use\\jdbc\\Spring.SpringMVC.Mybatis\\WebContent\\files\\" + filename;
        OutputStream out = new FileOutputStream(headPath);
        // 输入流，上传文件的
        InputStream inputStream;
        inputStream = file.getInputStream();
        byte b[] = new byte[1024 * 1024 * 1];
        int i = inputStream.read(b);
        while (i != -1) {
            out.write(b, 0, i);
            i = inputStream.read(b);
        }
        out.close();
        inputStream.close();
        employee.setHeadPath(filename);
        empService.save(employee);
        return employee;


    }

    //删除	
    @ResponseBody
    @RequestMapping(value = "/delemp/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") Integer id) {
        empService.delete(id);
        return "删除成功！";
    }

    // 修改
    @ResponseBody
    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    public Employee update(Employee employee, @RequestParam("file") MultipartFile file) throws Exception {


        String filename = System.currentTimeMillis() + ".jpg";
        String headPath = "E:\\use\\jdbc\\Spring.SpringMVC.Mybatis\\WebContent\\files\\" + filename;
        OutputStream out = new FileOutputStream(headPath);
        // 输入流，上传文件的
        InputStream inputStream;
        inputStream = file.getInputStream();
        byte b[] = new byte[1024 * 1024 * 1];
        int i = inputStream.read(b);
        while (i != -1) {
            out.write(b, 0, i);
            i = inputStream.read(b);
        }
        out.close();
        inputStream.close();
        employee.setHeadPath(filename);
        empService.update(employee);
        return empService.getEmpById(employee.getId());
    }

    // 修改回显
    @ResponseBody
    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public Employee input(@PathVariable("id") Integer id) {

        return empService.getEmpById(id);

    }

    // 查询所有员工信息
    @ResponseBody
    @RequestMapping(value = "/emps", method = RequestMethod.GET)
    public Page<Employee> emps(Page<Employee> page) {

        empService.query(page);
        return page;

    }


    // 部门二级联动查询
    @ResponseBody
    @RequestMapping(value = "/dept", method = RequestMethod.GET)
    public List<Department> list1(Map<String, Object> map, Locale locale) {
        return deptService.getAll();
    }

    // 文件下载(小)
    @RequestMapping("/testResponseEntity")
    public ResponseEntity<byte[]> testResponseEntity(HttpSession session, @RequestParam("headPath") String headName)
            throws IOException {

        if (headName != null && !headName.equals("")) {
            String headPath = "E:\\use\\jdbc\\Spring.SpringMVC.Mybatis\\WebContent\\files\\" + headName;

            byte[] body = null;
            InputStream in = new FileInputStream(new File(headPath));

            body = new byte[in.available()];
            in.read(body);
            HttpHeaders headers = new HttpHeaders();
            headers.add("Content-Disposition", "attachment;filename=" + headName);
            HttpStatus statusCode = HttpStatus.OK;

            ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(body, headers, statusCode);
            return response;
        } else {
            return null;
        }
    }

}

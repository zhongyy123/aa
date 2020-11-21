package com.yr.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * @author BieHongLi
 * @version 创建时间：2017年2月21日 上午10:01:14
 * 数据交互层dao层
 */
public class BaseDao {

    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://192.168.1.51:3306/sum?serverTimezone=Asia/Shanghai";
    private static String user = "root";
    private static String password = "123";

    /***
     * 连接数据库的方法
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static Connection getCon() throws ClassNotFoundException, SQLException {
        Class.forName(driver);//加载数据库驱动
        Connection con = DriverManager.getConnection(url, user, password);
        return con;
    }

    /***
     * 关闭数据库的方法
     * @param con
     * @param ps
     * @param rs
     */
    public static void close(Connection con, PreparedStatement ps, ResultSet rs) {
        if (rs != null) {//关闭资源，避免出现异常
            try {
                rs.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    /***
     * 同意增删改的方法
     * @param sql
     * @param arr
     * @return
     */
    public static boolean addUpdateDelete(String sql, Object[] arr) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = BaseDao.getCon();//第一步 ：连接数据库的操作
            ps = con.prepareStatement(sql);//第二步：预编译
            //第三步：设置值
            if (arr != null && arr.length != 0) {
                for (int i = 0; i < arr.length; i++) {
                    ps.setObject(i + 1, arr[i]);
                }
            }
            int count = ps.executeUpdate();//第四步：执行sql语句
            if (count > 0) {
                return true;
            } else {
                return false;
            }
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }

//    public static void main(String[] args) {
//        try {
//            BaseDao.getCon();
//            System.out.println("测试数据库链接成功");
//        } catch (ClassNotFoundException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//    }


}
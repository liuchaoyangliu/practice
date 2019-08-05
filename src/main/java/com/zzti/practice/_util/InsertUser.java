package com.zzti.practice._util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertUser {

    public static void main(String[] args) {

        Connection con=null;
        PreparedStatement ps=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/practice?characterEncoding=utf-8",
                    "root","root");
            System.out.println(con);

            String sql = "INSERT INTO `practice`.`user` (\n" +
                    "  `workNumber`,\n" +
                    "  `name`,\n" +
                    "  `age`,\n" +
                    "  `sex`,\n" +
                    "  `password`,\n" +
                    "  `address`,\n" +
                    "  `phone`,\n" +
                    "  `position`,\n" +
                    "  `institutions`,\n" +
                    "  `salary`,\n" +
                    "  `flag`\n" +
                    ") \n" +
                    "VALUES\n" +
                    "  (\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    ?,\n" +
                    "    1\n" +
                    "  ) ;";
            ps=con.prepareStatement(sql);
            //填充占位符
            for (int i = 10; i < 50; i++) {
                ps.setString(1, 20190800 + i + 1 + "");
                ps.setString(2, "玉皇大帝");
                ps.setInt(3, 18);
                ps.setString(4, "女");
                ps.setString(5, "123456");
                ps.setString(6, "四川省郫都区德源硅谷人才创业楼");
                ps.setString(7, "12345678901");
                ps.setInt(8, 3);
                ps.setInt(9, 4);
                ps.setDouble(10, 80000);
                ps.executeUpdate();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

}

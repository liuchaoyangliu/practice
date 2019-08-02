package com.zzti.practice.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
public class User extends Model<User> {

    private static final long serialVersionUID = 1L;

    /**
     * 员工工号
     */
    @TableId(value = "workNumber", type = IdType.AUTO)
    private String workNumber;

    /**
     * 姓名
     */
    private String name;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 性别
     */
    private String sex;

    /**
     * 员工登录密码
     */
    private String password;

    /**
     * 住址
     */
    private String address;

    /**
     * 电话
     */
    private String phone;

    /**
     * 职位
     */
    private String position;

    /**
     * 所属机构
     */
    private Integer institutions;

    /**
     * 薪酬
     */
    private Double salary;

    /**
     * 是否为正式员工，值为0或1
     */
    private Integer flag;


    public String getWorkNumber() {
        return workNumber;
    }

    public void setWorkNumber(String workNumber) {
        this.workNumber = workNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Integer getInstitutions() {
        return institutions;
    }

    public void setInstitutions(Integer institutions) {
        this.institutions = institutions;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    @Override
    protected Serializable pkVal() {
        return this.workNumber;
    }

    @Override
    public String toString() {
        return "User{" +
        "workNumber=" + workNumber +
        ", name=" + name +
        ", age=" + age +
        ", sex=" + sex +
        ", password=" + password +
        ", address=" + address +
        ", phone=" + phone +
        ", position=" + position +
        ", institutions=" + institutions +
        ", salary=" + salary +
        ", flag=" + flag +
        "}";
    }
}

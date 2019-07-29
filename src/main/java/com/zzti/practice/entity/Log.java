package com.zzti.practice.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
public class Log extends Model<Log> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String createtime;

    private String operation;

    @TableField("workNumber")
    private byte[] workNumber;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public byte[] getWorkNumber() {
        return workNumber;
    }

    public void setWorkNumber(byte[] workNumber) {
        this.workNumber = workNumber;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Log{" +
        "id=" + id +
        ", createtime=" + createtime +
        ", operation=" + operation +
        ", workNumber=" + workNumber +
        "}";
    }
}

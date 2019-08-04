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
 * @since 2019-08-04
 */
public class Attendance extends Model<Attendance> {

    private static final long serialVersionUID = 1L;

    /**
     * 每一条记录id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 考勤的时间
     */
    private String time;

    /**
     * 员工工号
     */
    @TableField("workNumber")
    private String workNumber;

    /**
     * 状态
     */
    private String status;

    /**
     * 备注
     */
    private String note;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getWorkNumber() {
        return workNumber;
    }

    public void setWorkNumber(String workNumber) {
        this.workNumber = workNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Attendance{" +
                "id=" + id +
                ", time=" + time +
                ", workNumber=" + workNumber +
                ", status=" + status +
                ", note=" + note +
                "}";
    }
}

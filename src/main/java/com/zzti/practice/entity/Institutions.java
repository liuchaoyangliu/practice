package com.zzti.practice.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
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
public class Institutions extends Model<Institutions> {

    private static final long serialVersionUID = 1L;

    /**
     * 机构id号
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 机构名称
     */
    private String name;

    /**
     * 机构描述
     */
    @TableField("`describe`")
    private String describe;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Institutions{" +
        "id=" + id +
        ", name=" + name +
        ", describe=" + describe +
        "}";
    }
}

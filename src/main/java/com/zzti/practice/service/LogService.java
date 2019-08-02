package com.zzti.practice.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.Log;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
public interface LogService extends IService<Log> {

    void insert(Log log);

    IPage getList(int pageNum, int pageSize);

    void deleteLog(int id);

    IPage searchList(int pageNum, int pageSize, String mes);

}

package com.zzti.practice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zzti.practice.config.LogUtil;
import com.zzti.practice.entity.Log;
import com.zzti.practice.mapper.LogMapper;
import com.zzti.practice.service.LogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
@RestController
public class LogServiceImpl extends ServiceImpl<LogMapper, Log> implements LogService {

    @Autowired
    LogMapper logMapper;

    @Autowired
    LogUtil logUtil;

    @Override
    public void insert(Log log) {

        logMapper.insert(log);
    }

    @Override
    public IPage getList(int pageNum, int pageSize) {

        Page<Log> page = new Page<>(pageNum, pageSize);
        QueryWrapper<Log> queryWrapper = new QueryWrapper<>();
        IPage<Map<String, Object>> mapIPage = logMapper.selectMapsPage(page, queryWrapper);
        System.out.println(mapIPage.toString());
        logUtil.insertLog("获取日志列表");
        return mapIPage;
    }

    @Override
    public void deleteLog(int id) {

        logUtil.insertLog("单个删除日志");
        logMapper.delete(new QueryWrapper<Log>().eq("id", id));
    }

    @Override
    public IPage searchList(int pageNum, int pageSize, String mes) {

        Page<Log> logPage = new Page<>(pageNum, pageSize);
        QueryWrapper<Log> wrapper = new QueryWrapper<Log>()
                .like("id", mes)
                .or()
                .like("createtime", mes)
                .or()
                .like("operation", mes)
                .or()
                .like("workNumber", mes);
        logUtil.insertLog("搜索日志");
        return logMapper.selectMapsPage(logPage, wrapper);
    }

    @Override
    public void deleteListLog(List<Log> list) {

        logUtil.insertLog("单个删除日志");
        for (int i = 0; i < list.size(); i++) {
            logMapper.delete(new QueryWrapper<Log>().eq("id", list.get(i).getId()));
        }
    }
}

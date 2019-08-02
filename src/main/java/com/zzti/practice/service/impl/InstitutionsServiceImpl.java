package com.zzti.practice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zzti.practice.config.LogUtil;
import com.zzti.practice.entity.Institutions;
import com.zzti.practice.mapper.InstitutionsMapper;
import com.zzti.practice.service.InstitutionsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
@RestController
public class InstitutionsServiceImpl extends ServiceImpl<InstitutionsMapper, Institutions> implements InstitutionsService {

    @Autowired
    InstitutionsMapper institutionsMapper;

    @Autowired
    LogUtil logUtil;

    @Override
    public Institutions getInstitutions(int id) {

        QueryWrapper<Institutions> queryWrapper = new QueryWrapper<Institutions>()
                .eq("id", id);
        logUtil.insertLog("获取机构列表");
        return institutionsMapper.selectOne(queryWrapper);
    }

}

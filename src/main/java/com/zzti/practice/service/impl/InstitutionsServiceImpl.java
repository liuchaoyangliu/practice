package com.zzti.practice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zzti.practice.config.LogUtil;
import com.zzti.practice.entity.Institutions;
import com.zzti.practice.mapper.InstitutionsMapper;
import com.zzti.practice.service.InstitutionsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

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

    @Override
    public IPage getList(int pageNum, int pageSize) {
        Page<Institutions> page = new Page<>(pageNum, pageSize);
        QueryWrapper<Institutions> queryWrapper = new QueryWrapper<>();
        IPage<Map<String, Object>> mapIPage = institutionsMapper.selectMapsPage(page, queryWrapper);
        logUtil.insertLog("获取机构列表");
        return mapIPage;
    }

    @Override
    public void updateInstitutions(Institutions institutions) {

        logUtil.insertLog("更新机构信息");
        UpdateWrapper<Institutions> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("id", institutions.getId());
        institutionsMapper.update(institutions, updateWrapper);
    }

    @Override
    public void removeInstitutions(int id) {
        System.out.println("删除机构");
        QueryWrapper<Institutions> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        institutionsMapper.delete(queryWrapper);
    }

}

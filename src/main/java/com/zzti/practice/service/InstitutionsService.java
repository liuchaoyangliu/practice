package com.zzti.practice.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.Institutions;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
public interface InstitutionsService extends IService<Institutions> {

    Institutions getInstitutions(int id);

    IPage getList(int pageNum, int pageSize);

    void updateInstitutions(Institutions institutions);

    void removeInstitutions(int id);

    void addInstitutions(String name, String describe);

    List getInstitutions();
}

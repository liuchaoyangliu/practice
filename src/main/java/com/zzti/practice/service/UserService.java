package com.zzti.practice.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.User;
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
public interface UserService extends IService<User> {

    IPage getList(int pageNum, int pageSize);

    void deleteUser(String workNumber);

    IPage searchList(int pageNum, int pageSize, String mes);

    User login(String workNumber, String password);

    User getUser(String workNumber);

    User getCurrentUser();

    void updateUser(User user);

    void deleteListUser(List<User> list);

    IPage getNotAcceptedList(int pageNum, int pageSize);

    void acceptedUser(String workNumber,Integer flag);

    IPage getUsetListByInstitutionsId(int pageNum, int pageSize, Integer id);
}

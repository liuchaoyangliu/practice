package com.zzti.practice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zzti.practice.config.LogUtil;
import com.zzti.practice.entity.User;
import com.zzti.practice.mapper.UserMapper;
import com.zzti.practice.service.LogService;
import com.zzti.practice.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    LogService logService;

    @Autowired
    HttpSession session;

    @Autowired
    LogUtil logUtil;

    @Override
    public IPage getList(int pageNum, int pageSize) {

        Page<User> page = new Page<>(pageNum, pageSize);
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("flag", "1");
        IPage<Map<String, Object>> mapIPage = userMapper.selectMapsPage(page, queryWrapper);
        logUtil.insertLog("获取用户列表");
        return mapIPage;
    }

    @Override
    public void deleteUser(String workNumber) {

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("workNumber", workNumber);
        logUtil.insertLog("删除用户");
        userMapper.delete(queryWrapper);
    }

    @Override
    public IPage searchList(int pageNum, int pageSize, String mes) {

        Page<User> page = new Page<>(pageNum, pageSize);
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("workNumber", mes)
                .or()
                .like("name", mes);
        IPage<Map<String, Object>> mapIPage = userMapper.selectMapsPage(page, queryWrapper);
        System.out.println(mapIPage);
        logUtil.insertLog("搜索");
        return mapIPage;
    }

    @Override
    public User login(String workNumber, String password) {

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("workNumber", workNumber).eq("password", password);
        logUtil.insertLog("用户登录");
        return userMapper.selectOne(queryWrapper);
    }

    @Override
    public User getUser(String workNumber) {

        logUtil.insertLog("获取用户信息");
        return userMapper.selectOne(new QueryWrapper<User>().eq("workNumber", workNumber));
    }

    @Override
    public void updateUser(User user) {

        logUtil.insertLog("更新用户信息");
        userMapper.updateById(user);
    }

}

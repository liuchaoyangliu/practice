package com.zzti.practice.service.impl;

import com.zzti.practice.entity.User;
import com.zzti.practice.mapper.UserMapper;
import com.zzti.practice.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}

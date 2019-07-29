package com.zzti.practice.service.impl;

import com.zzti.practice.entity.Log;
import com.zzti.practice.mapper.LogMapper;
import com.zzti.practice.service.LogService;
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
public class LogServiceImpl extends ServiceImpl<LogMapper, Log> implements LogService {

}

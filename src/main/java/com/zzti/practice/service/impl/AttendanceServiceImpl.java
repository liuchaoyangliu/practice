package com.zzti.practice.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zzti.practice.config.LogUtil;
import com.zzti.practice.entity.Attendance;
import com.zzti.practice.mapper.AttendanceMapper;
import com.zzti.practice.service.AttendanceService;
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
public class AttendanceServiceImpl extends ServiceImpl<AttendanceMapper, Attendance> implements AttendanceService {

    @Autowired
    AttendanceMapper attendanceMapper;

    @Autowired
    LogUtil logUtil;

    @Override
    public IPage getAttendanceList(int pageNum, int pageSize) {
        Page<Attendance> page = new Page<>(pageNum, pageSize);
        IPage<Attendance> selectPage = attendanceMapper.selectPage(page, null);
        logUtil.insertLog("获取考勤信息");
        return selectPage;
    }

    @Override
    public void updateAttendance(Attendance attendance) {
        logUtil.insertLog("更改考勤状态");
        UpdateWrapper<Attendance> updateWrapper =
                new UpdateWrapper<Attendance>().eq("id", attendance.getId());
        attendanceMapper.update(attendance, updateWrapper);
    }

    @Override
    public IPage searchAttendance(int pageNum, int pageSize, String mes) {

        Page<Attendance> page = new Page<>();
        QueryWrapper<Attendance> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("time", mes)
                .or()
                .like("workNumber", mes);
        IPage<Attendance> attendanceIPage =
                attendanceMapper.selectPage(page, queryWrapper);
        logUtil.insertLog("查询考勤信息");
        return attendanceIPage;
    }

}

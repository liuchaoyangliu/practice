package com.zzti.practice.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.Attendance;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zzti.practice.entity.User;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
public interface AttendanceService extends IService<Attendance> {

    IPage getAttendanceList(int pageNum, int pageSize);

    void updateAttendance(Attendance attendance);

    IPage searchAttendance(int pageNum, int pageSize, String mes);

    void insertAttendance(String workNumber, String status);

    void listAttendance(List<User> users);
}

package com.zzti.practice.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.Attendance;
import com.zzti.practice.entity.User;
import com.zzti.practice.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.List;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
@Controller
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    AttendanceService attendanceService;

    @ResponseBody
    @GetMapping("/getAttendanceList")
    public IPage getAttendanceList(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                                   @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize){

        IPage page = attendanceService.getAttendanceList(pageNum, pageSize);
        return page;
    }

    @ResponseBody
    @PostMapping("/updateAttendance")
    public void updateAttendance(@RequestBody Attendance attendance){

        System.out.println(attendance.toString());
        attendanceService.updateAttendance(attendance);
    }

    @ResponseBody
    @GetMapping("/searchAttendance")
    public IPage searchAttendance(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                                  @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                                  @RequestParam(value = "search") String mes){
        return attendanceService.searchAttendance(pageNum, pageSize, mes);
    }

    @ResponseBody
    @GetMapping("/insertAttendance")
    public void insertAttendance(@RequestParam(value = "workNumber", defaultValue = "1") String workNumber,
                                 @RequestParam(value = "status", defaultValue = "5") String status){
        attendanceService.insertAttendance(workNumber, status);
    }

    @ResponseBody
    @PostMapping("/insertListAttendance")
    public void insertListAttendance(@RequestBody List<User> list){

        list.forEach(e -> System.out.println(e.toString()));

        attendanceService.listAttendance(list);
    }



}


package com.zzti.practice.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.Attendance;
import com.zzti.practice.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.Iterator;

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
        Iterator iterator = page.getRecords().iterator();
        while (iterator.hasNext()){
            System.out.println(iterator.next().toString());
        }
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
                                  @RequestParam(value = "mes") String mes){
        return attendanceService.searchAttendance(pageNum, pageSize, mes);
    }

}


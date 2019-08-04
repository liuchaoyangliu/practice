package com.zzti.practice.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.Log;
import com.zzti.practice.service.LogService;
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
@RequestMapping("/log")
public class LogController {

    @Autowired
    LogService logService;

    @ResponseBody
    @GetMapping("/getList")
    public IPage getList1(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                          @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize){

        System.out.println("获取日志列表方法");
        return logService.getList(pageNum, pageSize);
    }


    @ResponseBody
    @GetMapping("/deleteLog")
    public void deleteLog(@RequestParam(value = "id") Integer id){

        System.out.println("删除单个日志");
        logService.deleteLog(id);
    }

    @ResponseBody
    @GetMapping("/searchLog")
    public IPage searchLogList(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                              @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                              @RequestParam(value = "search") String mes){

        System.out.println("日志搜索方法");
        return logService.searchList(pageNum, pageSize, mes);
    }

    @ResponseBody
    @PostMapping("/deleteListLog")
    public void deleteListLog(@RequestBody List<Log> list){

        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }

        logService.deleteListLog(list);
    }


}


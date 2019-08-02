package com.zzti.practice.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.service.LogService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

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

}


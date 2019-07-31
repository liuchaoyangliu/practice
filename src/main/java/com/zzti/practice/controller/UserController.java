package com.zzti.practice.controller;


import com.zzti.practice.config.ResponseResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.HashMap;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @ApiOperation(value = "is login successful?")
    @ResponseBody
    @RequestMapping(value = "/login")
    public String login(@RequestParam(value = "username") String username,
                        @RequestParam(value = "password") String password) {

        if(username.equals("1234") && password.equals("1234")){
            return "success";
        }
        return "failure";
    }

}


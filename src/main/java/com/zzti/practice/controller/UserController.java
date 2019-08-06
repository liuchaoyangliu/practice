package com.zzti.practice.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.config.SessionUtil;
import com.zzti.practice.entity.User;
import com.zzti.practice.service.UserService;
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
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    SessionUtil sessionUtil;

    @ResponseBody
    @GetMapping("/login")
    public String login(@RequestParam(value = "username") String username,
                        @RequestParam(value = "password") String password) {

        User login = userService.login(username, password);
        sessionUtil.setWorkNumber(login.getWorkNumber());
        if(login != null){
            return "success";
        }
        return "failure";
    }

    @ResponseBody
    @GetMapping("/getList")
    public IPage getList1(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                          @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize){
        System.out.println("获取用户列表方法");
        return userService.getList(pageNum, pageSize);
    }

    @ResponseBody
    @GetMapping("/getNotAcceptedList")
    public IPage getNotAcceptedList(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                          @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize){
        System.out.println("获取未录取用户列表方法");
        return userService.getNotAcceptedList(pageNum, pageSize);
    }

    @ResponseBody
    @GetMapping("/searchList")
    public IPage searchList(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                          @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                            @RequestParam(value = "search") String mes){
        System.out.println("搜索方法");
        return userService.searchList(pageNum, pageSize, mes);
    }

    @ResponseBody
    @GetMapping("/deleteUser")
    public void deleteUser(@RequestParam(value = "deleteUser", defaultValue = "1") String workNumber){
        System.out.println("删除用户");
        userService.deleteUser(workNumber);
    }

    @ResponseBody
    @GetMapping("/getUser")
    public User getUser(@RequestParam(value = "workNumber", defaultValue = "20190714") String workNumber){
        System.out.println("查询用户");
        return userService.getUser(workNumber);
    }

    @ResponseBody
    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public void updateUser(@RequestBody User user) {
        System.out.println(user.toString());
        System.out.println("更新用户信息");
        userService.updateUser(user);
    }

    @ResponseBody
    @RequestMapping(value = "/deleteListUser", method = RequestMethod.POST)
    public void deleteListUser(@RequestBody List<User> list){

        userService.deleteListUser(list);
    }

    @ResponseBody
    @GetMapping("/acceptedUser")
    public void acceptedUser(@RequestParam(value = "workNumber")String workNumber){

        userService.acceptedUser(workNumber, 1);
    }

    @ResponseBody
    @GetMapping("/getUsetListByInstitutionsId")
    public IPage getUsetListByInstitutionsId(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                                             @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                                             @RequestParam(value = "id",defaultValue = "4")Integer id){

        IPage list = userService.getUsetListByInstitutionsId(pageNum, pageSize, id);
        return list;
    }

    @ResponseBody
    @GetMapping("/getCurrentUser")
    public User getCurrentUser(){
        User user = userService.getCurrentUser();
        System.out.println(user);
        return user;
    }
}


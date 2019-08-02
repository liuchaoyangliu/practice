package com.zzti.practice.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.User;
import com.zzti.practice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpSession;

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
    HttpSession session;

    @ResponseBody
    @GetMapping("/login")
    public String login(@RequestParam(value = "username") String username,
                        @RequestParam(value = "password") String password) {
        System.out.println("登录方法");

        User login = userService.login(username, password);
        if(login != null){

            session.setAttribute("workNumber", login.getWorkNumber());
            System.out.println(session.getAttribute("workNumber") + "########################");
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

        userService.updateUser(user);

    }

}


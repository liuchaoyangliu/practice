package com.zzti.practice.controller;


import com.zzti.practice.entity.Institutions;
import com.zzti.practice.service.InstitutionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
@Controller
@RequestMapping("/institutions")
public class InstitutionsController {

    @Autowired
    InstitutionsService institutionsService;

    @ResponseBody
    @GetMapping("/getInstitutions")
    public Institutions getUser(@RequestParam(value = "id") int id){
        System.out.println("查询机构");
        System.out.println(id);
        return institutionsService.getInstitutions(id);
    }

}


package com.zzti.practice.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zzti.practice.entity.Institutions;
import com.zzti.practice.service.InstitutionsService;
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

    @ResponseBody
    @GetMapping("/getInstitutionsList")
    public IPage getInstitutionsList(@RequestParam(value = "page", defaultValue = "1") Integer pageNum,
                                     @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize){

        return institutionsService.getList(pageNum, pageSize);
    }

    @ResponseBody
    @PostMapping("/updateInstitutions")
    public void updateInstitutions(@RequestBody Institutions institutions){
        institutionsService.updateInstitutions(institutions);
    }

    @ResponseBody
    @GetMapping("/removeInstitutions")
    public void removeInstitutions(@RequestParam(value = "id") Integer id){
        institutionsService.removeInstitutions(id);
    }

    @ResponseBody
    @GetMapping("/addInstitutions")
    public void addInstitutions(@RequestParam(value = "name") String name,
                                @RequestParam(value = "describe") String describe){

        institutionsService.addInstitutions(name, describe);
    }

    @ResponseBody
    @GetMapping("/getAllInstitutions")
    public List getInstitutions(){

        return institutionsService.getInstitutions();
    }

}

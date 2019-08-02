package com.zzti.practice.config;

import com.zzti.practice.entity.Log;
import com.zzti.practice.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class LogUtil {

    @Autowired
    HttpSession session;

    @Autowired
    LogService logService;

    public void insertLog(String operation){
        Log log = new Log();

        System.out.println(session.getAttribute("workNumber") + "++++++++++++++++++++++++");

//        log.setWorkNumber(session.getAttribute("workNumber").toString());
        log.setWorkNumber("11111");
        log.setOperation(operation);
        SimpleDateFormat sdf = new SimpleDateFormat("yy_MM_dd HH:mm:ss");
        String date = sdf.format(new Date());
        log.setCreatetime(date);
        logService.insert(log);
    }

}

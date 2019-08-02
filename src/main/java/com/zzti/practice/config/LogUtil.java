package com.zzti.practice.config;

import com.zzti.practice.entity.Log;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class LogUtil {

    public Log getLog(){
        Log log = new Log();
        SimpleDateFormat sdf = new SimpleDateFormat("yy_MM_dd HH:mm:ss");
        String date = sdf.format(new Date());
        log.setCreatetime(date);
        return log;
    }

}

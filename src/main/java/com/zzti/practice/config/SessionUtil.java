package com.zzti.practice.config;

import org.springframework.stereotype.Service;

@Service
public class SessionUtil {

    String workNumber;

    public SessionUtil() {
    }

    public SessionUtil(String workNumber) {
        this.workNumber = workNumber;
    }

    public String getWorkNumber() {
        return workNumber;
    }

    public void setWorkNumber(String workNumber) {
        this.workNumber = workNumber;
    }

    @Override
    public String toString() {
        return "SessionUtil{" +
                "workNumber='" + workNumber + '\'' +
                '}';
    }
}

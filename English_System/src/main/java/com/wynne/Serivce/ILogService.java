package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Log;
import com.wynne.Entity.LogCustom;

public interface ILogService {
    public Boolean insertLog(LogCustom logCustomer)throws Throwable;
    
    public List<Log> findAll();
}

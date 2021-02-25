package com.tianglhtg.bxy.service;

import com.tianglhtg.bxy.entity.DepartMent;
import com.tianglhtg.bxy.entity.InsertAdvise;

import java.util.List;

public interface QigScanService {
    public List<DepartMent> selectFuSelectFu();

    public List<DepartMent> selectFuSelectSon(String fuNumber);

    public int insertData(InsertAdvise insertAdvise);

}

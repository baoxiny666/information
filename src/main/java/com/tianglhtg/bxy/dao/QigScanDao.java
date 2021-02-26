package com.tianglhtg.bxy.dao;

import com.tianglhtg.bxy.entity.DepartMent;
import com.tianglhtg.bxy.entity.InsertAdvise;
import com.tianglhtg.bxy.entity.Rules;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QigScanDao {
    
    public List<DepartMent> selectFuSelect();
   
    public List<DepartMent> selectSonSelect(String fuNumber);

    
    
    public List<Rules> selectBigRules();
   
    public List<Rules> selectSmallRules(String bigNumber);
    
    public int  insertData(InsertAdvise insertAdvise);

}

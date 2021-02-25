package com.tianglhtg.bxy.dao;

import com.tianglhtg.bxy.entity.DepartMent;
import com.tianglhtg.bxy.entity.InsertAdvise;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QigScanDao {
    
    public List<DepartMent> selectFuSelect();
   
    public List<DepartMent> selectSonSelect(String fuNumber);

   
    public int  insertData(InsertAdvise insertAdvise);

}

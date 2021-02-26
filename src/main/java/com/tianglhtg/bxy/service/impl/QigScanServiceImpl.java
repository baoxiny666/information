package com.tianglhtg.bxy.service.impl;

import com.tianglhtg.bxy.entity.DepartMent;
import com.tianglhtg.bxy.entity.InsertAdvise;
import com.tianglhtg.bxy.entity.Rules;
import com.tianglhtg.bxy.dao.QigScanDao;
import com.tianglhtg.bxy.service.QigScanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QigScanServiceImpl implements QigScanService {

    @Autowired
    private QigScanDao qigScanDao;

    @Override
    public List<DepartMent> selectFuSelectFu() {
        List<DepartMent> departMents = qigScanDao.selectFuSelect();
        return departMents;
    }

    @Override
    public List<DepartMent> selectFuSelectSon(String fuNumber) {
        List<DepartMent> departMents = qigScanDao.selectSonSelect(fuNumber);
        return departMents;
    }

    @Override
    public int insertData(InsertAdvise insertAdvise) {
        int flag = qigScanDao.insertData(insertAdvise);
        return flag;
    }

	@Override
	public List<Rules> selectBigRules() {
		 List<Rules> rulesBig = qigScanDao.selectBigRules();
	        return rulesBig;
	}

	@Override
	public List<Rules> selectSmallRules(String fuNumber) {
		List<Rules> rulesSmall = qigScanDao.selectSmallRules(fuNumber);
        return rulesSmall;
	}
}

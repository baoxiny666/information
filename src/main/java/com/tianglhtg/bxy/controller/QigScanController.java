package com.tianglhtg.bxy.controller;

import com.alibaba.fastjson.JSONObject;

import com.tianglhtg.bxy.entity.DepartMent;
import com.tianglhtg.bxy.entity.InsertAdvise;
import com.tianglhtg.bxy.entity.Rules;
import com.tianglhtg.bxy.service.QigScanService;
import net.sf.json.JSONArray;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/qig")
public class QigScanController {
    @Autowired
    private QigScanService qigScanService;

    @RequestMapping(value="/rulesbig",produces ="application/json;charset=utf-8")
    @ResponseBody
    public String rulesbig(){
        List<Rules> list =  qigScanService.selectBigRules();
        String goBackFu = JSONArray.fromObject(list).toString();
        return goBackFu;
    }

    @RequestMapping(value="/rulessmall",produces ="application/json;charset=utf-8")
    @ResponseBody
    public String rulessmall(String bigNumber){
        List<Rules> list =  qigScanService.selectSmallRules(bigNumber);
        String goBackSon = JSONArray.fromObject(list).toString();
        return goBackSon;
    }
    
    @RequestMapping(value="/departmentfu",produces ="application/json;charset=utf-8")
    @ResponseBody
    public String fu(){
        List<DepartMent> list =  qigScanService.selectFuSelectFu();
        String goBackFu = JSONArray.fromObject(list).toString();
        return goBackFu;
    }

    @RequestMapping(value="/departmentson",produces ="application/json;charset=utf-8")
    @ResponseBody
    public String son(String fuNumber){
        List<DepartMent> list =  qigScanService.selectFuSelectSon(fuNumber);
        String goBackSon = JSONArray.fromObject(list).toString();
        return goBackSon;
    }

    @RequestMapping(value="/insertData",produces ="application/json;charset=utf-8")
    @ResponseBody
    public String insertData(String base64Data){
        try{
            String insertBase64Data = new String(Base64.decodeBase64(base64Data),"utf-8");
            //创建SimpleDateFormat对象，指定样式    2019-05-13 22:39:30
            SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            Date currentDate=new Date();


            InsertAdvise insertAdvise = new InsertAdvise();
            //转换成 JSONObject 对象
            JSONObject decodeJsonObject = JSONObject.parseObject(insertBase64Data);
      
            insertAdvise.setRules_small(Integer.valueOf(decodeJsonObject.get("rules_small").toString()));
            insertAdvise.setRules_small_name(decodeJsonObject.get("rules_small_name")==null?"":decodeJsonObject.get("rules_small_name").toString().replaceAll("'", "\\\\\'"));
            insertAdvise.setRules_big(Integer.valueOf(decodeJsonObject.get("rules_big").toString()));
            insertAdvise.setRules_big_name(decodeJsonObject.get("rules_big_name")==null?"":decodeJsonObject.get("rules_big_name").toString().replaceAll("'", "\\\\\'"));
            
            insertAdvise.setFlow_name(decodeJsonObject.get("flow_name")==null?"":decodeJsonObject.get("flow_name").toString().replaceAll("'", "\\\\\'"));
            insertAdvise.setDepart_ment(Integer.valueOf(decodeJsonObject.get("depart_ment").toString()));
            insertAdvise.setDepart_ment_son(Integer.valueOf(decodeJsonObject.get("depart_ment_son").toString()));
            insertAdvise.setAdvise_yij(decodeJsonObject.get("advise_yij")==null?"":decodeJsonObject.get("advise_yij").toString().replaceAll("'", "\\\\\'"));
            insertAdvise.setSubmit_person(decodeJsonObject.get("submit_person")==null?"":decodeJsonObject.get("submit_person").toString().replaceAll("'", "\\\\\'"));
            insertAdvise.setTele_phone(decodeJsonObject.get("tele_phone")==null?"":decodeJsonObject.get("tele_phone").toString().replaceAll("'", "\\\\\'"));
            insertAdvise.setCreate_time(sdf1.format(currentDate));
            insertAdvise.setDepart_ment_fu_name(decodeJsonObject.get("depart_ment_fu_name").toString());
            insertAdvise.setDepart_ment_son_name(decodeJsonObject.get("depart_ment_son_name").toString());
            int flag =  qigScanService.insertData(insertAdvise);
            // List<DepartMent> list =  qigScanService.insertData();
            //String finalStr = needInsertStr.replaceAll("'", "\\\\\'"); //作用等于在单引号前面加上转义符号\//对于其他特殊字符也是一样
            JSONObject jsonObject = new JSONObject();

            if(flag > 0){
                jsonObject.put("code",200);
                jsonObject.put("msg","插入成功");

            }
            return jsonObject.toJSONString();
        }catch (Exception e){
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("code",407);
            jsonObject.put("msg","提交失败");
            return jsonObject.toJSONString();
        }
    }
}

package com.tianren.service;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ResultTreeType;
import com.tianren.bean.Result;

/**
 * User: Lee
 * Date: 2018/4/4 0004
 * Time: 上午 10:14
 * Desc: 神兽保佑代码无bug
 */
public interface CommonService {
    //得到实时数据
    Result getSensorDataByNum(int startNum, int endNum);
    //得到走势数据--一周
    Result getSensorDataByTime(String startTime, String endTime);
    //查询名字
    Result getSensor();
    //查询传感器信息返回为Map
    Result getSensorResMap();
    //得到配置文件
    Result getDataConfig(String getConfigName);
    //得到传感器信息返回List
    Result getSensorResList();
}

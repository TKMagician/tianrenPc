package com.tianren.service;

import com.tianren.bean.Result;
import com.tianren.bean.SensorData;

import java.util.Date;

/**
 * User: Lee
 * Date: 2018/4/4 0004
 * Time: 上午 10:14
 * Desc: 神兽保佑代码无bug
 */
public interface GasTankService {
    //得到气柜的实时数据
    Result getGasTankData(int startNum, int endNum);
    //得到气柜的走势数据--一周
    Result getGasTankByTime(String startTime, String endTime);
}

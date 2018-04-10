package com.tianren.service;

import com.tianren.bean.AnaerobicTank;
import com.tianren.bean.Capacity;
import com.tianren.bean.Consumption;
import com.tianren.bean.Result;

/**
 * User: Lee
 * Date: 2018/4/4 0004
 * Time: 上午 10:14
 * Desc: 神兽保佑代码无bug
 */
public interface EntryService {
    //录入气罐信息
    Boolean entryAnaerobicTankData(AnaerobicTank anaerobicTankData);

    //录入产能信息
    Boolean entryCapacityData(Capacity capacityData);

    //录入能耗信息
    Boolean entryConsumptionData(Consumption consumptionData);
}
